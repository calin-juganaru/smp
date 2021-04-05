`timescale 1ns / 1ps

module MUX
(
    output OUTP,
     input IN_1,
     input IN_2
);

    assign OUTP = IN_1 | IN_2;

endmodule
