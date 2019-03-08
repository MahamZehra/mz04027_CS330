module tb();
  
  reg clk;
  reg reset;
  wire [31:0] instruction;
  
  Instruction_Fetch IF
  (
    .clk(clk),
    .reset(reset),
    .instruction(instruction)
  );
  
  initial
  clk = 1'b1;
  
  always
  #10 clk = ~clk;
  
  initial
  begin
  reset = 1'b0;
  #80 reset = ~reset;
  end
  
endmodule