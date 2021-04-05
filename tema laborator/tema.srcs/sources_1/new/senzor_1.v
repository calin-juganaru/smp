`timescale 1ns / 1ps

module senzor_1
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
        internal = $urandom % 10 + 20;
        MISO = internal % 2;
        internal = internal / 2;
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
            internal = $urandom % 10 + 20;
        end
    end

endmodule
