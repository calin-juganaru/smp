vlib modelsim_lib/work
vlib modelsim_lib/msim

vlib modelsim_lib/msim/xil_defaultlib

vmap xil_defaultlib modelsim_lib/msim/xil_defaultlib

vlog -work xil_defaultlib -64 -incr \
"../../../bd/design_1/ip/design_1_graphic_controller_0_1/sim/design_1_graphic_controller_0_1.v" \
"../../../bd/design_1/ip/design_1_core_logic_0_1/sim/design_1_core_logic_0_1.v" \
"../../../bd/design_1/sim/design_1.v" \


vlog -work xil_defaultlib \
"glbl.v"

