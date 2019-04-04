module RISC_V_Processor
(
	input clk, reset
);
	wire [63:0] tempOut;
	wire [63:0] tempOut2;
	wire [63:0] PC_Out;
	wire [31:0] instruction;
	wire [6:0] opcode;
	wire [4:0] rd;
	wire [2:0] funct3;
	wire [4:0] rs1;
	wire [4:0] rs2;
	wire [6:0] funct7;
	wire [63:0] ReadData1;
	wire [63:0] ReadData2;
	wire Branch;
	wire MemRead;
    wire MemtoReg;
   	wire MemWrite;
   	wire ALUSrc;
	wire RegWrite;
   	wire [1:0] ALUOp;
	wire [3:0] Operation;
	wire [63:0] imm_data;
	wire [63:0] data_out1;
	wire [63:0] Result;
	wire Zero;
	wire [63:0] Read_Data;
	wire [63:0] WriteData;
	wire [63:0] nextOut;
	
	Adder addInstruction
	(
		.a(PC_Out),
		.b(64'b100),
		.out(tempOut)
	);
  
	Program_Counter PC
	(
		.clk(clk),
		.reset(reset),
		.PC_In(nextOut),
		.PC_Out(PC_Out)
	);
	
	Instruction_Memory IM
	(
		.Inst_Address(PC_Out),
		.Instruction(instruction)
	);
	
	immediateDataExtractor IDE
	(
		.instruction(instruction),
		.imm_data(imm_data)
	);
	
	wire [63:0] Jump = imm_data << 1;
	
	Adder addJump
	(
		.a(PC_Out),
		.b(Jump),
		.out(tempOut2)
	);
	
	wire JumpSel = Branch && Zero;
	
	Multiplexer muxJump
	(
		.a(tempOut),
		.b(tempOut2),
		.sel(JumpSel),
		.data_out(nextOut)
	);
	
	instructionParser IP
	(
		.instruction(instruction),
		.opcode(opcode),
		.rd(rd),
		.funct3(funct3),
		.rs1(rs1),
		.rs2(rs2),
		.funct7(funct7)
	);
	
	Control_Unit CU
	(
		.Opcode(opcode),
		.Branch(Branch),
		.MemRead(MemRead),
		.MemtoReg(MemtoReg),
		.MemWrite(MemWrite),
		.ALUSrc(ALUSrc),
		.RegWrite(RegWrite),
		.ALUOp(ALUOp)
	);
	
	wire [3:0] Funct = instruction[30] + instruction[14] + instruction[13] + instruction[12];
	
	ALU_Control ALUCon
	(
		.ALUOp(ALUOp),
		.Funct(Funct),
		.Operation(Operation)
	);
	
	registerFile RF
	(
		.RS1(rs1),
		.RS2(rs2),
		.RD(rd),
		.WriteData(WriteData),
		.ReadData1(ReadData1),
		.ReadData2(ReadData2),
		.clk(clk),
		.reset(reset),
		.RegWrite(RegWrite)
	);
	
	Multiplexer muxData
	(
		.a(ReadData2),
		.b(imm_data),
		.sel(ALUSrc),
		.data_out(data_out1)
	);
	
	wire CarryIn = Operation[2];
	
	ALU_64_bit ALUCal
	(
		.a(ReadData1),
		.b(data_out1),
		.CarryIn(CarryIn),
		.ALUOp(Operation),
		.Result(Result),
		.Zero(Zero)
	);
	
	Data_Memory DM
	(
		.Mem_Addr(Result),
		.Write_Data(ReadData2),
		.clk(clk),
		.MemWrite(MemWrite),
		.MemRead(MemRead),
		.Read_Data(Read_Data)
	);
	
	Multiplexer muxStore
	(
		.a(Result),
		.b(Read_Data),
		.sel(MemtoReg),
		.data_out(WriteData)
	);
	
	
  
endmodule