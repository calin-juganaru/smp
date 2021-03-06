//Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2020.1 (win64) Build 2902540 Wed May 27 19:54:49 MDT 2020
//Date        : Tue Oct 27 14:19:31 2020
//Host        : Compewterschmidt running 64-bit major release  (build 9200)
//Command     : generate_target design_1.bd
//Design      : design_1
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "design_1,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=design_1,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=2,numReposBlks=2,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=2,numPkgbdBlks=0,bdsource=USER,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "design_1.hwdef" *) 
module design_1
   (clk,
    irdy_0,
    irdy_1,
    rst_0,
    rst_1,
    trdy_0,
    trdy_1);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.CLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.CLK, ASSOCIATED_RESET rst_0:rst_1, CLK_DOMAIN design_1_clk, FREQ_HZ 1000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.000" *) input clk;
  input irdy_0;
  inout irdy_1;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.RST_0 RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.RST_0, INSERT_VIP 0, POLARITY ACTIVE_LOW" *) inout rst_0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.RST_1 RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.RST_1, INSERT_VIP 0, POLARITY ACTIVE_LOW" *) inout rst_1;
  output trdy_0;
  inout trdy_1;

  wire Net2;
  wire Net5;
  wire Net6;
  wire Net7;
  wire Net8;
  wire core_logic_0_gnt;
  wire [2:0]core_logic_0_st;
  wire core_logic_0_trdy;
  wire graphic_controller_0_inta;
  wire graphic_controller_0_intb;
  wire graphic_controller_0_pipe;
  wire graphic_controller_0_rbf;
  wire graphic_controller_0_req;
  wire graphic_controller_0_sb_stb;
  wire [7:0]graphic_controller_0_sba;
  wire graphic_controller_0_serr;
  wire irdy_0_1;

  assign Net2 = clk;
  assign irdy_0_1 = irdy_0;
  assign trdy_0 = core_logic_0_trdy;
  design_1_core_logic_0_0 core_logic_0
       (.clk(Net2),
        .gnt(core_logic_0_gnt),
        .inta(graphic_controller_0_inta),
        .intb(graphic_controller_0_intb),
        .irdy(irdy_0_1),
        .pipe(graphic_controller_0_pipe),
        .rbf(graphic_controller_0_rbf),
        .req(graphic_controller_0_req),
        .rst(rst_0),
        .sb_stb(graphic_controller_0_sb_stb),
        .sba(graphic_controller_0_sba),
        .serr(graphic_controller_0_serr),
        .st(core_logic_0_st),
        .trdy(core_logic_0_trdy));
  design_1_graphic_controller_0_0 graphic_controller_0
       (.clk(Net2),
        .gnt(core_logic_0_gnt),
        .inta(graphic_controller_0_inta),
        .intb(graphic_controller_0_intb),
        .irdy(irdy_1),
        .pipe(graphic_controller_0_pipe),
        .rbf(graphic_controller_0_rbf),
        .req(graphic_controller_0_req),
        .rst(rst_1),
        .sb_stb(graphic_controller_0_sb_stb),
        .sba(graphic_controller_0_sba),
        .serr(graphic_controller_0_serr),
        .st(core_logic_0_st),
        .trdy(trdy_1));
endmodule
