`timescale 1ns / 1ps

module Arduino_ATmega328
(
     input CLK,
     input RST,
    output reg SDA,
    output SCL,
     input MISO,
    output reg MOSI,
    output SCLK,
    output reg CS1,
    output reg CS2
);

    `define max_cycle 8

    `define addr_1 8'b00100011
    `define addr_2 8'b00100100

    reg [7:0] addr;

    assign SCLK = CLK;
    assign SCL  = CLK;

    integer ticks = 0;
    integer cycle = 0;

    reg [7:0] last_value;

    // --------------------------------

    always @(posedge CLK)
    begin
        ticks = ticks + 1;

        if (ticks > 8)
        begin
            cycle = cycle + 1;
            if (cycle > `max_cycle)
                cycle = 1;
            ticks = 1;
        end

        // ----------------------------

        case (cycle)
        0: // doar inițializări
            begin
                CS1 = 1'bZ;
                CS2 = 1'bZ;
                SDA = 1'bZ;
                MOSI = 1'bZ;
                addr = 8'bZ;
                last_value = 8'b0;
            end
        1: // citire de la primul senzor
            begin
                CS1 = 1;
                CS2 = 0;
                MOSI = 1;
                addr = 0;
                last_value[(ticks - 3) % 8] = MISO;
            end
        2: // start I2C primul ecran
            begin
                MOSI = 0;
                CS1 = 0;
                addr = `addr_1;
                SDA = addr[8 - ticks];
            end
        3: // trimite ultima valoare
            begin
                SDA = last_value[8 - ticks];
            end
        4: // stop I2c
            begin
                SDA = 1;
                last_value = 0;
            end
        5: // citire de la al doilea senzor
            begin
                CS2 = 1;
                MOSI = 1;
                addr = 0;
                last_value[(ticks + 1) % 8] = MISO;
            end
        6: // start I2C al doilea ecran
            begin
                MOSI = 0;
                CS2 = 0;
                addr = `addr_2;
                SDA = addr[8 - ticks];
            end
        7: // trimite ultima valoare
            begin
                SDA = last_value[8 - ticks];
            end
        8: // stop I2c
            begin
                SDA = 1;
                last_value = 0;
            end
        endcase
        
        // ----------------------------
        
        if (RST)
        begin
            ticks = 0;
            cycle = 0;
            last_value = 8'b0;
        end
    end

endmodule
