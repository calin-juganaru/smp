vlib work
vlib riviera

vlib riviera/xil_defaultlib

vmap xil_defaultlib riviera/xil_defaultlib

vlog -work xil_defaultlib  -v2k5 \
"../../../bd/block_design/ip/block_design_MUX_0_1/sim/block_design_MUX_0_1.v" \


vlog -work xil_defaultlib \
"glbl.v"

