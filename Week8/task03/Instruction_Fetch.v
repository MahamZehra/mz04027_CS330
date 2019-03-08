module Instruction_Fetch
(
  input clk, reset,
  output  [31:0] instruction
);
	
	wire [63:0] tempOut;
	wire [63:0] PC_Out;
	
	Adder ADD
	(
		.a(PC_Out),
		.b(64'b100),
		.out(tempOut)
	);
  
	Program_Counter PC
	(
		.clk(clk),
		.reset(reset),
		.PC_In(tempOut),
		.PC_Out(PC_Out)
	);
	
	Instruction_Memory IM
	(
		.Inst_Address(PC_Out),
		.Instruction(instruction)
	);
  
endmodule