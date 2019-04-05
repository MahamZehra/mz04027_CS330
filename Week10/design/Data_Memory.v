module Data_Memory
(
	input [63:0] Mem_Addr,
	input [63:0] Write_Data,
	input clk, MemWrite, MemRead,
	output reg [63:0] Read_Data
);

  reg [7:0] DataMem [63:0];
  
  initial
  begin
  DataMem[0] <= 8'b00000000;
  DataMem[1] <= 8'b00000001;
  DataMem[2] <= 8'b00000010;
  DataMem[3] <= 8'b00000011;
  DataMem[4] <= 8'b00000100;
  DataMem[5] <= 8'b00000101;
  DataMem[6] <= 8'b00000110;
  DataMem[7] <= 8'b00000111;
  DataMem[8] <= 8'b00001000;
  DataMem[9] <= 8'b00001001;
  DataMem[10] <= 8'b00001010;
  DataMem[11] <= 8'b00001011;
  DataMem[12] <= 8'b00001100;
  DataMem[13] <= 8'b00001101;
  DataMem[14] <= 8'b00001110;
  DataMem[15] <= 8'b00001111;
  DataMem[16] <= 8'b00010000;
  DataMem[17] <= 8'b00010001;
  DataMem[18] <= 8'b00010010;
  DataMem[19] <= 8'b00010011;
  DataMem[20] <= 8'b00010100;
  DataMem[21] <= 8'b00010101;
  DataMem[22] <= 8'b00010110;
  DataMem[23] <= 8'b00010111;
  DataMem[24] <= 8'b00011000;
  DataMem[25] <= 8'b00011001;
  DataMem[26] <= 8'b00011010;
  DataMem[27] <= 8'b00011011;
  DataMem[28] <= 8'b00011100;
  DataMem[29] <= 8'b00011101;
  DataMem[30] <= 8'b00011110;
  DataMem[31] <= 8'b00011111;
  DataMem[32] <= 8'b00100000;
  DataMem[33] <= 8'b00100001;
  DataMem[34] <= 8'b00100010;
  DataMem[35] <= 8'b00100011;
  DataMem[36] <= 8'b00100100;
  DataMem[37] <= 8'b00100101;
  DataMem[38] <= 8'b00100110;
  DataMem[39] <= 8'b00100111;
  DataMem[40] <= 8'b00101000;
  DataMem[41] <= 8'b00101001;
  DataMem[42] <= 8'b00101010;
  DataMem[43] <= 8'b00101011;
  DataMem[44] <= 8'b00101100;
  DataMem[45] <= 8'b00101101;
  DataMem[46] <= 8'b00101110;
  DataMem[47] <= 8'b00101111;
  DataMem[48] <= 8'b00110000;
  DataMem[49] <= 8'b00110001;
  DataMem[50] <= 8'b00110010;
  DataMem[51] <= 8'b00110011;
  DataMem[52] <= 8'b00110100;
  DataMem[53] <= 8'b00110101;
  DataMem[54] <= 8'b00110110;
  DataMem[55] <= 8'b00110111;
  DataMem[56] <= 8'b00111000;
  DataMem[57] <= 8'b00111001;
  DataMem[58] <= 8'b00111010;
  DataMem[59] <= 8'b00111011;
  DataMem[60] <= 8'b00111100;
  DataMem[61] <= 8'b00111101;
  DataMem[62] <= 8'b00111110;
  DataMem[63] <= 8'b00111111;
  end
  
  always @ (posedge clk & (Write_Data || Mem_Addr))
  begin
	if (MemWrite == 1)
	begin
		DataMem[Mem_Addr + 64'b0] = Write_Data[7:0];
		DataMem[Mem_Addr + 64'b1] = Write_Data[15:8];
		DataMem[Mem_Addr + 64'b10] = Write_Data[23:16];
		DataMem[Mem_Addr + 64'b11] = Write_Data[31:24];
		DataMem[Mem_Addr + 64'b100] = Write_Data[39:32];
		DataMem[Mem_Addr + 64'b101] = Write_Data[47:40];
		DataMem[Mem_Addr + 64'b110] = Write_Data[55:48];
		DataMem[Mem_Addr + 64'b111] = Write_Data[63:56];
	end
 end
 
 always @ (Mem_Addr)
 begin
	if (MemRead == 1)
		Read_Data = {DataMem[Mem_Addr + 64'b111],DataMem[Mem_Addr + 64'b110],DataMem[Mem_Addr + 64'b101],DataMem[Mem_Addr + 64'b100],DataMem[Mem_Addr + 64'b0011],DataMem[Mem_Addr + 64'b0010], DataMem[Mem_Addr + 64'b0001], DataMem[Mem_Addr]};
 end

endmodule