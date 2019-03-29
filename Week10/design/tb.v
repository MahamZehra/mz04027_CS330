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
	begin
	#5 clk = ~clk;
	#10 reset = ~reset;
	end

endmodule
