vlog tb.v RISC_V_Processor.v Adder.v ALU_64_bit.v ALU_Control.v Control_Unit.v Data_Memory.v immediateDataExtractor.v Instruction_Memory.v instructionParser.v Multiplexer.v Program_Counter.v registerFile.v

vsim -novopt work.tb

do wave.do


run 300ns