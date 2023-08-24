`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/24/2023 06:59:38 PM
// Design Name: 
// Module Name: DDFFS
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


module DDFFS(
    input wire D,
    input wire clock,
    output wire Z
    );
    wire t1;
    D_FlipFlop u0(D,clock,t1);
    D_FlipFlop u1(t1,clock,Z);
endmodule
