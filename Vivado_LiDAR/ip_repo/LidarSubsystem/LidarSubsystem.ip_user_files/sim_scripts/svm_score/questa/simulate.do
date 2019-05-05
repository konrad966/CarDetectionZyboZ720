onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib svm_score_opt

do {wave.do}

view wave
view structure
view signals

do {svm_score.udo}

run -all

quit -force
