# SNN-NEST_Simulator_2.14.0-xilinx-ZCU102
High efficiency computer system lab, Jiangnan University
## Introduction
A Spiking neural network simulator NEST base on FPGA(LIF NEURON)
* Spiking neuron network simulator NEST
* SNN image classification
* Neuron computing accelerator base on FPGA

This system consists of PyNN brain-like framework, NEST simulator, PYNQ framework, FPGA neurons hardware modules. As shown in picture, the top-level application design language is Python. With the assistance of the PYNN architecture, the NEST simulator is called. Various commands are interpreted by the python interpreter and the SLI interpreter, and then enter the NEST kernel. The underlying network creation according to various commands includes neuron creation, synapse connection creation, simulation time setting, etc.

On this basis, we designed FPGA neuron acceleration module and FPGA acceleration module, and provided acceleration modules for different computation-intensive points according to the network topology and computing requirements.

![](picture\PYNQ+PyNN+NEST.jpg)

The platform of the project is constructed by xilinx-zcu102 board, and the main chip of the board is xzcu9eg. It is mainly composed of programmable logic FPGA (PL) and arm processor (PS). Among them, the FPGA clock frequency at PL end is 100MHz, the arm cortex-a53 quad core processor at PS end is 1GHz, and the memory size is 4GB DDR4.



## Quick Start
* If you would like to use the Jupyter notebook on PYNQ to perform the simulation on NEST, please click here
* Petalinux
* Install NEST-2.14.0-FPGA
In this project, we use PYNQ-Z2 v2.5 PYNQ image. (If you use the old version of the image file, it should also work.)
Installing PyNN requires:
```
 sudo apt-get install -y \  
 cython \  
 libgsl-dev \  
 libltdl-dev \  
 libncurses-dev \  
 libreadline-dev \  
 python-all-dev \  
 python-numpy \  
 python-scipy \  
 python-matplotlib \  
 python-nose \  
 openmpi-bin \  
 libopenmpi-dev
```
Configure NEST:
```
cd NEST-14.0-FPGA  
cmake -Dwith-python=3 -DCMAKE_INSTALL_PREFIX:PATH=./ </path/to/NEST/src> 
```
Compile and install NEST:
```
make  
make install  
make installcheck  
source </path/to/nest_install_dir>/bin/nest_vars.sh  
```
References: https://nest-simulator.readthedocs.io/en/stable/installation/linux_install.html
* Install PYNN
Installing PyNN requires:
```
Python (version 2.7, 3.3-3.7)  
a recent version of the NumPy package  
the lazyarray package  
the Neo package (>= 0.5.0)  
at least one of the supported simulators: e.g. NEURON, NEST, or Brian.  
```
Optional dependencies are:
```
mpi4py (if you wish to run distributed simulations using MPI)  
either Jinja2 or Cheetah (templating engines)  
the CSA library 
```
Install PyNN:
```
pip install pyNN
```
References:http://neuralensemble.org/docs/PyNN/installation.html

