//Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2019.2.1 (lin64) Build 2729669 Thu Dec  5 04:48:12 MST 2019
//Date        : Wed Nov 25 13:57:09 2020
//Host        : gonzalez running 64-bit Linux Mint 20
//Command     : generate_target design_1_wrapper.bd
//Design      : design_1_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module design_1_wrapper
   (CLK_0);
  input CLK_0;

  wire CLK_0;

  design_1 design_1_i
       (.CLK_0(CLK_0));
endmodule