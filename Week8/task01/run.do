vlog tb.v Program_Counter.v

vsim -novopt work.tb

view wave

add wave sim:/tb/clk
add wave sim:/tb/reset
add wave sim:/tb/PC_In
add wave sim:/tb/PC_Out

run 300ns