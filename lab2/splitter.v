`timescale 1ns / 1ps

module splitter(D, D_low);

input [15:0]D;
output reg [7:0]D_low;

always @(*)
  begin
    D_low = D[7:0];
  end

endmodule
