`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/24/2023 05:11:36 PM
// Design Name: 
// Module Name: D_FlipFlop
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


module D_FlipFlop(
    input wire D,
    input wire clock,
    output reg Q
    );
    always @(posedge clock) begin
        Q <= D;
    end
endmodule
