For SW/HW Emulation set:
$export XCL_EMULATION_MODE=true

Go to an example:
$cd xilinx/getting_started/basic/hello/

Build/Run example:
$make clean
$emconfigutil -f $SDK_DIR/SDAccel/platforms/xilinx_minotaur-vu9p-f1_4ddr-xpr_3_3/hw/xilinx_minotaur-vu9p-f1_4ddr-xpr_3_3.dsa --nd 1
$make TARGETS=sw_emu DEVICES="xilinx:minotaur-vu9p-f1:4ddr-xpr:3.3" all
$./hello xclbin/krnl_hello.sw_emu.xilinx_minotaur-vu9p-f1_4ddr-xpr_3_3.xclbin 
