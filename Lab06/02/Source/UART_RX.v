`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/07/2023 06:46:15 PM
// Design Name: 
// Module Name: UART_RX
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


module UART_RX(
    input wire data_in,
    input wire clock,
    input wire reset,
    output reg [7:0] data_out,
    output reg rx_sent
    );
    reg [10:0] count; // for clock
    reg [7:0] idx;
    reg [1:0] sum;
    reg [3:0] cou;
    reg status;
    reg flag=0;
    reg last;
    always @(posedge clock) begin
        if(count == 651) begin
            count <= 0;
        end else begin
            count <= count + 1;
        end
    end
    always @(posedge clock) begin
        if(reset) begin
            data_out <= 0;
            idx <= 0;
            status <= 0;
            rx_sent <= 0;
            flag <= 0;
        end else begin
            if(status == 0) begin
                rx_sent <= 0;
                if(count == 0) begin
                    last <= data_in;
                    if(last == 0 && flag == 0) begin
                        flag <= 1;
                        idx <= 0;
                        cou <= 0;
                    end
                    if(flag == 1) begin
                        idx <= idx + 1;
                        cou <= cou + data_in;
                        if(idx == 15) begin
                            flag <= 0;
                            idx <= 0;
                            cou <= 0;
                            if(cou < 8) begin
                                status <= 1;
                            end
                        end
                    end
                end
            end else begin
                if(count == 0) begin
                    idx <= idx + 1;
                    case (idx)
                        8'b00000110 : begin sum <= sum + data_in; end 
                        8'b00001000 : begin sum <= sum + data_in; end 
                        8'b00001010 : begin sum <= 0; if(sum + data_in < 2) begin data_out[0] <= 0; end else begin data_out[0] <= 1; end end 
                        8'b00010110 : begin sum <= sum + data_in; end 
                        8'b00011000 : begin sum <= sum + data_in; end 
                        8'b00011010 : begin sum <= 0; if(sum + data_in < 2) begin data_out[1] <= 0; end else begin data_out[1] <= 1; end end
                        8'b00100110 : begin sum <= sum + data_in; end 
                        8'b00101000 : begin sum <= sum + data_in; end 
                        8'b00101010 : begin sum <= 0; if(sum + data_in < 2) begin data_out[2] <= 0; end else begin data_out[2] <= 1; end end
                        8'b00110110 : begin sum <= sum + data_in; end 
                        8'b00111000 : begin sum <= sum + data_in; end 
                        8'b00111010 : begin sum <= 0; if(sum + data_in < 2) begin data_out[3] <= 0; end else begin data_out[3] <= 1; end end
                        8'b01000110 : begin sum <= sum + data_in; end 
                        8'b01001000 : begin sum <= sum + data_in; end 
                        8'b01001010 : begin sum <= 0; if(sum + data_in < 2) begin data_out[4] <= 0; end else begin data_out[4] <= 1; end end
                        8'b01010110 : begin sum <= sum + data_in; end 
                        8'b01011000 : begin sum <= sum + data_in; end 
                        8'b01011010 : begin sum <= 0; if(sum + data_in < 2) begin data_out[5] <= 0; end else begin data_out[5] <= 1; end end
                        8'b01100110 : begin sum <= sum + data_in; end 
                        8'b01101000 : begin sum <= sum + data_in; end 
                        8'b01101010 : begin sum <= 0; if(sum + data_in < 2) begin data_out[6] <= 0; end else begin data_out[6] <= 1; end end
                        8'b01110110 : begin sum <= sum + data_in; end 
                        8'b01111000 : begin sum <= sum + data_in; end 
                        8'b01111010 : begin sum <= 0; if(sum + data_in < 2) begin data_out[7] <= 0; end else begin data_out[7] <= 1; end end
                        8'b10000000 : begin 
                            idx <= 0;
                            status <= 0; 
                            rx_sent <= 1;
                        end
                    endcase
                end
            end
        end
    end
endmodule
