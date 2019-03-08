module tb();
  
  reg clk;
  reg reset;
  reg [63:0] PC_In;
  wire [63:0] PC_Out;
  
  Program_Counter PC
  (
    .clk(clk),
    .reset(reset),
    .PC_In(PC_In),
    .PC_Out(PC_Out)
  );
  
  initial 
  clk = 1'b1;
  
  always
  #10 clk = ~clk;
  
  initial
  reset = 1'b0;
  
  always
  #5 reset = ~reset;
  
  initial
  begin
  PC_In = 64'b10101010101010101010101;
  #10 PC_In = 64'b11111111111111111111111111111;
  #10 PC_In = 64'b100000000000001000000000001111; 
  end
  
endmodule
  