onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib add_svm_bias_opt

do {wave.do}

view wave
view structure
view signals

do {add_svm_bias.udo}

run -all

quit -force
