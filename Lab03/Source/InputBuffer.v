`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/12/2023 12:41:58 PM
// Design Name: 
// Module Name: InputBuffer
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


module InputBuffer(
    input wire P,
    input wire clock,
    output wire Z
    );
    wire s0,s1,s2;
    DFF u0(P,clock,s0);
    DFF u1(s0,clock,s1);
    Deboucer u2(s1,clock,s2);
    Single_Pulser u3(s2,clock,Z);
endmodule
