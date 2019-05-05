onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib div_mean_intens_opt

do {wave.do}

view wave
view structure
view signals

do {div_mean_intens.udo}

run -all

quit -force
