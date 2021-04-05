`timescale 1ns / 1ps

module simulare();
    
    reg clk;
    reg rst;
    
    initial clk = 1;
    initial rst = 0;
    
    always begin
        #10 clk = ~clk;
    end
    
    block_design_wrapper top(clk);
    
endmodule
