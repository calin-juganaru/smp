`timescale 1ns / 1ps

module senzor_2
(
    output reg MISO,
     input MOSI,
     input CLK,
     input CS
);
    
    integer internal;
    initial 
    begin
        MISO = 0;
        internal = 76;
        //MISO = internal % 2;
        //internal = internal / 2;
    end
    
    always @(posedge CLK)
    begin
        if (CS & MOSI) 
        begin
            MISO = internal % 2;
            internal = internal / 2;
        end
        else 
        begin
            MISO = 0;
            internal = $urandom % 10 + 70;
        end
    end

endmodule
