`timescale 1ns / 1ps

module ecran_1(input SDA, input SCL);

    `define addr 8'b00100011

    integer ticks = 0;
    reg started;
    integer aux;
    reg [7:0] VALUE;
    
    initial 
    begin
        VALUE = 8'bZ;
        started = 0;
        aux = 0;
    end

    always @(posedge SCL)
    begin
        ticks = ticks + 1;
        aux = (aux * 2) + SDA;
        
        if (ticks > 8)
        begin
            if (aux == `addr || started)
            begin
                VALUE = aux;
                started = 1;
            end
            
            if (aux == 255) 
                started = 0;
            
            ticks = 1;
            aux = 0;
        end        
    end
    
endmodule
