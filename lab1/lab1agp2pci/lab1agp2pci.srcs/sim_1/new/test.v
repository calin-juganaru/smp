`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/27/2020 01:01:39 PM
// Design Name: 
// Module Name: test
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////

module test();

    reg clk;
    reg irdy_0;
    wire irdy_1;
    reg trdy_0;
    wire trdy_1;

    initial begin
        clk = 0;
    end
    
    always begin
        #5 clk = ~clk;
    end
    
    design_1 top(clk, irdy_0, irdy_1, trdy_0, trdy_1);

endmodule
