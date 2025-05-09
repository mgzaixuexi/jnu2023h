onbreak {quit -f}
onerror {quit -f}

vsim -lib xil_defaultlib ram_256x16_opt

do {wave.do}

view wave
view structure
view signals

do {ram_256x16.udo}

run -all

quit -force
