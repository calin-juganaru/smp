onbreak {quit -force}
onerror {quit -force}

asim +access +r +m+block_design -L xil_defaultlib -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.block_design xil_defaultlib.glbl

do {wave.do}

view wave
view structure

do {block_design.udo}

run -all

endsim

quit -force
