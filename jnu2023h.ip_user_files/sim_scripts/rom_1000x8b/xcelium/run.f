-makelib xcelium_lib/xpm -sv \
  "E:/Xilinx/Vivado/2020.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \
-endlib
-makelib xcelium_lib/xpm \
  "E:/Xilinx/Vivado/2020.2/data/ip/xpm/xpm_VCOMP.vhd" \
-endlib
-makelib xcelium_lib/blk_mem_gen_v8_4_4 \
  "../../../ipstatic/simulation/blk_mem_gen_v8_4.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../../jnu2023h.gen/sources_1/ip/rom_1000x8b/sim/rom_1000x8b.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  glbl.v
-endlib

