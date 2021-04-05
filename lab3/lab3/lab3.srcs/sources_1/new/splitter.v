`timescale 1ns / 1ps

module splitter(DH, DQ);

input [0:31]DH;
output reg [0:7]DQ;

always @(*)
    begin
        DQ = DH[0:7];
    end

endmodule
