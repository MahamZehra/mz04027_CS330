vlog tb.v Instruction_Fetch.v Adder.v Program_Counter.v Instruction_Memory.v

vsim -novopt work.tb

view wave

add wave sim:/tb/clk
add wave sim:/tb/reset
add wave sim:/tb/instruction

run 300ns