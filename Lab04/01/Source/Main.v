`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/12/2023 02:15:38 PM
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
    input wire push,
    input wire pop,
    input wire [7:0] A,
    input wire clock,
    output wire [3:0] An,
    output wire [6:0] C_LED 
    );
    wire Push,Pop;
    reg [7:0] now;
    reg [7:0] addr = 0;
    reg [7:0] mem [255:0];
    InputBuffer i0(push,clock,Push);
    InputBuffer i1(pop,clock,Pop);
    always @(posedge clock) begin
        if(Push && addr != 256) begin
            mem[addr] <= A;
            addr <= addr + 1;
        end else if(Pop && addr != 0) begin
            now <= mem[addr-1];
            addr <= addr-1;
        end
    end
    SevenSegment(addr[3:0],addr[7:4],now[3:0],now[7:4],clock,C_LED,An);
endmodule
