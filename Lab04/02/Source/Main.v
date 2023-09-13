`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/13/2023 10:56:01 PM
// Design Name: 
// Module Name: Main
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


module Main(
    input wire [4:0] A,
    input wire clock,
    output wire [3:0] An,
    output wire [6:0] C_LED
    );
    wire [3:0] s0,s1;
    ROM u0(A,clock,{s1,s0});
    SevenSegment(s1,s0,clock,C_LED,An);
endmodule
