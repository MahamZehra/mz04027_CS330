module tb();
  
  reg [31:0] instruction;
  wire [6:0] opcode;
  wire [4:0] rd;
  wire [2:0] funct3;
  wire [4:0] rs1;
  wire [4:0] rs2;
  wire [6:0] funct7;
  
  instructionParser ip0
  (
    .instruction(instruction),
    .opcode(opcode),
    .rd(rd),
    .funct3(funct3),
    .rs1(rs1),
    .rs2(rs2),
    .funct7(funct7)
  );
  
initial
instruction = 32'b00000001010110100000010010110011;

always 
#10 instruction = ~instruction;
  
endmodule
