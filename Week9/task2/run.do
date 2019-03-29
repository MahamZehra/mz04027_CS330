vlog tb.v ALU_Control.v

vsim -novopt work.tb

view wave

add wave \
{sim:/tb/ALUOp } \
{sim:/tb/Funct } \
{sim:/tb/Operation } 

run 300ns