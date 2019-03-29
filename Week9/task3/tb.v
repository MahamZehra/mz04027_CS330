module tb();

	reg [6:0] Opcode;
	reg [3:0] Funct;
	wire [3:0] Operation;
	wire Branch;
	wire MemRead;
	wire MemtoReg;
	wire MemWrite;
	wire ALUSrc;
	wire RegWrite;
	
	top_control TC
	(
		.Opcode(Opcode),
		.Funct(Funct),
		.Operation(Operation),
		.Branch(Branch),
		.MemRead(MemRead),
		.MemtoReg(MemtoReg),
		.MemWrite(MemWrite),
		.ALUSrc(ALUSrc),
		.RegWrite(RegWrite)
	);
	
	
	initial
	begin
		Opcode = 7'b0110011;
		#40 Opcode = 7'b0000011;
		#40 Opcode = 7'b0100011;
		#40 Opcode = 7'b1100011;
	end
	
	always
	begin
		Funct = 4'b0000;
		#10 Funct = 4'b1000;
		#10 Funct = 4'b0111;
		#10 Funct = 4'b0110;
		#10 Funct = 4'b1111;
	end
	
  
endmodule