module top(
  input [5:0] a,
  input [5:0] b,
  input CarryIn,
  input [3:0] ALUOp,
  output [5:0] Result,
  output CarryOut
);
  
  wire c0;
  wire c1;
  wire c2;
  wire c3;
  wire c4;
  
  ALU_1_bit ALU00
  (
    .a(a[0]),
    .b(b[0]),
    .CarryIn(CarryIn),
    .ALUOp(ALUOp),
    .Result(Result[0]),
    .CarryOut(c0)
  );
  
  ALU_1_bit ALU01
  (
    .a(a[1]),
    .b(b[1]),
    .CarryIn(c0),
    .ALUOp(ALUOp),
    .Result(Result[1]),
    .CarryOut(c1)
  );
  
  ALU_1_bit ALU02
  (
    .a(a[2]),
    .b(b[2]),
    .CarryIn(c1),
    .ALUOp(ALUOp),
    .Result(Result[2]),
    .CarryOut(c2)
  );
  
  ALU_1_bit ALU03
  (
    .a(a[3]),
    .b(b[3]),
    .CarryIn(c2),
    .ALUOp(ALUOp),
    .Result(Result[3]),
    .CarryOut(c3)
  );
  
  ALU_1_bit ALU04
  (
    .a(a[4]),
    .b(b[4]),
    .CarryIn(c3),
    .ALUOp(ALUOp),
    .Result(Result[4]),
    .CarryOut(c4)
  );
  
  ALU_1_bit ALU05
  (
    .a(a[5]),
    .b(b[5]),
    .CarryIn(c4),
    .ALUOp(ALUOp),
    .Result(Result[5]),
    .CarryOut(CarryOut)
  );
  

  
endmodule