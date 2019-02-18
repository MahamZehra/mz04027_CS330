vlog tb.v instructionParser.v

vsim -novopt work.tb

view wave

add wave \
{sim:/tb/instruction } \
{sim:/tb/opcode } \
{sim:/tb/rd } \
{sim:/tb/funct3 } \
{sim:/tb/rs1 } \
{sim:/tb/rs2 } \
{sim:/tb/funct7 } 

run 250ns