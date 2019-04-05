module tb();

	reg clk;
	reg reset;
	
	RISC_V_Processor RISCV
	(
		.clk(clk),
		.reset(reset)
	);

	initial
	clk = 1'b0;
	
	initial
	begin
	reset = 1'b1;
	#10 reset = ~reset;
	end

	always
	#5 clk = ~clk;

endmodule
