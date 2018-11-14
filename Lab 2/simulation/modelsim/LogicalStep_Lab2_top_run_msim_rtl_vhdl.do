transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {P:/ECE124/Lab 2/LogicalStep_Lab2_top.vhd}
vcom -93 -work work {P:/ECE124/Lab 2/SevenSegment.vhd}

