//Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2020.1 (win64) Build 2902540 Wed May 27 19:54:49 MDT 2020
//Date        : Wed Jan 27 09:48:11 2021
//Host        : Compewterschmidt running 64-bit major release  (build 9200)
//Command     : generate_target block_design.bd
//Design      : block_design
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "block_design,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=block_design,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=6,numReposBlks=6,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=6,numPkgbdBlks=0,bdsource=USER,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "block_design.hwdef" *) 
module block_design
   (CLK_0,
    RST_0);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.CLK_0 CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.CLK_0, ASSOCIATED_RESET RST_0, CLK_DOMAIN block_design_CLK_0, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.000" *) input CLK_0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.RST_0 RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.RST_0, INSERT_VIP 0, POLARITY ACTIVE_LOW" *) input RST_0;

  wire Arduino_ATmega328_0_CS1;
  wire Arduino_ATmega328_0_CS2;
  wire CLK_0_1;
  wire MUX_0_OUTP;
  wire RST_0_1;
  wire microcontrolor_0_MOSI;
  wire microcontrolor_0_SCL;
  wire microcontrolor_0_SCLK;
  wire microcontrolor_0_SDA;
  wire senzor_1_0_MISO;
  wire senzor_2_0_MISO;

  assign CLK_0_1 = CLK_0;
  assign RST_0_1 = RST_0;
  block_design_Arduino_ATmega328_0_0 Arduino_ATmega328_0
       (.CLK(CLK_0_1),
        .CS1(Arduino_ATmega328_0_CS1),
        .CS2(Arduino_ATmega328_0_CS2),
        .MISO(MUX_0_OUTP),
        .MOSI(microcontrolor_0_MOSI),
        .RST(RST_0_1),
        .SCL(microcontrolor_0_SCL),
        .SCLK(microcontrolor_0_SCLK),
        .SDA(microcontrolor_0_SDA));
  block_design_MUX_0_1 MUX_0
       (.IN_1(senzor_1_0_MISO),
        .IN_2(senzor_2_0_MISO),
        .OUTP(MUX_0_OUTP));
  block_design_ecran_1_0_0 ecran_1_0
       (.SCL(microcontrolor_0_SCL),
        .SDA(microcontrolor_0_SDA));
  block_design_ecran_2_0_0 ecran_2_0
       (.SCL(microcontrolor_0_SCL),
        .SDA(microcontrolor_0_SDA));
  block_design_senzor_1_0_1 senzor_1_0
       (.CLK(microcontrolor_0_SCLK),
        .CS(Arduino_ATmega328_0_CS1),
        .MISO(senzor_1_0_MISO),
        .MOSI(microcontrolor_0_MOSI));
  block_design_senzor_2_0_1 senzor_2_0
       (.CLK(microcontrolor_0_SCLK),
        .CS(Arduino_ATmega328_0_CS2),
        .MISO(senzor_2_0_MISO),
        .MOSI(microcontrolor_0_MOSI));
endmodule
