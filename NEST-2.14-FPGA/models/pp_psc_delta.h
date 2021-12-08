/*
 *  pp_psc_delta.h
 *
 *  This file is part of NEST.
 *
 *  Copyright (C) 2004 The NEST Initiative
 *
 *  NEST is free software: you can redistribute it and/or modify
 *  it under the terms of the GNU General Public License as published by
 *  the Free Software Foundation, either version 2 of the License, or
 *  (at your option) any later version.
 *
 *  NEST is distributed in the hope that it will be useful,
 *  but WITHOUT ANY WARRANTY; without even the implied warranty of
 *  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 *  GNU General Public License for more details.
 *
 *  You should have received a copy of the GNU General Public License
 *  along with NEST.  If not, see <http://www.gnu.org/licenses/>.
 *
 */

#ifndef PP_PSC_DELTA_H
#define PP_PSC_DELTA_H

// Includes from librandom:
#include "gamma_randomdev.h"
#include "poisson_randomdev.h"

// Includes from nestkernel:
#include "archiving_node.h"
#include "connection.h"
#include "event.h"
#include "nest_types.h"
#include "ring_buffer.h"
#include "universal_data_logger.h"

namespace nest
{

/* BeginDocumentation
   Name: pp_psc_delta - Point process neuron with leaky integration of
                        delta-shaped PSCs.

   Description:

   pp_psc_delta is an implementation of a leaky integrator, where the potential
   jumps on each spike arrival. It produces spike stochastically, and supports
   spike-frequency adaptation, and other optional features.

   Spikes are generated randomly according to the current value of the
   transfer function which operates on the membrane potential. Spike
   generation is followed by an optional dead time. Setting with_reset to
   true will reset the membrane potential after each spike.

   The transfer function can be chosen to be linear, exponential or a sum of
   both by adjusting three parameters:

       rate = Rect[ c_1 * V' + c_2 * exp(c_3 * V') ],

   where the effective potential V' = V_m - E_sfa and E_sfa is called
   the adaptive threshold. Here Rect means rectifier:
   Rect(x) = {x if x>=0, 0 else} (this is necessary because negative rates are
   not possible).

   By setting c_3 = 0, c_2 can be used as an offset spike rate for an otherwise
   linear rate model.

   The dead time enables to include refractoriness. If dead time is 0, the
   number of spikes in one time step might exceed one and is drawn from the
   Poisson distribution accordingly. Otherwise, the probability for a spike
   is given by 1 - exp(-rate*h), where h is the simulation time step. If
   dead_time is smaller than the simulation resolution (time step), it is
   internally set to the resolution.

   Note that, even if non-refractory neurons are to be modeled, a small value
   of dead_time, like dead_time=1e-8, might be the value of choice since it
   uses faster uniform random numbers than dead_time=0, which draws Poisson
   numbers. Only for very large spike rates (> 1 spike/time_step) this will
   cause errors.

   The model can optionally include an adaptive firing threshold.
   If the neuron spikes, the threshold increases and the membrane potential
   will take longer to reach it.
   Here this is implemented by subtracting the value of the adaptive threshold
   E_sfa from the membrane potential V_m before passing the potential to the
   transfer function, see also above. E_sfa jumps by q_sfa when the neuron
   fires a spike, and decays exponentially with the time constant tau_sfa
   after (see [2] or [3]). Thus, the E_sfa corresponds to the convolution of the
   neuron's spike train with an exponential kernel.
   This adaptation kernel may also be chosen as the sum of n exponential
   kernels. To use this feature, q_sfa and tau_sfa have to be given as a list
   of n values each.

   The firing of pp_psc_delta is usually not a renewal process. For example,
   its firing may depend on its past spikes if it has non-zero adaptation terms
   (q_sfa). But if so, it will depend on all its previous spikes, not just the
   last one -- so it is not a renewal process model. However, if "with_reset"
   is True, and all adaptation terms (q_sfa) are 0, then it will reset
   ("forget") its membrane potential each time a spike is emitted, which makes
   it a renewal process model (where "rate" above is its hazard function,
   also known as conditional intensity).

   pp_psc_delta may also be called a spike-response model with escape-noise [6]
   (for vanishing, non-random dead_time). If c_1>0 and c_2==0, the rate is a
   convolution of the inputs with exponential filters -- which is a model known
   as a Hawkes point process (see [4]). If instead c_1==0, then pp_psc_delta is
   a point process generalized linear model (with the canonical link function,
   and exponential input filters) (see [5,6]).

   This model has been adapted from iaf_psc_delta. The default parameters are
   set to the mean values given in [2], which have been matched to spike-train
   recordings. Due to the many features of pp_psc_delta and its versatility,
   parameters should be set carefully and conciously.


   References:

   [1] Multiplicatively interacting point processes and applications to neural
   modeling (2010) Stefano Cardanobile and Stefan Rotter, Journal of
   Computational Neuroscience

   [2] Predicting spike timing of neocortical pyramidal neurons by simple
   threshold models (2006) Jolivet R, Rauch A, Luescher H-R, Gerstner W.
   J Comput Neurosci 21:35-49

   [3] Pozzorini C, Naud R, Mensi S, Gerstner W (2013) Temporal whitening by
   power-law adaptation in neocortical neurons. Nat Neurosci 16: 942-948.
   (uses a similar model of multi-timescale adaptation)

   [4] Grytskyy D, Tetzlaff T, Diesmann M and Helias M (2013) A unified view
   on weakly correlated recurrent networks. Front. Comput. Neurosci. 7:131.

   [5] Deger M, Schwalger T, Naud R, Gerstner W (2014) Fluctuations and
   information filtering in coupled populations of spiking neurons with
   adaptation. Physical Review E 90:6, 062704.

   [6] Gerstner W, Kistler WM, Naud R, Paninski L (2014) Neuronal Dynamics:
   From single neurons to networks and models of cognition.
   Cambridge University Press


   Parameters:

   The following parameters can be set in the status dictionary.

   V_m               double - Membrane potential in mV.
   C_m               double - Capacitance of the membrane in pF.
   tau_m             double - Membrane time constant in ms.
   q_sfa             double - Adaptive threshold jump in mV.
   tau_sfa           double - Adaptive threshold time constant in ms.
   dead_time         double - Duration of the dead time in ms.
   dead_time_random  bool   - Should a random dead time be drawn after each
                              spike?
   dead_time_shape   int    - Shape parameter of dead time gamma distribution.
   t_ref_remaining   double - Remaining dead time at simulation start.
   with_reset        bool   - Should the membrane potential be reset after a
                              spike?
   I_e               double - Constant input current in pA.
   c_1               double - Slope of linear part of transfer function in
                              Hz/mV.
   c_2               double - Prefactor of exponential part of transfer function
                              in Hz.
   c_3               double - Coefficient of exponential non-linearity of
                              transfer function in 1/mV.


   Sends: SpikeEvent

   Receives: SpikeEvent, CurrentEvent, DataLoggingRequest

   Author:  July 2009, Deger, Helias; January 2011, Zaytsev; May 2014, Setareh
   SeeAlso: pp_pop_psc_delta, iaf_psc_delta, iaf_psc_alpha, iaf_psc_exp,
   iaf_psc_delta_canon
*/

/**
 * Point process neuron with leaky integration of delta-shaped PSCs.
 */
class pp_psc_delta : public Archiving_Node
{

public:
  pp_psc_delta();
  pp_psc_delta( const pp_psc_delta& );

  /**
   * Import sets of overloaded virtual functions.
   * @see Technical Issues / Virtual Functions: Overriding, Overloading, and
   * Hiding
   */
  using Node::handle;
  using Node::handles_test_event;

  port send_test_event( Node&, rport, synindex, bool );

  void handle( SpikeEvent& );
  void handle( CurrentEvent& );
  void handle( DataLoggingRequest& );

  port handles_test_event( SpikeEvent&, rport );
  port handles_test_event( CurrentEvent&, rport );
  port handles_test_event( DataLoggingRequest&, rport );


  void get_status( DictionaryDatum& ) const;
  void set_status( const DictionaryDatum& );

private:
  void init_state_( const Node& proto );
  void init_buffers_();
  void calibrate();

  void update( Time const&, const long, const long );

  // The next two classes need to be friends to access the State_ class/member
  friend class RecordablesMap< pp_psc_delta >;
  friend class UniversalDataLogger< pp_psc_delta >;

  // ----------------------------------------------------------------

  /**
   * Independent parameters of the model.
   */
  struct Parameters_
  {

    /** Membrane time constant in ms. */
    double tau_m_;

    /** Membrane capacitance in pF. */
    double c_m_;

    /** Dead time in ms. */
    double dead_time_;

    /** Do we use random dead time? */
    bool dead_time_random_;

    /** Shape parameter of random dead time gamma distribution. */
    unsigned long dead_time_shape_;

    /** Do we reset the membrane potential after each spike? */
    bool with_reset_;

    /** List of adaptive threshold time constant in ms (for multi adaptation
     * version). */
    std::vector< double > tau_sfa_;

    /** Adaptive threshold jump in mV (for multi adaptation version). */
    std::vector< double > q_sfa_;

    /** indicates multi parameter adaptation model **/
    bool multi_param_;

    /** Slope of the linear part of transfer function. */
    double c_1_;

    /** Prefactor of exponential part of transfer function. */
    double c_2_;

    /** Coefficient of exponential non-linearity of transfer function. */
    double c_3_;

    /** External DC current. */
    double I_e_;

    /** Dead time from simulation start. */
    double t_ref_remaining_;

    Parameters_(); //!< Sets default parameter values

    void get( DictionaryDatum& ) const; //!< Store current values in dictionary
    void set( const DictionaryDatum& ); //!< Set values from dictionary
  };

  // ----------------------------------------------------------------

  /**
   * State variables of the model.
   */
  struct State_
  {
    double y0_; //!< This is piecewise constant external current
    //! This is the membrane potential RELATIVE TO RESTING POTENTIAL.
    double y3_;
    double q_; //!< This is the change of the 'threshold' due to adaptation.

    //! Vector of adaptation parameters. by Hesam
    std::vector< double > q_elems_;

    int r_; //!< Number of refractory steps remaining

    bool initialized_; //!< it is true if the vectors are initialized

    State_(); //!< Default initialization

    void get( DictionaryDatum&, const Parameters_& ) const;
    void set( const DictionaryDatum&, const Parameters_& );
  };

  // ----------------------------------------------------------------

  /**
   * Buffers of the model.
   */
  struct Buffers_
  {
    Buffers_( pp_psc_delta& );
    Buffers_( const Buffers_&, pp_psc_delta& );

    /** buffers and sums up incoming spikes/currents */
    RingBuffer spikes_;
    RingBuffer currents_;

    //! Logger for all analog data
    UniversalDataLogger< pp_psc_delta > logger_;
  };

  // ----------------------------------------------------------------

  /**
   * Internal variables of the model.
   */
  struct Variables_
  {

    double P30_;
    double P33_;

    std::vector< double > Q33_;

    double h_;       //!< simulation time step in ms
    double dt_rate_; //!< rate parameter of dead time distribution

    librandom::RngPtr rng_; //!< random number generator of my own thread
    librandom::PoissonRandomDev poisson_dev_; //!< random deviate generator
    librandom::GammaRandomDev gamma_dev_;     //!< random deviate generator

    int DeadTimeCounts_;
  };

  // Access functions for UniversalDataLogger -----------------------

  //! Read out the real membrane potential
  double
  get_V_m_() const
  {
    return S_.y3_;
  }

  //! Read out the adaptive threshold potential
  double
  get_E_sfa_() const
  {
    return S_.q_;
  }

  // ----------------------------------------------------------------

  /**
   * @defgroup iaf_psc_alpha_data
   * Instances of private data structures for the different types
   * of data pertaining to the model.
   * @note The order of definitions is important for speed.
   * @{
   */
  Parameters_ P_;
  State_ S_;
  Variables_ V_;
  Buffers_ B_;
  /** @} */

  //! Mapping of recordables names to access functions
  static RecordablesMap< pp_psc_delta > recordablesMap_;
};

inline port
pp_psc_delta::send_test_event( Node& target,
  rport receptor_type,
  synindex,
  bool )
{
  SpikeEvent e;
  e.set_sender( *this );

  return target.handles_test_event( e, receptor_type );
}


inline port
pp_psc_delta::handles_test_event( SpikeEvent&, rport receptor_type )
{
  if ( receptor_type != 0 )
  {
    throw UnknownReceptorType( receptor_type, get_name() );
  }
  return 0;
}

inline port
pp_psc_delta::handles_test_event( CurrentEvent&, rport receptor_type )
{
  if ( receptor_type != 0 )
  {
    throw UnknownReceptorType( receptor_type, get_name() );
  }
  return 0;
}

inline port
pp_psc_delta::handles_test_event( DataLoggingRequest& dlr, rport receptor_type )
{
  if ( receptor_type != 0 )
  {
    throw UnknownReceptorType( receptor_type, get_name() );
  }
  return B_.logger_.connect_logging_device( dlr, recordablesMap_ );
}

inline void
pp_psc_delta::get_status( DictionaryDatum& d ) const
{
  P_.get( d );
  S_.get( d, P_ );
  Archiving_Node::get_status( d );
  ( *d )[ names::recordables ] = recordablesMap_.get_list();
}

inline void
pp_psc_delta::set_status( const DictionaryDatum& d )
{
  Parameters_ ptmp = P_; // temporary copy in case of errors
  ptmp.set( d );         // throws if BadProperty
  State_ stmp = S_;      // temporary copy in case of errors
  stmp.set( d, ptmp );   // throws if BadProperty

  // We now know that (ptmp, stmp) are consistent. We do not
  // write them back to (P_, S_) before we are also sure that
  // the properties to be set in the parent class are internally
  // consistent.
  Archiving_Node::set_status( d );

  // if we get here, temporaries contain consistent set of properties
  P_ = ptmp;
  S_ = stmp;
}

} // namespace

#endif /* #ifndef PP_PSC_DELTA_H */
