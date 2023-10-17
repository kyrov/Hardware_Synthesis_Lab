`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/07/2023 07:15:14 PM
// Design Name: 
// Module Name: UART
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


module UART(
    input wire rx,
    input wire clock,
    input wire reset,
    output wire tx,
    output wire reset_status
    );
    wire [7:0] data_in;
    wire [7:0] mod_data;
    wire status;
    assign reset_status = reset;
    assign mod_data = data_in + 1;
    UART_RX in0(rx,clock,reset,data_in,status);
    UART_TX out0(mod_data[7:0],clock,reset,status,tx);
endmodule
