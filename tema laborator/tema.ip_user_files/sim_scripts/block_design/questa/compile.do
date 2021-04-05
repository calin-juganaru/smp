vlib questa_lib/work
vlib questa_lib/msim

vlib questa_lib/msim/xil_defaultlib

vmap xil_defaultlib questa_lib/msim/xil_defaultlib

vlog -work xil_defaultlib  \
"../../../bd/block_design/ip/block_design_MUX_0_1/sim/block_design_MUX_0_1.v" \


vlog -work xil_defaultlib \
"glbl.v"

