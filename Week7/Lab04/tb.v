module tb();
  reg [5:0] RS1;
  reg [5:0] RS2;
  reg [5:0] RD;
  reg [63:0] WriteData;
  reg RegWrite;
  reg clk;
  reg reset;
  wire [63:0] ReadData1;
  wire [63:0] ReadData2;
  
  registerFile rf
  (
    .RS1(RS1),
    .RS2(RS2),
    .RD(RD),
    .WriteData(WriteData),
    .RegWrite(RegWrite),
    .clk(clk),
    .reset(reset),
    .ReadData1(ReadData1),
    .ReadData2(ReadData2)
  );

  initial
  clk = 1'b0;
  
  always
  #5 clk = ~clk;
  
  initial
  begin
    RS1 = 5'b100;
    RS2 = 5'b101;
    RD = 5'b110;
    WriteData = 64'b11111111111111111;
  end
  
  initial 
  begin
    reset = 1'b1;
    #5 reset = 1'b0;
    
    #20 reset = 1'b1;
    #5 reset = 1'b0;
  end
  
  initial
  begin
    RegWrite = 1'b1;
    RS1 = 5'b110;
    #10 RegWrite = ~RegWrite; 
    #10 RegWrite = ~RegWrite;
    RS1 = 5'b110;
    #10 RegWrite = ~RegWrite;
  end
  
endmodule

  