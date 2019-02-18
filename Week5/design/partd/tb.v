module tb();
  
  reg [31:0] instruction;
  wire [61:0] imm_data;
  
  immediateDataExtractor ide0
  (
    .instruction(instruction),
    .imm_data(imm_data)
  );
  
  initial
  instruction = 32'b00000001010110100000010010110011;

  always 
  #10 instruction = ~instruction;
  
endmodule