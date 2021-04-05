`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.11.2020 12:50:42
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

    wire AS_0;
    wire [23:1]A_0;
    reg CLK;
    wire C_0;
    wire [15:0]D_0;
    wire FC0_0;
    wire FC1_0;
    wire FC2_0;
    reg H1_0;
    wire Hdoi_0;
    reg IPL0_0;
    reg IPL1_0;
    reg IPL2_0;
    reg IRESET_0;
    wire LDS_0;
    reg PA7_0;
    wire PAI0_0;
    wire PAI1_0;
    wire PAI2_0;
    wire PAI3_0;
    wire PAI4_0;
    wire PAI5_0;
    wire PAI6_0;
    reg PC0_0;
    reg PC1_0;
    reg PC6_0;
    wire PC_0;
    wire PIC5_0;
    wire RESET_0;
    wire ceva_0;

    initial begin
        CLK = 0;
        IRESET_0 = 1;
        
        #20 IRESET_0 = 0;
        
        IPL0_0 = 0;
        IPL1_0 = 0;
        IPL2_0 = 0;
        
        H1_0 = 1;
        PC0_0 = 0;
        PC1_0 = 1;
        PA7_0 = 0;
    end
    
    always begin
        #10 CLK = ~CLK;
    end
    
    design_1_wrapper top
    (
        AS_0,
        A_0,
        CLK,
        C_0,
        D_0,
        FC0_0,
        FC1_0,
        FC2_0,
        H1_0,
        Hdoi_0,
        IPL0_0,
        IPL1_0,
        IPL2_0,
        IRESET_0,
        LDS_0,
        PA7_0,
        PAI0_0,
        PAI1_0,
        PAI2_0,
        PAI3_0,
        PAI4_0,
        PAI5_0,
        PAI6_0,
        PC0_0,
        PC1_0,
        PC6_0,
        PC_0,
        PIC5_0,
        RESET_0,
        ceva_0
    );
    
endmodule
