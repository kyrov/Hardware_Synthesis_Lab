`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/24/2023 05:14:22 PM
// Design Name: 
// Module Name: Deboucer
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


module Deboucer(
    input wire P,
    input wire clock,
    output reg Z
    );
    reg [11:0] count;
    always @(posedge clock) begin
        count <= count + 1;
        if(count == 0) begin
            Z <= P;
        end
    end
endmodule
