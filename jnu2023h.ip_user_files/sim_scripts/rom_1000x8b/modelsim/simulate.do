onbreak {quit -f}
onerror {quit -f}

vsim -voptargs="+acc" -L xpm -L blk_mem_gen_v8_4_4 -L xil_defaultlib -L unisims_ver -L unimacro_ver -L secureip -lib xil_defaultlib xil_defaultlib.rom_1000x8b xil_defaultlib.glbl

do {wave.do}

view wave
view structure
view signals

do {rom_1000x8b.udo}

run -all

quit -force
