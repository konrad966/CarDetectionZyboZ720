onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib hwl_calc_opt

do {wave.do}

view wave
view structure
view signals

do {hwl_calc.udo}

run -all

quit -force
