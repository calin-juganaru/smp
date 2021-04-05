vlib modelsim_lib/work
vlib modelsim_lib/msim

vlib modelsim_lib/msim/xil_defaultlib

vmap xil_defaultlib modelsim_lib/msim/xil_defaultlib

vlog -work xil_defaultlib -64 -incr \
"../../../bd/design_1/ip/design_1_PIC16F873_0_0/sim/design_1_PIC16F873_0_0.v" \
"../../../bd/design_1/ip/design_1_T74LS373_0_0/sim/design_1_T74LS373_0_0.v" \
"../../../bd/design_1/ip/design_1_m62256_0_0/sim/design_1_m62256_0_0.v" \
"../../../bd/design_1/ip/design_1_m62256_1_0/sim/design_1_m62256_1_0.v" \
"../../../bd/design_1/ip/design_1_addr_cat_0_0/sim/design_1_addr_cat_0_0.v" \
"../../../bd/design_1/ip/design_1_splitter_0_0/sim/design_1_splitter_0_0.v" \
"../../../bd/design_1/sim/design_1.v" \


vlog -work xil_defaultlib \
"glbl.v"

