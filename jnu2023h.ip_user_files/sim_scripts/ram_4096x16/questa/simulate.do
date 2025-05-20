onbreak {quit -f}
onerror {quit -f}

vsim -lib xil_defaultlib ram_4096x16_opt

do {wave.do}

view wave
view structure
view signals

do {ram_4096x16.udo}

run -all

quit -force
