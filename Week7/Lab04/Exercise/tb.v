module tb();

	reg [31:0] instruction;
	reg [63:0] ReadData1;
	reg [63:0] ReadData2;

top tp
(
	.instruction(instruction),
	.ReadData1(ReadData1),
	.ReadData2(ReadData2)
);

initial
instruction = 32'b00000001010110100000010010110011;

always
#10 instruction = ~instruction;