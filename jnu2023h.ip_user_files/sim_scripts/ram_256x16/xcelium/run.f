-makelib xcelium_lib/xpm -sv \
  "H:/fpga/Vivado/Vivado/2020.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
  "H:/fpga/Vivado/Vivado/2020.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \
-endlib
-makelib xcelium_lib/xpm \
  "H:/fpga/Vivado/Vivado/2020.2/data/ip/xpm/xpm_VCOMP.vhd" \
-endlib
-makelib xcelium_lib/blk_mem_gen_v8_4_4 \
  "../../../ipstatic/simulation/blk_mem_gen_v8_4.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../../jnu2023h.gen/sources_1/ip/ram_256x16/sim/ram_256x16.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  glbl.v
-endlib

