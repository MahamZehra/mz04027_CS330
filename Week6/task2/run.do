vlog tb.v top.v ALU_1_bit.v

vsim -novopt work.tb

view wave

add wave sim:/tb/a
add wave sim:/tb/b
add wave sim:/tb/CarryIn
add wave sim:/tb/ALUOp
add wave sim:/tb/Result
add wave sim:/tb/CarryOut

run 250ns