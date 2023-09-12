`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/12/2023 12:46:11 PM
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
    input wire [3:0] up,down,
    input wire set9,reset,
    input wire clock,
    output wire [3:0] An,
    output wire [6:0] C_LED
    );
    wire Up[3:0],Down[3:0];
    wire Set9,Reset;
    wire [3:0] sup,sdn;
    wire Cout[3:0],Bout[3:0];
    wire [3:0] A,B,C,D;
    InputBuffer i0(up[0],clock,Up[0]);
    InputBuffer i1(up[1],clock,Up[1]);
    InputBuffer i2(up[2],clock,Up[2]);
    InputBuffer i3(up[3],clock,Up[3]);
    InputBuffer i4(down[0],clock,Down[0]);
    InputBuffer i5(down[1],clock,Down[1]);
    InputBuffer i6(down[2],clock,Down[2]);
    InputBuffer i7(down[3],clock,Down[3]);
    InputBuffer i8(set9,clock,Set9);
    InputBuffer i9(reset,clock,Reset);
    assign sup[0] = (((A!=9)|| (B!=9) || (C!=9) || (D!=9)) && Up[0])? 1:0;
    assign sup[1] = (((B!=9) || (C!=9) || (D!=9)) && (Up[1] || Cout[0]))? 1:0;
    assign sup[2] = (((C!=9) || (D!=9)) && (Up[2] || Cout[1]))? 1:0;
    assign sup[3] = ((D!=9) && (Up[3] || Cout[2]))? 1:0;
    assign sdn[0] = (((A!=0) || (B!=0) || (C!=0) || (D!=0)) && Down[0])? 1:0;
    assign sdn[1] = (((B!=0) || (C!=0) || (D!=0)) && (Down[1] || Bout[0]))? 1:0;
    assign sdn[2] = (((C!=0) || (D!=0)) && (Down[2] || Bout[1]))? 1:0;
    assign sdn[3] = ((D!=0) && (Down[3] || Bout[2]))? 1:0;
    BCD u0(sup[0],sdn[0],Set9,Reset,clock,A,Cout[0],Bout[0]);
    BCD u1(sup[1],sdn[1],Set9,Reset,clock,B,Cout[1],Bout[1]);
    BCD u2(sup[2],sdn[2],Set9,Reset,clock,C,Cout[2],Bout[2]);
    BCD u3(sup[3],sdn[3],Set9,Reset,clock,D,Cout[3],Bout[3]);
    SevenSegment o0(A,B,C,D,clock,C_LED,An);
endmodule
