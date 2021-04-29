transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/User/Desktop/Projeto/SignExtend.vhd}
vcom -93 -work work {C:/Users/User/Desktop/Projeto/ALU.vhd}
vcom -93 -work work {C:/Users/User/Desktop/Projeto/Mux2_1.vhd}
vcom -93 -work work {C:/Users/User/Desktop/Projeto/RAM.vhd}
vcom -93 -work work {C:/Users/User/Desktop/Projeto/Registers.vhd}
vcom -93 -work work {C:/Users/User/Desktop/Projeto/Counter.vhd}
vcom -93 -work work {C:/Users/User/Desktop/Projeto/ROM.vhd}
vcom -93 -work work {C:/Users/User/Desktop/Projeto/DataPath.vhd}
vcom -93 -work work {C:/Users/User/Desktop/Projeto/RegisterN.vhd}
vcom -93 -work work {C:/Users/User/Desktop/Projeto/Dec3_8.vhd}
vcom -93 -work work {C:/Users/User/Desktop/Projeto/ControlUnit.vhd}
vcom -93 -work work {C:/Users/User/Desktop/Projeto/Processador.vhd}

