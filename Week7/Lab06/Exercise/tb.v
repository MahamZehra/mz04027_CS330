module tb();

	reg [63:0] Mem_Addr;
	reg [63:0] Write_Data;
	reg clk;
	reg MemWrite;
	reg MemRead;
	wire [63:0] Read_Data;

	Data_Memory dm
	(
		.Mem_Addr(Mem_Addr),
		.Write_Data(Write_Data),
		.clk(clk),
		.MemWrite(MemWrite),
		.MemRead(MemRead),
		.Read_Data(Read_Data)
	);
	
	initial
	begin
		Write_Data = 64'b11111111111111111111111111111111111;
		clk = 1'b0;
	end
  
	always
	#5 clk = ~clk;
	
	initial
	begin
		Mem_Addr = 64'b0;
		#25 Mem_Addr = 64'b10000;
		#10 Mem_Addr = 64'b1000;
	end
	
	initial
	begin
		MemWrite = 1'b0;
		MemRead = 1'b1;
		#10 MemWrite = 1'b1;
		#10 MemWrite = 1'b0;
		#5 MemRead = 1'b0;
	end
		
  

endmodule 