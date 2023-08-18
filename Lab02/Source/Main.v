`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/18/2023 11:17:28 PM
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
    output wire [6:0] C_LED,
    output reg [3:0] A_LED,
    input wire [15:0] In,
    input wire clock 
    );
    reg [3:0] Nin;
    wire [1:0] clk;
    ClockDivider #(.N(20),.M(2)) u0(clock,clk);
    Encoder u1(Nin,C_LED);
    always @(clk) begin
        case (clk)
            2'b00 : begin A_LED <= 4'b1110; Nin <= In[3:0]; end
            2'b01 : begin A_LED <= 4'b1101; Nin <= In[7:4]; end
            2'b10 : begin A_LED <= 4'b1011; Nin <= In[11:8]; end
            2'b11 : begin A_LED <= 4'b0111; Nin <= In[15:12]; end
        endcase
    end
endmodule
