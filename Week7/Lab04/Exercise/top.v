module top
(
  input [31:0] instruction,
  output [63:0] ReadData1,
  output [63:0] ReadData2
);

  wire [4:0] tempRS1;
  wire [4:0] tempRS2;
  wire [4:0] tempRD;
  wire [6:0] tempopcode;
  wire [2:0] tempfunct3;
  wire [6:0] tempfunct7;
  wire [63:0] tempWriteData;
  wire tempclk;
  wire tempreset;
  wire tempRegWrite;

  instructionParser ip
  (
    .instruction(instruction),
    .rs1(tempRSI),
    .rs2(tempRS2),
    .rd(tempRD),
    .opcode(tempopcode),
    .funct3(tempfunct3),
    .funct7(tempfunct7)
  );
  
  registerFile rf
  (
	.RS1(tempRS1),
	.RS2(tempRS2),
	.RD(tempRD),
	.WriteData(tempWriteData),
	.ReadData1(ReadData1),
	.ReadData2(ReadData2),
	.clk(tempclk),
	.reset(tempreset),
	.RegWrite(tempRegWrite)
  );
  
  initial
  tempclk = 1'b1;
  
  always
  #5 tempclk = ~tempclk;
  
  initial
  tempreset = 1'b1;
  
  always
  #25 tempreset = ~tempreset;
  
  initial
  begin
  tempRegWrite = 1'b1;
  #5 tempRegWrite = 1'b0;
  #20 tempRegWrite = 1'b1;
  #25 tempRegWrite = 1'b0;
  end
  
endmodule