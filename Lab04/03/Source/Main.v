`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/13/2023 11:33:18 PM
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
    input wire [3:0] A,B,
    input wire plus,minus,mul,div,
    input wire clock,
    output wire [3:0] An,
    output wire [6:0] C_LED
    );
    wire Plus,Minus,Mul,Div;
    reg [9:0] now;
    wire [15:0] s0;
    InputBuffer i0(plus,clock,Plus);
    InputBuffer i1(minus,clock,Minus);
    InputBuffer i2(mul,clock,Mul);
    InputBuffer i3(div,clock,Div);
    ROM r0(now,clock,s0);
    SevenSegment o0(s0[15:12],s0[11:8],s0[7:4],s0[3:0],clock,C_LED,An);
    always @(posedge clock) begin
        if(Plus) begin
            now <= {A,B,2'b00};
        end else if(Minus) begin
            now <= {A,B,2'b01};
        end else if(Mul) begin
            now <= {A,B,2'b10};
        end else if(Div) begin
            now <= {A,B,2'b11};
        end
    end
endmodule
