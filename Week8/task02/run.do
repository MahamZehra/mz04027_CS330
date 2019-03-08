vlog tb.v Adder.v

vsim -novopt work.tb

view wave

add wave sim:/tb/a
add wave sim:/tb/b
add wave sim:/tb/out

run 300ns