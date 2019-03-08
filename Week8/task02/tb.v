module tb();
  
  reg [63:0] a;
  reg [63:0] b;
  wire [63:0] out;
  
  Adder Add
  (
    .a(a),
    .b(b),
    .out(out)
  );
  
  initial
  begin
  a = 64'b101010101010101010;
  b = 64'b000000000000000001;
  
  #5 a = 64'b0000000000000000001;
  #5 b = 64'b0000000000000000000;
  end
  
endmodule
  
  
  