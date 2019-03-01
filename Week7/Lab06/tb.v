module tb();
  
  reg [63:0] Inst_Address;
  wire [31:0] Instruction;
  
  Instruction_Memory im
  (
    .Inst_Address(Inst_Address),
    .Instruction(Instruction)
  );
  
  
  initial
  begin
  Inst_Address = 64'b0;
  #10 Inst_Address = 64'b100;
  #10 Inst_Address = 64'b1000;
  #10 Inst_Address = 64'b1100;
  end
  
endmodule