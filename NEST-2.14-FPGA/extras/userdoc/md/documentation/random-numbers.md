# Random numbers

## Introduction

Random numbers are used for a variety of purposes in neuronal network
simulations, e.g.

-   to create randomized connections

-   to choose parameter values randomly

-   to inject noise into network simulations, e.g., in the form of Poissonian
    spike trains.

This document discusses how NEST provides random numbers for these purposes, how
you can choose which random number generator (RNG) to choose, and how to set the
seed of RNGs in NEST. We use the term "random number" here for ease of writing,
even though we are always talking about pseudorandom numbers generated by some
algorithm.

NEST is designed to support parallel simulation and this puts some constraints
on the use and generation of random numbers. We discuss these in the next
section, before going into the details of how to control RNGs in NEST.

On this page, we mainly discuss the use of random numbers in parallel NEST
simulations, but the comments pertain equally to serial simulations (N\_vp=1).

### Random Numbers vs Random Deviates

NEST distinguishes between random number generators, provided by `rngdict` and
random deviate generators provided by `rdevdict`. Random *number* generators
only provide double-valued numbers uniformly distributed on \[0, 1\] and
uniformly distributed integers in {0, 1, ..., N}. Random *deviate* generators,
on the other hand, provide random numbers drawn from a range of distributions,
such as the normal or binomial distributions. In most cases, you will be using
random deviate generators. They are in particular used to initialize properties
during network construction, as described in the sections [Changes in NEST 2.4](random-numbers.md#changes-in-random-number-generation-in-nest-2.4) and [Examples](random-numbers.md#examples) below.

## Changes in random number generation in NEST 2.4

Random deviate generation has become significantly more powerful in NEST 2.4, to
fully support randomization of connections parameters offered by the revised
`Connect` function, as described in [Connection Management](connection-management.md)
and illustrated by the [examples](random-numbers.md#examples) below.
We have also made minor changes to make to achieve greater similarity between
NEST, PyNN, and NumPy. For most users, these changes only add new features.
Only existing scripts using

-   `uniformint`
-   `normal_clipped`, `normal_clipped_left`, `normal_clipped_right`

generators from NEST 2.2 need to be adapted as detailed below.

The changes are as follows:

-   Uniform integer generator

    -   renamed from `uniformint` to `uniform_int`
    -   parameters renamed to `low` and `high`
    -   returns uniformly distributed integers from `{low, low+1, ???, high}`

-   Uniform continuous generator

    -   new generator `uniform`
    -   parameters `low` and `high`
    -   generates numbers uniformly distributed in `[low, high)`

-   Full parameter sets for generators

    -   In the past, many random deviate generators returned values for fixed
        parameters, e.g., the `normal` generator could only return zero-mean,
        unit-variance normal random numbers.

    -   Now, all parameters for each generator can be set, in particular:

        -   normal: mu, sigma
        -   lognormal: mu, sigma
        -   exponential: lambda
        -   gamma: order, scale

    -   Parameter values are checked more systematically for unsuitable values.

-   Clipped normal generators

    -   parameter names changed to `mu` and `sigma`

    -   clipping limits now called `low` and `high`

    -   `_left` and `_right` variants removed: for one-sided clipping, just set
        the boundary you want to clip at, the other is positive or negative
        infinity

-   Clipped variants for most generators

    -   For most random deviate generators, `_clipped` variants exist now.

    -   For all clipped variants, one can set a lower limit (`low`, default:
        -infinity) and an upper limit (`high`: +infinty).

    -   Clipped variants will then return numbers strictly in `(low, high)` for
        continuous distributions (e.g. normal, exponential) or
        `{low, low+1, ???, high}` for discrete distributions (e.g. poisson,
        binomial). This is achieved by redrawing numbers until an acceptable
        number is drawn.

    -   Note that the resulting distribution differs from the original one and
        that drawing may become very slow if `(low, high)` contains only very
        small probability mass. Clipped generator variants should therefore
        mostly be used to clip tails with very small probability mass when
        randomizing time constants or delays.

-   Clipped-to-boundary variants for most generators

    -   To facilitate reproduction of certain publications, NEST also provides
            `_clipped_to_boundary` variants of most generators.

    -   Clipped-to-boundary variants return the value `low` if a number smaller
       than `low` is drawn, and `high` if a number larger than `high` is drawn.

    -   We believe that these variants should *not* be used for new studies.

## Basics of parallel simulation in NEST

For details of parallelization in NEST, please see [Parallel Computing](parallel-computing.md)
and [Plesser et al (2007)](http://dx.doi.org/10.1007/978-3-540-74466-5_71).
Here, we just summarize a few basics.

-   NEST can parallelize simulations through *multi-threading*, *distribution*
    or a combination of the two.

-   A distributed simulation is spread across several processes under the
    control of MPI (Message Passing Interface). Each network node is *local* to
    exactly one process and complete information about the node is only
    available to that process. Information about each connection is stored by
    the process in which the connection target is local and is only available
    and changeable on that process.

-   Multi-threaded simulations run in a single process in a single computer. As
    a consequence, all nodes in a multi-threaded simulation are local.

-   Distribution and multi-threading can be combined by running identical
    numbers of threads in each process.

-   A serial simulation has a single process with a single seed.

-   From the NEST user perspective, distributed processes and threads are
    visible as **virtual processes**. A simulation distributed across \\(M\\)
    MPI processes with \\(T\\)  threads each, has \\(N\_{vp} = M times T\\)
    virtual processes. It is a basic design principle of NEST that simulations
    shall generate *identical* results when run with a fixed \\(N\_{VP}\\), no
    matter how the virutal processes are broken down into MPI processes and
    threads.

-   Useful information can be obtained like this


    import nest
    nest.NumProcesses()                                # number of MPI processes
    nest.Rank()                                        # rank of MPI process executing command
    nest.GetKernelStatus(['num_processes'])            # same as nest.NumProcesses()
    nest.GetKernelStatus(['local_num_threads'])        # number of threads in present process (same for all processes)
    nest.GetKernelStatus(['total_num_virtual_procs'])  # N_vp = M x T

-   When querying neurons, only very limited information is available for
    neurons on other MPI processes. Thus, before checking for specific
    information, you need to check if a node is local:


    n = nest.Create('iaf_psc_alpha')
    if nest.GetStatus(n, 'local')[0]:       # GetStatus() returns list, pick element
        print nest.GetStatus(n, 'vp')       # virtual process "owning" node
        print nest.GetStatus(n, 'thread')   # thread in calling process "owning" node

## Random numbers in parallel simulations

Ideally, all random numbers in a simulation should come from a single RNG. This
would require shipping truckloads of random numbers from a central RNG process
to all simulations processes and is thus impractical, if not outright
prohibitively costly. Therefore, parallel simulation requires an RNG on each
parallel process. Advances in RNG technology give us today a range of RNGs that
can be used in parallel, with a quite high level of certainty that the resulting
parallel streams of random numbers are non-overlapping and uncorrelated. While
the former can be guaranteed, we are not aware of any generator for which the
latter can be proven.

### How many generators in a simulation

In a typical PyNEST simulation running on \\(N\_{vp}\\) virtual processes, we
will encounter \\(2 N\_{vp} + 1\\) random number generators:

The global NEST RNG  
This generator is mainly used when creating connections using
`RandomDivergentConnect`.

One RNG per VP in NEST  
These generators are used when creating connections using
`RandomConvergentConnect` and to provide random numbers to nodes generating
random output, e.g. the `poisson_generator`.

One RNG per VP in Python  
These generators are used to randomized node properties (e.g., the initial
membrane potential) and connection properties (e.g., weights).

The generators on the Python level are not strictly necessary, as one could in
principle access the per-VP RNGs built into NEST. This would require very
tedious SLI-coding, though. We therefore recommend at present that you use
additional RNGs on the Python side.

#### Why a Global RNG in NEST

In some situations, randomized decisions on different virtual processes are not
independent of each other. The most important case are randomized divergent
connections. The problem here is as follows. For the sake of efficiency, NEST
stores all connection information in the virtual process (VP) to which the
target of a connection resides (target process). Thus, all connections are
generated by this target process. Now consider the task of generating 100
randomized divergent connections emanating from a given source neuron while
using 4 VPs. Then there should be 25 targets on each VP *on average*, but actual
numbers will fluctuate. If independent processes on all VPs tried to choose
target neurons, we could never be sure that exactly 100 targets would be chosen
in total.

NEST thus creates divergent connections using a global RNG. This random number
generator provides the exact same sequence of random numbers on each virtual
process. Using this global RNG, each VP chooses 100 targets from the entire
network, but actually creates connections only for those targets that reside on
the VP. In practice, the global RNG is implemented using one "clone" on each VP;
NEST checks occasionally that all these clones are synchronized, i.e., indeed
generate identical sequences.

### Seeding the Random Generators

Each of the \\(N\_{vp}\\) random generators needs to be seeded with a different
seed to generate a different random number sequences. We recommend that you
choose a *master seed* `msd` and seed the \\(2N\_{vp}+1\\) generators with seeds
`msd`, `msd+1`, ..., `msd+2*N_vp`. Master seeds for for independent experiments
must differ by at least \\(2N\_{vp}+1\\)
. Otherwise, the same sequence(s) would enter in several experiments.

#### Seeding the Python RNGs

You can create a properly seeded list of \\(N\_{vp}\\) RNGs on the Python side
using

    import numpy
    msd = 123456
    N_vp = nest.GetKernelStatus(['total_num_virtual_procs'])[0]
    pyrngs = [numpy.random.RandomState(s) for s in range(msd, msd+N_vp)]

`msd` is the master seed, choose your own!

#### Seeding the global RNG

The global NEST rng is seeded with a single, positive integer number:

    nest.SetKernelStatus({???grng_seed?????: msd+N_vp})

#### Seeding the per-process RNGs

The per-process RNGs are seeded by a list of \\(N\_{vp}\\)
positive integers:

    nest.SetKernelStatus({???rng_seeds?????: range(msd+N_vp+1, msd+2*N_vp+1)})

### Choosing the random generator type

Python and NumPy have the [MersenneTwister MT19937ar](http://www.math.sci.hiroshima-u.ac.jp/~m-mat/MT/emt.html)
random number generator built in. There is no simple way of choosing a different
generator in NumPy, but as the MT19937ar appears to be a very robust generator,
this should not cause significant problems.

NEST uses by default Knuth's lagged Fibonacci random number generator (The Art
of Computer Programming, vol 2, 3rd ed, 9th printing or later, ch 3.6). If you
want to use other generators, you can exchange them as described below. If you
have built NEST without the GNU Science Library (GSL), you will only have the
Mersenne Twister MT19937ar and Knuth's lagged Fibonacci generator available.
Otherwise, you will also have some 60 generators from the GSL at your disposal
(not all of them particularly good). You can see the full list of RNGs using

    nest.sli_run('rngdict info')

#### Setting a different global RNG

To set a different global RNG in NEST, you have to pass a NEST random number
generator object to the NEST kernel. This can currently only be done by writing
some SLI code. The following code replaces the current global RNG with MT19937
seeded with 101:

    nest.sli_run('0 << /grng rngdict/MT19937??:: 101 CreateRNG >> SetStatus')

The following happens here:

-   `rngdict/MT19937??::` fetches a "factory" for MT19937 from the `rngdict`

-   `101 CreateRNG` uses the factory to create a single MT19937 generator with
    seed 101

-   This is generator is then passed to the `/grng` status variable of the
    kernel. This is a "write only" variable that is invisible in
    `GetKernelStatus()`.

#### Setting different per-processes RNGs

One always needs to exchange all \\(N\_{vp}\\) per-process RNGs at once. This is
done by (assuming \\(N\_{vp}=2\\) ):

    nest.sli_run('0 << /rngs [102 103] { rngdict/MT19937??:: exch CreateRNG } Map >> SetStatus')

The following happens here:

-   `[102 103] { rngdict/MT19937??:: exch CreateRNG } Map` creates an array of
    two RNG objects seeded with 102 and 103, respectively.

-   This array is then passed to the `/rngs` status variable of the kernel.
    This variable is invisible as well.

## Examples

**NOTE: These examples are not yet updated for NEST 2.4**

### No random variables in script

If no explicit random variables appear in your script, i.e., if randomness only
enters in your simulation through random stimulus generators such as
`poisson_generator` or randomized connection routines such as
`RandomConvergentConnect`, you do not need to worry about anything except
choosing and setting your random seeds, possibly exchanging the random number
generators.

### Randomizing the membrane potential

If you want to randomize the membrane potential (or any other property of a
neuron), you need to take care that each node is updated by the process on which
it is local using the per-VP RNG for the VP to which the node belongs.
This is achieved by the following code

    pyrngs = [numpy.random.RandomState(s) for s in range(msd, msd+N_vp)]
    nodes   = nest.Create('iaf_psc_delta', 10)
    node_info   = nest.GetStatus(nodes)
    local_nodes = [(ni['global_id'], ni['vp']) for ni in node_info if ni['local']]
    for gid,vp in local_nodes:
       nest.SetStatus([gid], {'V_m': pyrngs[vp].uniform(-70.0, -50.0)})

The first line generates \\([N\_{vp}\\) properly seeded NumPy RNGs as discussed
above. The next line creates 10 nodes, while the third line extracts status
information about each node. For local nodes, this will be full information,
for non-local nodes we only get the following fields:
`local`, `model` and `type`. On the fourth line, we create a list of tuples,
containing global ID and virtual process number for all local neurons. The for
loop then sets the membrane potential of each local neuron drawn from a uniform
distribution on \\(\[-70, -50\]\\) using the Python-side RNG for the VP to which
the neuron belongs.

### Randomizing convergent connections

We continue the above example by creating random convergent connections,
\\(C\_E\\) connections per target node. In the process, we randomize the
connection weights:

    C_E = 10
    nest.CopyModel("static_synapse", "excitatory")
    for tgt_gid, tgt_vp in local_nodes:
        weights = pyrngs[tgt_vp].uniform(0.5, 1.5, C_E)
        nest.RandomConvergentConnect(nodes, [tgt_gid], C_E,
                                     weight=list(weights), delay=2.0,
                                     model="excitatory")

Here we loop over all local nodes considered as target nodes. For each target,
we create an array of \\(C\_E\\) randomly chosen weights, uniform on
\\([0.5, 1.5\\. We then call `RandomConvergentConnect()` with this weight list
as argument. Note a few details:

-   We need to put `tgt_gid` into brackets as PyNEST functions always expect
    lists of GIDs.

-   We need to convert the NumPy array `weights` to a plain Python list, as most
    PyNEST functions currently cannot handle array input.

-   If we specify `weight`, we must also provide `delay`.

You can check the weights selected by

    print nest.GetStatus(nest.GetConnections(), ['source', 'target', 'weight'])

which will print a list containing a triple of source GID, target GID and weight
for each connection in the network. If you want to see only a subset of
connections, pass source, target, or synapse model to `GetConnections()`.

### Randomizing divergent connections

Randomizing the weights (or delays or any other properties) of divergent
connections is more complicated than for convergent connections, because the
target for each connection is not known upon the call to
`RandomDivergentConnect`. We therefore need to first create all connections
(which we can do with a single call, passing lists of nodes and targets), and
then need to manipulate all connections. This is not only more complicated,
but also significantly slower than the example above.

    nest.CopyModel('static_synapse', 'inhibitory', {'weight': 0.0, 'delay': 3.0})
    nest.RandomDivergentConnect(nodes, nodes, C_E, model='inhibitory')
    gid_vp_map = dict(local_nodes)
    for src in nodes:
        conns = nest.GetConnections(source=[src], synapse_model='inhibitory')
        tgts = [conn[1] for conn in conns]
        rweights = [{'weight': pyrngs[gid_vp_map[tgt]].uniform(-2.5, -0.5)}
                   for tgt in tgts]
        nest.SetStatus(conns, rweights)

In this code, we first create all connections with weight 0. We then create
`gid_vp_map`, mapping GIDs to VP number for all local nodes. For each node
considered as source, we then find all outgoing excitatory connections from that
node and then obtain a flat list of the targets of these connections. For each
target we then choose a random weight as above, using the RNG pertaining to the
VP of the target. Finally, we set these weights. Note that the code above is
**slow**. Future versions of NEST will provide better solutions.

### Testing scripts randomizing node or connection parameters

To ensure that you are consistently using the correct RNG for each node or
connection, you should run your simulation several times the same \\(N\_{vp}\\),
but using different numbers of MPI processes. To this end, add towards the
beginning of your script

    nest.SetKernelStatus({"total_num_virtual_procs": 4})

and ensure that spikes are logged to file in the current working directory.
Then run the simulation with different numbers of MPI processes in separate
directories

     mkdir 41 42 44
     cd 41
     mpirun -np 1 python test.py
     cd ../42
     mpirun -np 2 python test.py
     cd ../44
     mpirun -np 4 python test.py
     cd ..

These directories should now have identical content, something you can check
with `diff`:

    diff 41 42
    diff 41 44

These commands should not generate any output. Obviously, this test checks only
a necessary, by no means a sufficient condition for a correct simulation (Oh
yes, do make sure that these directories contain data! Nothing easier that to
pass a diff-test on empty dirs.)
