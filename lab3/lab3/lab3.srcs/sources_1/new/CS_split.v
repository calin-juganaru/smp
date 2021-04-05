`timescale 1ns / 1ps
`timescale 1ns / 1ps

module CS_split(CS, CS_bit);

    input [0:7]CS;
    output reg CS_bit;
    
    always @(*)
    begin
        CS_bit = CS[7];
    end

endmodule