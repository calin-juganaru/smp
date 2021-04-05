vlib modelsim_lib/work
vlib modelsim_lib/msim

vlib modelsim_lib/msim/xil_defaultlib

vmap xil_defaultlib modelsim_lib/msim/xil_defaultlib

vlog -work xil_defaultlib  -incr \
"../../../bd/block_design/ip/block_design_MUX_0_1/sim/block_design_MUX_0_1.v" \


vlog -work xil_defaultlib \
"glbl.v"

