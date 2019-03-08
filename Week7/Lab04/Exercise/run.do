vlog tb.v top.v instructionParser.v registerFile.v

vsim -novopt work.tb

view wave

add wave sim:/tb/instruction
add wave sim:/tb/ReadData1
add wave sim:/tb/ReadData2

run 300ns