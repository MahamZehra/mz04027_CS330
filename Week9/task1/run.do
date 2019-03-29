vlog tb.v Control_Unit.v

vsim -novopt work.tb

view wave

add wave \
{sim:/tb/Opcode } \
{sim:/tb/Branch } \
{sim:/tb/MemRead } \
{sim:/tb/MemtoReg } \
{sim:/tb/ALUOp } \
{sim:/tb/MemWrite } \
{sim:/tb/ALUSrc } \
{sim:/tb/RegWrite } 

run 300ns