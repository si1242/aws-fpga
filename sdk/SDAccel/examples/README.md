
# AWS EC2 SDAccel Example Quickstart


SW/HW Emulation is supported and F1 FPGA HW build support will be available soon.  

## AWS EC2 SDAccel Example SW Emulation

The instructions below describe how to get started on SDAccel development using the SW Emulation.  SW Emulation is used to confirm functionality of your host/kernel code.  


    $ export XCL_EMULATION_MODE=true                                               # Enable emulation mode
    $ cd xilinx/getting_started/basic/hello/                                       # Start using an SDAccel example
    $ make clean                                                                   # clean up before you start
    $ emconfigutil -f $SDK_DIR/SDAccel/platforms/xilinx_minotaur-vu9p-f1_4ddr-xpr_3_3/hw/xilinx_minotaur-vu9p-f1_4ddr-xpr_3_3.dsa --nd 1                                                                 # Create emulation config file
    $ make TARGETS=sw_emu DEVICES="xilinx:minotaur-vu9p-f1:4ddr-xpr:3.3" all       # Compile using xocc.  "hw_emu" is another option
    $ ./hello xclbin/krnl_hello.sw_emu.xilinx_minotaur-vu9p-f1_4ddr-xpr_3_3.xclbin # Run using sw emulation

## AWS EC2 SDAccel Example HW Emulation

The instructions below describe how to get started on SDAccel development using the HW Emulation.  HW emulation is used to create custom hardware and review the performance of the kernel.


    $ export XCL_EMULATION_MODE=true                                               # Enable emulation mode
    $ cd xilinx/getting_started/basic/hello/                                       # Start using an SDAccel example
    $ make clean                                                                   # clean up before you start
    $ emconfigutil -f $SDK_DIR/SDAccel/platforms/xilinx_minotaur-vu9p-f1_4ddr-xpr_3_3/hw/xilinx_minotaur-vu9p-f1_4ddr-xpr_3_3.dsa --nd 1                                                                 # Create emulation config file
    $ make TARGETS=hw_emu DEVICES="xilinx:minotaur-vu9p-f1:4ddr-xpr:3.3" all       # Compile using xocc.  "hw_emu" is another option
    $ ./hello xclbin/krnl_hello.sw_emu.xilinx_minotaur-vu9p-f1_4ddr-xpr_3_3.xclbin # Run using hw emulation
