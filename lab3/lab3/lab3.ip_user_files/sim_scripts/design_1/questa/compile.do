vlib questa_lib/work
vlib questa_lib/msim

vlib questa_lib/msim/xil_defaultlib

vmap xil_defaultlib questa_lib/msim/xil_defaultlib

vlog -work xil_defaultlib -64 \
"../../../bd/design_1/ip/design_1_x2mx9_sdramfsm_0_0/sim/design_1_x2mx9_sdramfsm_0_0.v" \
"../../../bd/design_1/ip/design_1_powerpcfsm_0_2/sim/design_1_powerpcfsm_0_2.v" \
"../../../bd/design_1/ip/design_1_splitter_0_0/sim/design_1_splitter_0_0.v" \
"../../../bd/design_1/ip/design_1_CS_split_0_0/sim/design_1_CS_split_0_0.v" \
"../../../bd/design_1/ip/design_1_mpc106fsm_0_1/sim/design_1_mpc106fsm_0_1.v" \
"../../../bd/design_1/sim/design_1.v" \


vlog -work xil_defaultlib \
"glbl.v"

