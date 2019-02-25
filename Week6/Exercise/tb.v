module tb();
  
  reg [63:0] a;
  reg [63:0] b;
  reg CarryIn;
  reg [3:0] ALUOp;
  wire [63:0] Result;
  wire CarryOut;
  
  ALU_64_bit alu
  (
    .a(a),
    .b(b),
    .CarryIn(CarryIn),
    .ALUOp(ALUOp),
    .Result(Result),
    .CarryOut(CarryOut)
  );
  
  initial
  begin
  a = 64'b1111111111111111111111111111111111111111111111111111111111111111;
  b = 64'b0000000000000000000000000000000000000000000000000000000000000000;
  CarryIn = 1'b1;
  ALUOp = 4'b0000;
  
  #5 ALUOp = 4'b0001;
  #5 ALUOp = 4'b0010;
  #5 ALUOp = 4'b0110;
  #5 ALUOp = 4'b1100;
  end
  
endmodule
