`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/18/2023 11:41:16 PM
// Design Name: 
// Module Name: Encoder
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


module Encoder(
    input wire [3:0] A,
    output reg [6:0] Z 
    );
    always @(A) begin
        case (A)
            4'b0000 : Z <= 7'b0000001;
            4'b0001 : Z <= 7'b1001111;
            4'b0010 : Z <= 7'b0010010;
            4'b0011 : Z <= 7'b0000110;
            4'b0100 : Z <= 7'b1001100;
            4'b0101 : Z <= 7'b0100100;
            4'b0110 : Z <= 7'b0100000;
            4'b0111 : Z <= 7'b0001111;
            4'b1000 : Z <= 7'b0000000;
            4'b1001 : Z <= 7'b0000100;
            4'b1010 : Z <= 7'b0001000;
            4'b1011 : Z <= 7'b1100000;
            4'b1100 : Z <= 7'b0110001;
            4'b1101 : Z <= 7'b1000010;
            4'b1110 : Z <= 7'b0110000;
            4'b1111 : Z <= 7'b0111000;
        endcase
    end
endmodule
