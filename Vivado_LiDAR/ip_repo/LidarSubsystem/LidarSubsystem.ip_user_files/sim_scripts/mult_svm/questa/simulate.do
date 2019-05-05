onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib mult_svm_opt

do {wave.do}

view wave
view structure
view signals

do {mult_svm.udo}

run -all

quit -force
