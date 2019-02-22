module ALU_1_bit
(
  input a,b, 
  input CarryIn,
  input [3:0] ALUOp,
  output reg Result, CarryOut
);

  wire bFin = ~b;
	
	always @ (a or b or CarryIn or ALUOp)
	begin
	case (ALUOp)

		4'b0000 : begin
					Result = a & b;
					CarryOut = 0;
				  end
		4'b0001 : begin
					Result = a | b;
					CarryOut = 0;
				  end
		4'b0010 : begin
					Result = (a & (~b) & (~CarryIn)) | ((~a) & b & (~CarryIn)) | ((~a) & (~b) & CarryIn) | (a & b & CarryIn);
					CarryOut = (a & CarryIn) | (b & CarryIn) | (a & b);
				  end
		4'b0110 : begin
					Result = (a & (~bFin) & (~CarryIn)) | ((~a) & bFin & (~CarryIn)) | ((~a) & (~bFin) & CarryIn) | (a & bFin & CarryIn);
					CarryOut = (a & CarryIn) | (bFin & CarryIn) | (a & bFin);
				  end
		4'b1100 : begin
					Result = ~(a | b);
					CarryOut = 0;
				  end
	endcase
	end
	
endmodule
	
  