# Vivado block design

This reop is about creating vivado project to get block_design.tcl and block_design.bit. Follow below step:

1.create a new project and select ZCU102 as your board

2.import ip xilinx_hls_update  and add ip

3.connect ip follow the picture block_design.png

4.Run Simulation

5.Run Synthesis

6.Run Implementation

7.generate bitstream

8.export block_design and Bitstream File

9.get the block_design design_1.tcl and bitstream design_1_wrapper.bit for ZCU102

10.change two files to the same name, like design_1.tcl and design_1.bit for ZCU102