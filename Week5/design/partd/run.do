vlog tb.v immediateDataExtractor.v

vsim -novopt work.tb

view wave

add wave sim:/tb/instruction
add wave sim:/tb/imm_data

run 250ns