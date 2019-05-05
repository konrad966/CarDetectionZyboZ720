onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib add_acc_svm_opt

do {wave.do}

view wave
view structure
view signals

do {add_acc_svm.udo}

run -all

quit -force
