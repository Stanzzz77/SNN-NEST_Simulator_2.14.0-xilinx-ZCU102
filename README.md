# SNN-NEST_Simulator_2.14.0-xilinx-ZCU102
High efficiency computer system lab
## Introduction
A Spiking neural network simulator NEST base on FPGA(LIF NEURON)
* Spiking neuron network simulator NEST
* SNN image classification
* Neuron computing accelerator base on FPGA

This system consists of PyNN brain-like framework, NEST simulator, PYNQ framework, FPGA neurons hardware modules. As shown in picture, the top-level application design language is Python. With the assistance of the PYNN architecture, the NEST simulator is called. Various commands are interpreted by the python interpreter and the SLI interpreter, and then enter the NEST kernel. The underlying network creation according to various commands includes neuron creation, synapse connection creation, simulation time setting, etc.

On this basis, we designed FPGA neuron acceleration module and FPGA acceleration module, and provided acceleration modules for different computation-intensive points according to the network topology and computing requirements.

The platform of the project is constructed by xilinx-zcu102 board, and the main chip of the board is xzcu9eg. It is mainly composed of programmable logic FPGA (PL) and arm processor (PS). Among them, the FPGA clock frequency at PL end is 100MHz, the arm cortex-a53 quad core processor at PS end is 1GHz, and the memory size is 4GB DDR4.

