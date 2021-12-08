/*
 *  simulation_manager.h
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

#ifndef SIMULATION_MANAGER_H
#define SIMULATION_MANAGER_H

// C++ includes:
#include <vector>

// Includes from libnestutil:
#include "manager_interface.h"

// Includes from nestkernel:
#include "nest_time.h"
#include "nest_types.h"

// Includes from sli:
#include "dictdatum.h"

#include <stdio.h>
#include <stdlib.h>
#include <sys/mman.h>
#include <fcntl.h>
#include <sys/ioctl.h>
#include <unistd.h>
#include <linux/fb.h>
#include <string.h>
#include <time.h>
#include <stdint.h>
#include <sys/time.h>
#include <omp.h>


#define IAF_PSC_EXP_ID 72
#define NUM_NEURON     900000
#define NUM_THREAD     2


#define STABLE_PARA0     0x70000000
#define STABLE_PARA1     0x70800000

#define INPUT_STREAM00   0x71000000
#define INPUT_STREAM10   0x71800000

#define INPUT_STREAM01   0x72000000
#define INPUT_STREAM11   0x72800000

#define OUTPUT00_        0x73000000
#define OUTPUT01_        0x73800000
#define OUTPUT10_        0x73400000
#define OUTPUT11_        0x73c00000

#define QUERTER_INPUT   0x800000
#define QUERTER_OUTPUT  0x400000


#define XIAF_PSC_EXP_PS_TOP_AXILITES_ADDR_BASEADDR0      0x00A0000000
#define XIAF_PSC_EXP_PS_TOP_AXILITES_ADDR_BASEADDR1      0x00A0010000
#define XUPDATE_N_CTRL_BUS_ADDR_AP_CTRL                 0x00
#define XUPDATE_N_CTRL_BUS_ADDR_GIE                     0x04
#define XUPDATE_N_CTRL_BUS_ADDR_IER                     0x08
#define XUPDATE_N_CTRL_BUS_ADDR_ISR                     0x0c
#define XUPDATE_N_CTRL_BUS_ADDR_NUM_DATA                0x10
#define XUPDATE_N_CTRL_BUS_BITS_NUM_DATA                32
#define XUPDATE_N_CTRL_BUS_ADDR_STABLE_PARA_OFFSET_DATA 0x18
#define XUPDATE_N_CTRL_BUS_BITS_STABLE_PARA_OFFSET_DATA 32
#define XUPDATE_N_CTRL_BUS_ADDR_INPUT00_V_DATA          0x20
#define XUPDATE_N_CTRL_BUS_BITS_INPUT00_V_DATA          32
#define XUPDATE_N_CTRL_BUS_ADDR_INPUT01_V_DATA          0x28
#define XUPDATE_N_CTRL_BUS_BITS_INPUT01_V_DATA          32
#define XUPDATE_N_CTRL_BUS_ADDR_OUTPUT0_OFFSET_DATA     0x30
#define XUPDATE_N_CTRL_BUS_BITS_OUTPUT0_OFFSET_DATA     32
#define XUPDATE_N_CTRL_BUS_ADDR_OUTPUT1_OFFSET_DATA     0x38
#define XUPDATE_N_CTRL_BUS_BITS_OUTPUT1_OFFSET_DATA     32

#define WriteReg(BaseAddress, RegOffset, Data) *(volatile unsigned int*)((BaseAddress) + (RegOffset)) = (Data)
#define ReadReg(BaseAddress, RegOffset) *(volatile unsigned int*)((BaseAddress) + (RegOffset))

namespace nest
{
class Node;

class SimulationManager : public ManagerInterface
{
public:
  SimulationManager();

  virtual void initialize();
  virtual void finalize();

  virtual void set_status( const DictionaryDatum& );
  virtual void get_status( DictionaryDatum& );

  /**
      check for errors in time before run
      @throws KernelException if illegal time passed
  */
  void assert_valid_simtime( Time const& );

  /*
     Simulate can be broken up into .. prepare... run.. run.. cleanup..
     instead of calling simulate multiple times, and thus reduplicating
     effort in prepare, cleanup many times.
  */

  /**
     Initialize simulation for a set of run calls.
     Must be called before a sequence of runs, and again after cleanup.
  */
  void prepare();
  /**
     Run a simulation for another `Time`. Can be repeated ad infinitum with
     calls to get_status(), but any changes to the network are undefined,
     leading serious risk of incorrect results.
  */
  void run( Time const& );
  /**
     Closes a set of runs, doing finalizations such as file closures.
     After cleanup() is called, no more run()s can be called before another
     prepare() call.
  */
  void cleanup();

  /**
   * Simulate for the given time .
   * calls prepare(); run(Time&); cleanup();
   */
  void simulate( Time const& );

  /**
   * Returns true if waveform relaxation is used.
   */
  bool use_wfr() const;

  /**
   * Get the desired communication interval for the waveform relaxation
   */
  double get_wfr_comm_interval() const;

  /**
   * Get the convergence tolerance of the waveform relaxation method
   */
  double get_wfr_tol() const;

  /**
   * Get the interpolation order of the waveform relaxation method
   */
  size_t get_wfr_interpolation_order() const;

  /**
   * Get the time at the beginning of the current time slice.
   */
  Time const& get_slice_origin() const;

  /**
   * Get the time at the beginning of the previous time slice.
   */
  Time const get_previous_slice_origin() const;

  /**
   * Precise time of simulation.
   * @note The precise time of the simulation is defined only
   *       while the simulation is not in progress.
   */
  Time const get_time() const;

  /**
   * Return true, if the SimulationManager has already been simulated for some
   * time. This does NOT indicate that simulate has been called (i.e. if
   * Simulate is called with 0 as argument, the flag is still set to false.)
   */
  bool has_been_simulated() const;

  /**
   * Reset the SimulationManager to the state at T = 0.
   */
  void reset_network();

  /**
   * Get slice number. Increased by one for each slice. Can be used
   * to choose alternating buffers.
   */
  size_t get_slice() const;

  //! Return current simulation time.
  // TODO: Precisely how defined? Rename!
  Time const& get_clock() const;

  //! Return start of current time slice, in steps.
  // TODO: rename / precisely how defined?
  delay get_from_step() const;

  //! Return end of current time slice, in steps.
  // TODO: rename / precisely how defined?
  delay get_to_step() const;
  

  int hw_mmap_init()
  {
    int fd=0;
    fd = open("/dev/mem", O_RDWR);
    if(fd == -1)
    {
      printf("Open memory failed\r\n");
      return -1;
    }
    else return fd;
  }

  void *hw_mmap(uint32_t phy_addr, uint32_t map_len)
  {
    void *virtual_addr_in;
    virtual_addr_in = mmap(NULL, map_len, PROT_READ | PROT_WRITE, MAP_SHARED, hw_mmap_init(), (off_t)phy_addr);
    if(virtual_addr_in == MAP_FAILED)
    {
      perror("Virtual_addr_in mappong for absolute memory access failed!\n");
    }
    return virtual_addr_in;
  }

/*
 *  hw_unmap
 *  input: start address, map_length
 */
  void hw_unmap(void * start, uint32_t length)
  {
    if(length < 0x1000) length = 0x1000;
    munmap(start, length);
  }

  void init_sharemem_para();
  void unmap_sharemem_para();

  //int num_o[NUM_THREAD][NUM_NEURON];
  int num_g[NUM_THREAD][NUM_NEURON];
  //int num_m[NUM_THREAD];
  int num_n[NUM_THREAD];
  int ONETIME_num, flag, tt;
  
  //float input00[4 * NUM_NEURON];
  //float input01[4 * NUM_NEURON];
  //int output_[NUM_NEURON];
  //float stable_para[9];
  float *input00;
  float *input10;
  float *input01;
  float *input11;
  float *stable_para0;
  float *stable_para1;
  int *output00_;
  int *output01_;
  //int *output02_;
  //int *output03_;
  int *output10_;
  int *output11_;
  //int *output12_;
  //int *output13_;
  
  int get_ONETIME_num();
  int get_num_n(int num);
  int get_flag();
  
  void set_stable(int thrd, float P20_, float P22_, float P21ex_, float P21in_,
  float P11ex_, float P11in_, float Theta_, int RefractoryCounts_,
  float V_reset_);
  
  void set_stable_1(int thrd, float Theta_, int RefractoryCounts_, float 
  V_reset_);
  
  void set_in(int thrd, int num, float i_syn_ex_, float i_syn_in_, int r_ref_,
  float V_m_);
  
  void set_tt(int thrd, int num, float I_e_);
  
  void set_variable(int thrd, int num, float weighted_spikes_ex_,
  float weighted_spikes_in_);
  
  // update_n(int num, float input00[4*NUM_NEURON], float
  //input01[4*NUM_NEURON], float stable_para[9], int output_[NUM_NEURON]);
  void update_n(unsigned long int addr_base, unsigned int num,
  unsigned int stable_para, unsigned int addr_input0, unsigned int addr_input1,
  unsigned int output0_, unsigned int output1_);
  //, unsigned int output2_, unsigned int output3_);

private:
  void call_update_(); //!< actually run simulation, aka wrap update_
  void update_();      //! actually perform simulation
  bool wfr_update_( Node* );
  void advance_time_();   //!< Update time to next time step
  void print_progress_(); //!< TODO: Remove, replace by logging!

  Time clock_;            //!< SimulationManager clock, updated once per slice
  delay slice_;           //!< current update slice
  delay to_do_;           //!< number of pending cycles.
  delay to_do_total_;     //!< number of requested cycles in current simulation.
  delay from_step_;       //!< update clock_+from_step<=T<clock_+to_step_
  delay to_step_;         //!< update clock_+from_step<=T<clock_+to_step_
  timeval t_slice_begin_; //!< Wall-clock time at the begin of a time slice
  timeval t_slice_end_;   //!< Wall-clock time at the end of time slice
  long t_real_;     //!< Accumunated wall-clock time spent simulating (in us)
  bool simulating_; //!< true if simulation in progress
  bool simulated_; //!< indicates whether the SimulationManager has already been
                   //!< simulated for sometime
  bool exit_on_user_signal_; //!< true if update loop was left due to signal
  // received
  bool inconsistent_state_; //!< true after exception during update_
                            //!< simulation must not be resumed
  bool print_time_;         //!< Indicates whether time should be printed during
                            //!< simulations (or not)
  bool use_wfr_;            //!< Indicates wheter waveform relaxation is used
  double wfr_comm_interval_; //!< Desired waveform relaxation communication
                             //!< interval (in ms)
  double wfr_tol_; //!< Convergence tolerance of waveform relaxation method
  long wfr_max_iterations_; //!< maximal number of iterations used for waveform
                            //!< relaxation
  size_t wfr_interpolation_order_; //!< interpolation order for waveform
                                   //!< relaxation method
};

inline Time const&
SimulationManager::get_slice_origin() const
{
  return clock_;
}

inline Time const
SimulationManager::get_time() const
{
  assert( not simulating_ );
  return clock_ + Time::step( from_step_ );
}

inline bool
SimulationManager::has_been_simulated() const
{
  return simulated_;
}

inline size_t
SimulationManager::get_slice() const
{
  return slice_;
}

inline Time const&
SimulationManager::get_clock() const
{
  return clock_;
}

inline delay
SimulationManager::get_from_step() const
{
  return from_step_;
}

inline delay
SimulationManager::get_to_step() const
{
  return to_step_;
}

inline bool
SimulationManager::use_wfr() const
{
  return use_wfr_;
}

inline double
SimulationManager::get_wfr_comm_interval() const
{
  return wfr_comm_interval_;
}

inline double
SimulationManager::get_wfr_tol() const
{
  return wfr_tol_;
}

inline size_t
SimulationManager::get_wfr_interpolation_order() const
{
  return wfr_interpolation_order_;
}






inline int
SimulationManager::get_ONETIME_num()
{
  return ONETIME_num;
}

inline int
SimulationManager::get_num_n(int num)
{
  return num_n[num];
}

inline int
SimulationManager::get_flag()
{
  return flag;
}

inline void 
SimulationManager::init_sharemem_para()
{
  stable_para0 = (float*)hw_mmap(STABLE_PARA0, QUERTER_INPUT);
  stable_para1 = (float*)hw_mmap(STABLE_PARA1, QUERTER_INPUT);
  input00 = (float*)hw_mmap(INPUT_STREAM00, QUERTER_INPUT);
  input01 = (float*)hw_mmap(INPUT_STREAM01, QUERTER_INPUT);
  input10 = (float*)hw_mmap(INPUT_STREAM10, QUERTER_INPUT);
  input11 = (float*)hw_mmap(INPUT_STREAM11, QUERTER_INPUT);
  output00_ = (int*)hw_mmap(OUTPUT00_, QUERTER_OUTPUT);
  output01_ = (int*)hw_mmap(OUTPUT01_, QUERTER_OUTPUT);
  //output02_ = (int*)hw_mmap(OUTPUT02_, QUERTER_OUTPUT);
  //output03_ = (int*)hw_mmap(OUTPUT03_, QUERTER_OUTPUT);
  output10_ = (int*)hw_mmap(OUTPUT10_, QUERTER_OUTPUT);
  output11_ = (int*)hw_mmap(OUTPUT11_, QUERTER_OUTPUT);
  //output12_ = (int*)hw_mmap(OUTPUT12_, QUERTER_OUTPUT);
  //output13_ = (int*)hw_mmap(OUTPUT13_, QUERTER_OUTPUT);
}

inline void 
SimulationManager::unmap_sharemem_para()
{
  hw_unmap(stable_para0, QUERTER_INPUT);
  hw_unmap(stable_para1, QUERTER_INPUT);
  hw_unmap(input00, QUERTER_INPUT);
  hw_unmap(input01, QUERTER_INPUT);
  hw_unmap(input10, QUERTER_INPUT);
  hw_unmap(input11, QUERTER_INPUT);
  hw_unmap(output00_, QUERTER_OUTPUT);
  hw_unmap(output01_, QUERTER_OUTPUT);
  //hw_unmap(output02_, QUERTER_OUTPUT);
  //hw_unmap(output03_, QUERTER_OUTPUT);
  hw_unmap(output10_, QUERTER_OUTPUT);
  hw_unmap(output11_, QUERTER_OUTPUT);
  //hw_unmap(output12_, QUERTER_OUTPUT);
  //hw_unmap(output13_, QUERTER_OUTPUT);
}
}
#endif /* SIMULATION_MANAGER_H */
