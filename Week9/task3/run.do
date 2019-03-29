vlog tb.v top_control.v Control_Unit.v ALU_Control.v

vsim -novopt work.tb

view wave

add wave \
{sim:/tb/Opcode } \
{sim:/tb/Funct } \
{sim:/tb/Operation } \
{sim:/tb/Branch } \
{sim:/tb/MemRead } \
{sim:/tb/MemtoReg } \
{sim:/tb/MemWrite } \
{sim:/tb/ALUSrc } \
{sim:/tb/RegWrite } 


run 300ns