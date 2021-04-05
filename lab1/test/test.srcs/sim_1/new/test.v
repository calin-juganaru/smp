`timescale 1ns / 1ps

module test();

    reg clk;

    initial begin
        clk = 0;
    end

    always begin
        #10 clk = ~clk;
    end

    design_1_wrapper top(clk);

endmodule
