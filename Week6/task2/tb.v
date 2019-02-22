module tb();
  
  reg [5:0] a;
  reg [5:0] b;
  reg CarryIn;
  reg [3:0] ALUOp;
  wire [5:0] Result;
  wire CarryOut;
  
  top t
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
  a = 6'b111111;
  b = 6'b000000;
  CarryIn = 1'b1;
  ALUOp = 4'b0000;
  
  #5 ALUOp = 4'b0001;
  #5 ALUOp = 4'b0010;
  #5 ALUOp = 4'b0110;
  #5 ALUOp = 4'b1100;
  end
  
endmodule