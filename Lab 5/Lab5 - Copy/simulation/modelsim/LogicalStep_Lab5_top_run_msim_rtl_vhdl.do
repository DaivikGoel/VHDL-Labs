transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {P:/Lab5/LogicalStep_Lab5_top.vhd}
vcom -93 -work work {P:/Lab5/cycle_generator.vhd}

