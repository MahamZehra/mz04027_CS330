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
	reset = 1'b1;
	end

	always
	#3 clk = ~clk;
	
	always
	#10 reset = ~reset;

endmodule
