`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "design_1,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=design_1,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=6,numReposBlks=6,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=6,numPkgbdBlks=0,bdsource=USER,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "design_1.hwdef" *)
module design_1
   (GND);
  input GND;

  wire [5:0]PIC16F873_0_porta;
  wire [7:0]PIC16F873_0_portb;
  wire [7:0]PIC16F873_0_portc;
  wire [7:0]T74LS373_0_out;
  wire [14:0]addr_cat_0_addr;
  wire oe_0_1;
  wire splitter_0_OE;
  wire splitter_0_le;
  wire splitter_0_notOE;
  wire splitter_0_we;

  assign oe_0_1 = GND;
  design_1_PIC16F873_0_0 PIC16F873_0
       (.porta(PIC16F873_0_porta),
        .portb(PIC16F873_0_portb),
        .portbw({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .portc(PIC16F873_0_portc));
  design_1_T74LS373_0_0 T74LS373_0
       (.dat(PIC16F873_0_portb),
        .data_out(T74LS373_0_out),
        .le(splitter_0_le),
        .oe(oe_0_1));
  design_1_addr_cat_0_0 addr_cat_0
       (.addr(addr_cat_0_addr),
        .portb(T74LS373_0_out),
        .portc(PIC16F873_0_portc));
  design_1_m62256_0_0 m62256_0
       (.adr(addr_cat_0_addr),
        .ce(splitter_0_notOE),
        .datw(PIC16F873_0_portb),
        .oe(splitter_0_notOE),
        .we(splitter_0_we));
  design_1_m62256_1_0 m62256_1
       (.adr(addr_cat_0_addr),
        .ce(splitter_0_OE),
        .datw(PIC16F873_0_portb),
        .oe(splitter_0_OE),
        .we(splitter_0_we));
  design_1_splitter_0_0 splitter_0
       (.OE(splitter_0_OE),
        .le(splitter_0_le),
        .notOE(splitter_0_notOE),
        .porta(PIC16F873_0_porta),
        .portc(PIC16F873_0_portc),
        .we(splitter_0_we));
endmodule
