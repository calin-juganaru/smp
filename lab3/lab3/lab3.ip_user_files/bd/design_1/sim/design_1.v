//Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2019.2.1 (lin64) Build 2729669 Thu Dec  5 04:48:12 MST 2019
//Date        : Wed Nov 25 13:50:04 2020
//Host        : gonzalez running 64-bit Linux Mint 20
//Command     : generate_target design_1.bd
//Design      : design_1
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "design_1,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=design_1,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=5,numReposBlks=5,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=5,numPkgbdBlks=0,bdsource=USER,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "design_1.hwdef" *) 
module design_1
   (CLK_0);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.CLK_0 CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.CLK_0, CLK_DOMAIN design_1_CLK_0, FREQ_HZ 100000000, INSERT_VIP 0, PHASE 0.000" *) input CLK_0;

  wire CLK_0_1;
  wire CS_split_0_CS_bit;
  wire mpc106fsm_0_AACK;
  wire mpc106fsm_0_ARTRY;
  wire mpc106fsm_0_BG0;
  wire [0:7]mpc106fsm_0_CS;
  wire mpc106fsm_0_DBG0;
  wire [0:31]mpc106fsm_0_DH;
  wire mpc106fsm_0_SDCAS;
  wire [0:11]mpc106fsm_0_SDMA;
  wire mpc106fsm_0_SDRAS;
  wire mpc106fsm_0_TA;
  wire mpc106fsm_0_WE;
  wire powerpcfsm_0_BR;
  wire [0:31]powerpcfsm_0_DL;
  wire powerpcfsm_0_TBST;
  wire powerpcfsm_0_TS;
  wire [0:2]powerpcfsm_0_TSIZ;
  wire powerpcfsm_0_WT;
  wire [0:7]splitter_0_DQ;

  assign CLK_0_1 = CLK_0;
  design_1_CS_split_0_0 CS_split_0
       (.CS(mpc106fsm_0_CS),
        .CS_bit(CS_split_0_CS_bit));
  design_1_mpc106fsm_0_1 mpc106fsm_0
       (.AACK(mpc106fsm_0_AACK),
        .ARTRY(mpc106fsm_0_ARTRY),
        .BG0(mpc106fsm_0_BG0),
        .BR0(powerpcfsm_0_BR),
        .CLK(CLK_0_1),
        .CS(mpc106fsm_0_CS),
        .DBG0(mpc106fsm_0_DBG0),
        .DH(mpc106fsm_0_DH),
        .DL(powerpcfsm_0_DL),
        .SDCAS(mpc106fsm_0_SDCAS),
        .SDMA(mpc106fsm_0_SDMA),
        .SDRAS(mpc106fsm_0_SDRAS),
        .TA(mpc106fsm_0_TA),
        .TBST(powerpcfsm_0_TBST),
        .TS(powerpcfsm_0_TS),
        .TSIZ(powerpcfsm_0_TSIZ),
        .WE(mpc106fsm_0_WE),
        .WT(powerpcfsm_0_WT));
  design_1_powerpcfsm_0_2 powerpcfsm_0
       (.AACK(mpc106fsm_0_AACK),
        .ARTRY(mpc106fsm_0_ARTRY),
        .BG(mpc106fsm_0_BG0),
        .BR(powerpcfsm_0_BR),
        .CLK(CLK_0_1),
        .DBG(mpc106fsm_0_DBG0),
        .DH(mpc106fsm_0_DH),
        .DL(powerpcfsm_0_DL),
        .TA(mpc106fsm_0_TA),
        .TBST(powerpcfsm_0_TBST),
        .TS(powerpcfsm_0_TS),
        .TSIZ(powerpcfsm_0_TSIZ),
        .WT(powerpcfsm_0_WT));
  design_1_splitter_0_0 splitter_0
       (.DH(mpc106fsm_0_DH),
        .DQ(splitter_0_DQ));
  design_1_x2mx9_sdramfsm_0_0 x2mx9_sdramfsm_0
       (.A(mpc106fsm_0_SDMA),
        .CAS(mpc106fsm_0_SDCAS),
        .CLK(CLK_0_1),
        .CS(CS_split_0_CS_bit),
        .DQ(splitter_0_DQ),
        .RAS(mpc106fsm_0_SDRAS),
        .WE(mpc106fsm_0_WE));
endmodule
