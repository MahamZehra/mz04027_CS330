module tb();

	reg clk;
	reg reset;
	
	RISC_V_Processor RISCV
	(
		.clk(clk),
		.reset(reset)
	);

	initial
	begin
	clk = 1'b0;
	reset = 1'b0;
	end

	always
	#5 clk = ~clk;
	
	always
	#50 reset = ~reset;

endmodule
