module tb();
  
  reg a;
  reg b;
  reg CarryIn;
  reg [3:0] ALUOp;
  wire Result;
  wire CarryOut;
  
  ALU_1_bit alu01
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
  a = 1'b1;
  b = 1'b0;
  CarryIn = 1'b1;
  ALUOp = 4'b0000;
  
  #5 ALUOp = 4'b0001;
  #5 ALUOp = 4'b0010;
  #5 ALUOp = 4'b0110;
  #5 ALUOp = 4'b1100;
  end
  
endmodule
  