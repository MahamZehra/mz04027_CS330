module ALU_64_bit
(
  input [63:0] a,
  input [63:0] b, 
  input CarryIn,
  input [3:0] ALUOp,
  output reg [63:0] Result,
  output Zero;
);	
	always @ (a or b or CarryIn or ALUOp)
	begin
	case (ALUOp)

		4'b0000 : begin
					Result = a & b;
				  end
		4'b0001 : begin
					Result = a | b;
				  end
		4'b0010 : begin
					Result = a + b;
				  end
		4'b0110 : begin
					Result = a - b;
				  end
		4'b1100 : begin
					Result = ~(a | b);
				  end
	endcase
	end
	
	wire temp = 0;
	begin 
		x = 0; 
       		while(x <= 63) 
		  begin		
		     temp = temp or Result[x];
		     x = x + 1; 
		  end 
	end 
	assign Zero = ~temp;
	
	
endmodule				
