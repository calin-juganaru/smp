vlib work
vlib riviera

vlib riviera/xil_defaultlib

vmap xil_defaultlib riviera/xil_defaultlib

vlog -work xil_defaultlib  -v2k5 \
"../../../bd/design_1/ip/design_1_graphic_controller_0_1/sim/design_1_graphic_controller_0_1.v" \
"../../../bd/design_1/ip/design_1_core_logic_0_1/sim/design_1_core_logic_0_1.v" \
"../../../bd/design_1/sim/design_1.v" \


vlog -work xil_defaultlib \
"glbl.v"

