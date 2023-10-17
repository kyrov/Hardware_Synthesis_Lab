`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/07/2023 02:08:18 AM
// Design Name: 
// Module Name: UART_TX
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module UART_TX(
    input wire [7:0] data_in,
    input wire clock,
    input wire reset,
    input wire tx_sent,
    output reg data_out
    );
    reg tx_ready;
    reg [10:0] count; // for clock
    reg [7:0] idx;
    reg [7:0] data;
    // clock manipulation
    always @(posedge clock) begin
        if(count == 651) begin
            count <= 0;
        end else begin
            count <= count + 1;
        end
    end
    // status manipulation
    always @(posedge clock) begin
        if(reset) begin
            tx_ready <= 1;
            data_out <= 1;
            idx <= 0;
        end else begin
            if(tx_sent) begin
                tx_ready <= 0;
                idx <= 0;
                data <= data_in;
            end
            if(tx_ready == 0 && count == 0) begin
                idx <= idx + 1;
                case (idx)
                    8'b00000000 : begin data_out <= 0; end
                    8'b00010000 : begin data_out <= data[0]; end
                    8'b00100000 : begin data_out <= data[1]; end
                    8'b00110000 : begin data_out <= data[2]; end
                    8'b01000000 : begin data_out <= data[3]; end
                    8'b01010000 : begin data_out <= data[4]; end
                    8'b01100000 : begin data_out <= data[5]; end
                    8'b01110000 : begin data_out <= data[6]; end
                    8'b10000000 : begin data_out <= data[7]; end
                    8'b10010000 : begin data_out <= 1; tx_ready <= 1; end
                endcase
            end
        end
    end
endmodule
