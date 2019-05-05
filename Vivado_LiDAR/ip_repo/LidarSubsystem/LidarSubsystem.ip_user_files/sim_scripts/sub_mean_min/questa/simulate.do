onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib sub_mean_min_opt

do {wave.do}

view wave
view structure
view signals

do {sub_mean_min.udo}

run -all

quit -force
