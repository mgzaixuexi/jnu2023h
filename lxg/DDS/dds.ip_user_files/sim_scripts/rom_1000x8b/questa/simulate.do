onbreak {quit -f}
onerror {quit -f}

vsim -lib xil_defaultlib rom_1000x8b_opt

do {wave.do}

view wave
view structure
view signals

do {rom_1000x8b.udo}

run -all

quit -force
