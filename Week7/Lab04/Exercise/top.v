module top
(
  input [31:0] instruction,
  output [63:0] ReadData1,
  output [63:0] ReadData2
);

  wire [4:0] RS1;
  wire [4:0] RS2;
  wire [4:0] RD;
  wire [6:0] opcode;
  wire [2:0] funct3;
  wire [6:0] funct7;

  instructionParser ip
  (
    .instruction(instruction),
    .tempRS1(rs1),
    .tempRS2(rs2),
    .tempRD(rd),
    
  );
  

endmodule