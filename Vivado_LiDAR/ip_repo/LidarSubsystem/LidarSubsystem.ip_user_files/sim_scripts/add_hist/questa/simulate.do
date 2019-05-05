onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib add_hist_opt

do {wave.do}

view wave
view structure
view signals

do {add_hist.udo}

run -all

quit -force
