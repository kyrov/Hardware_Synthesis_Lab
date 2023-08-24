`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/23/2023 10:15:44 PM
// Design Name: 
// Module Name: Single_Pulser
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


module Single_Pulser(
    input wire P,
    input wire clock,
    output reg Z
    );
    reg tmp = 0;
    always @(posedge clock) begin
        tmp <= P;
        if(tmp == 0 && P == 1) begin
            Z <= 1;
        end else if(tmp == 1 && P == 1) begin
            Z <= 0;
        end else if(P == 0) begin
            Z <= 0;
        end
    end
endmodule
