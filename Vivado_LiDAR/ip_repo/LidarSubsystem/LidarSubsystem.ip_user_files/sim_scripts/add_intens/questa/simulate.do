onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib add_intens_opt

do {wave.do}

view wave
view structure
view signals

do {add_intens.udo}

run -all

quit -force
