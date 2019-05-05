onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib div_mean_z_opt

do {wave.do}

view wave
view structure
view signals

do {div_mean_z.udo}

run -all

quit -force
