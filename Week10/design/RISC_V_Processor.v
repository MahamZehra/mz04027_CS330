module RISC_V_Processor
(
	input clk, reset
);
	wire [63:0] tempOut;
	wire [63:0] PC_Out;
	wire [31:0] instruction;
	wire [6:0] opcode;
	wire [4:0] rd;
	wire [2:0] funct3;
	wire [4:0] rs1;
	wire
[4:0] rs2, reg [6:0] funct7
	
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