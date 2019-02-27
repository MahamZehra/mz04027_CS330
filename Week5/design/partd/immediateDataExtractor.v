module immediateDataExtractor
(
  input [31:0] instruction,
  output reg[63:0] imm_data
);

  reg [11:0] temp;
  reg [51:0] all0;
  reg [51:0] all1;
  
  initial
  begin
  all0 = 52'b0000000000000000000000000000000000000000000000000000;
  all1 = 52'b1111111111111111111111111111111111111111111111111111;
end

  always @ (instruction)
    begin
      case (instruction[6])
        0: begin
          case(instruction[5])
              0: temp = instruction[31:20];
              1: temp = {instruction[31:25], instruction[11:7]};
            endcase
          end
        1: temp = {instruction[30:25], instruction[11:8]};
      endcase
      case (temp[11])
        0: imm_data = {all0,temp};
        1: imm_data = {all1,temp};
      endcase
  end
  
endmodule
        
