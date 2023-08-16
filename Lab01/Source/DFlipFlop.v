`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/16/2023 11:33:57 PM
// Design Name: 
// Module Name: DFlipFlop
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


module DFlipFlop(
    output reg q,
    input wire clock,
    input wire nreset,
    input wire d
    );
    always @(posedge clock,negedge nreset) begin
        if(nreset == 0) begin
            q <= 0;
        end else begin
            q <= d;
        end
    end
endmodule