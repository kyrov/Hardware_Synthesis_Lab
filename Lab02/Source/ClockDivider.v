`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/18/2023 11:26:46 PM
// Design Name: 
// Module Name: ClockDivider
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


module ClockDivider
#(
    parameter N = 5,M = 2
)
(
    input wire clock,
    output wire [M-1:0] D_clk
    );
    reg [N-1:0] count;
    assign D_clk = count[N-1:N-M];
    always @(posedge clock) begin
        count <= count + 1;
    end 
endmodule
