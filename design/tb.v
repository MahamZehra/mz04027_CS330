module tb();

  reg [3:0] a, b;
  reg sel;
  wire [3:0] data_out;

  multiplexer m1
  (
    .a(a),
    .b(b),
    .sel(sel),
    .data_out(data_out)
  );
  
  initial
  begin
    a = 4'b0000;
    b = 4'b1111;
    sel = 1'b1;
    #10
    sel = 1'b0;
    #5
    b = 4'b0000;
    #5
    sel = 1'b1;
    #5
    b = 4'b1111;
    #10
    sel = 1'b0;
    #10
    sel = 1'b1;
    #10
    sel = 1'b0;
  end
  
endmodule