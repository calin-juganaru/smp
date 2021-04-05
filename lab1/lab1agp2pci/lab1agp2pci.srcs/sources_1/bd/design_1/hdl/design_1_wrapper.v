//Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2020.1 (win64) Build 2902540 Wed May 27 19:54:49 MDT 2020
//Date        : Tue Oct 27 14:19:31 2020
//Host        : Compewterschmidt running 64-bit major release  (build 9200)
//Command     : generate_target design_1_wrapper.bd
//Design      : design_1_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module design_1_wrapper
   (clk,
    irdy_0,
    irdy_1,
    rst_0,
    rst_1,
    trdy_0,
    trdy_1);
    
  input clk;
  input irdy_0;
  inout irdy_1;
  input rst_0;
  input rst_1;
  output trdy_0;
  inout trdy_1;

  wire clk;
  wire irdy_0;
  wire irdy_1;
  wire rst_0;
  wire rst_1;
  wire trdy_0;
  wire trdy_1;

  design_1 design_1_i
       (.clk(clk),
        .irdy_0(irdy_0),
        .irdy_1(irdy_1),
        .rst_0(rst_0),
        .rst_1(rst_1),
        .trdy_0(trdy_0),
        .trdy_1(trdy_1));
endmodule
