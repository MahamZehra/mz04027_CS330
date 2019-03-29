module top_control
(
	input [6:0] Opcode,
	input [3:0] Funct,
	output [3:0] Operation,
	output Branch,
	output MemRead,
	output MemtoReg,
	output MemWrite,
	output ALUSrc,
	output RegWrite
);

	wire [1:0] ALUOp;

	Control_Unit CU
	(
		.Opcode(Opcode),
		.Branch(Branch),
		.MemRead(MemRead),
		.MemtoReg(MemtoReg),
		.MemWrite(MemWrite),
		.ALUSrc(ALUSrc),
		.RegWrite(RegWrite),
		.ALUOp(ALUOp)
	);
	
	ALU_Control ALU
	(
		.ALUOp(ALUOp),
		.Funct(Funct),
		.Operation(Operation)
	);

endmodule