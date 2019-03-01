vlog tb.v Instruction_Memory.v

vsim -novopt work.tb

view wave

add wave sim:/tb/Inst_Address
add wave sim:/tb/Instruction

run 300ns