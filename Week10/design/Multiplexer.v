module multiplexer
(
  input [3:0] a, [3:0] b,
  input sel,
  output reg [3:0] data_out
);

  always @ (sel or a or b)
  begin
    if (sel)
      data_out <= b;
    else
      data_out <= a;
  end
  
endmodule
  