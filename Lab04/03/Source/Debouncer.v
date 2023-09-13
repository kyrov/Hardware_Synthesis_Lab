`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/13/2023 11:38:50 PM
// Design Name: 
// Module Name: Debouncer
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


module Debouncer(
    input wire P,
    input wire clock,
    output reg Z
    );
    reg [20:0] count;
    always @(posedge clock) begin
        count <= count + 1;
        if(count == 0) begin
            Z <= P;
        end
    end
endmodule
