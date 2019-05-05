onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib add_num_pts_opt

do {wave.do}

view wave
view structure
view signals

do {add_num_pts.udo}

run -all

quit -force
