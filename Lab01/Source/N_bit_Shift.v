`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/16/2023 11:44:46 PM
// Design Name: 
// Module Name: N_bit_Shift
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


module N_bit_Shift
#(
    parameter N = 2
)
(
    output reg [N-1:0] q,
    input wire clock,
    input wire d
);
always @(posedge clock) begin
    q[N-1:1] <= q[N-2:0];
    q[0] <= d;
end
endmodule
