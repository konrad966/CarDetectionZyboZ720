onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib sub_zmax_zmin_opt

do {wave.do}

view wave
view structure
view signals

do {sub_zmax_zmin.udo}

run -all

quit -force
