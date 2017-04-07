
# AWS EC2 SDAccel Quickstart


SW/HW Emulation is now supported.  The quickstart examples require Xilinx 2016.4 SDx tool set, which are included in the [developer AMI](https://aws.amazon.com/marketplace/pp/B06VVYBLZZ)

The SDAccel build flow targeting the F1 FPGA fabric is coming soon.

## AWS EC2 SDAccel Example SW Emulation

The instructions below describe how to get started on SDAccel development using the SW Emulation.  The main goal of SW emulation is to ensure functional correctness and to partition the application into kernels.  For CPU-based (SW) emulation, both the host code and the kernel code are compiled to run on an x86 processor. The programmer model of iterative algorithm refinement through fast compile and run loops is preserved with speeds that are the same as a CPU compile and run cycle. 


    $ export XCL_EMULATION_MODE=true                                               # Enable emulation mode
    $ cd xilinx/getting_started/basic/hello/                                       # Start using an SDAccel example
    $ make clean                                                                   # clean up before you start
    $ emconfigutil -f $SDK_DIR/SDAccel/platforms/xilinx_minotaur-vu9p-f1_4ddr-xpr_3_3/hw/xilinx_minotaur-vu9p-f1_4ddr-xpr_3_3.dsa --nd 1                                                                 # Create emulation config file
    $ make TARGETS=sw_emu DEVICES="xilinx:minotaur-vu9p-f1:4ddr-xpr:3.3" all       # Compile using xocc.  "hw_emu" is another option
    $ ./hello xclbin/krnl_hello.sw_emu.xilinx_minotaur-vu9p-f1_4ddr-xpr_3_3.xclbin # Run using sw emulation

## AWS EC2 SDAccel Example HW Emulation

The instructions below describe how to get started on SDAccel development using the HW Emulation.  The hardware emulation flow, which enables the programmer to check the correctness of the logic generated for the custom compute units. This emulation flow invokes the hardware simulator in the SDAccel environment to test the functionality of the logic that will be executed on the FPGA compute fabric.


    $ export XCL_EMULATION_MODE=true                                               # Enable emulation mode
    $ cd xilinx/getting_started/basic/hello/                                       # Start using an SDAccel example
    $ make clean                                                                   # clean up before you start
    $ emconfigutil -f $SDK_DIR/SDAccel/platforms/xilinx_minotaur-vu9p-f1_4ddr-xpr_3_3/hw/xilinx_minotaur-vu9p-f1_4ddr-xpr_3_3.dsa --nd 1                                                                 # Create emulation config file
    $ make TARGETS=hw_emu DEVICES="xilinx:minotaur-vu9p-f1:4ddr-xpr:3.3" all       # Compile using xocc.  "hw_emu" is another option
    $ ./hello xclbin/krnl_hello.sw_emu.xilinx_minotaur-vu9p-f1_4ddr-xpr_3_3.xclbin # Run using hw emulation
