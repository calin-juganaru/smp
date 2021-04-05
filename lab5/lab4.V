// ============================================================================

module m62256(dat, datw, adr, ce, oe, we);

output [7:0]dat;
reg [7:0]dat;
input [7:0]datw;
input [14:0]adr;
input ce, oe, we;
reg [7:0] mem [32767:0];

always@(negedge oe) assign dat = dat;
always@(posedge oe) assign dat = 8'hz;
always@(adr) if(!ce) assign dat = mem[adr];
always@(negedge we) if(!ce) mem[adr] = datw;

endmodule

// ============================================================================

module T74LS373(data_out, dat, oe, le);

output reg [7:0]data_out;
input oe, le;
reg [7:0]la;
input [7:0] dat;

always@(posedge le) assign la = dat;
always@(negedge le) assign la = la;
always@(posedge oe) assign data_out = 8'hz;
always@(negedge oe) assign data_out = la;

endmodule

// ============================================================================

module T74LS04(data_out, data_in);

input data_in;
output data_out;

assign data_out = !data_in;

endmodule

// ============================================================================

module addr_cat(portb, portc, addr);

input [7:0] portb;
input [7:0] portc;

output [14:0] addr;

assign addr[7:0]  = portb;
assign addr[14:8] = portc[6:0];

endmodule

// ============================================================================

module splitter(porta, portc, le, we, OE, notOE);

input [5:0] porta;
input [7:0] portc;

output le, we, OE, notOE;

assign le = porta[0];
assign we = porta[1];

assign OE = portc[7];
assign notOE = !OE;

endmodule

// ============================================================================

module PIC16F873(porta, portb, portbw, portc);

output [5:0]porta;
reg [5:0]porta;
output [7:0]portb;
reg [7:0]portb;
output [7:0]portc;
reg [7:0]portc;
input [7:0]portbw;
reg [7:0]mem [32767:0];
integer co;

	initial
	begin
	porta[1:0] = 2'b10;
	portc=0;
		for (co = 0; co < 8; co = co + 1)
		begin
			porta[1]=1;
			portb=co;
			porta[0]=1; //latch enable
			#5;
			porta[0]=0;
			portb=7-co; //punem datele
			porta[1]=0;  //write
			#5;
		end
	$display("---\n");
	portc=8'hFF;
		for(co=0;co<8;co=co+1)
		begin
			porta[1]=1;
			portb=co;
			porta[0]=1; //latch enable
			#5;
			porta[0]=0;
			portb=7-co; //punem datele
			porta[1]=0;  //write
			#5;
		end
	$display("***\n");
	portc=0;
	porta[1]=1;
		for(co=0;co<8;co=co+1)
		begin
			portb=co;
			porta[0]=1; //latch enable
			#5;
			porta[0]=0;
			mem[co]=portbw; //punem datele
			#5;
		end
	//for(co=0;co<8;co=co+1) $display("%d ",mem[co]);
	$display("---\n");
	portc=8'hFF;
		for(co=0;co<8;co=co+1)
		begin
			porta[1]=1;
			portb=co;
			porta[0]=1; //latch enable
			#5;
			porta[0]=0;
			mem[co]=portbw; //punem datele
			#5;
		end
	//for(co=0;co<8;co=co+1) $display("%d ",mem[co]);
	end


endmodule

// ============================================================================