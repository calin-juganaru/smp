`timescale 1ns / 1ps

module test();

    reg CLK_0;

    initial begin
        CLK_0 = 0;
    end
    
    always begin
        #10 CLK_0 = ~CLK_0;
    end
    
    design_1_wrapper top(CLK_0);
    
endmodule
