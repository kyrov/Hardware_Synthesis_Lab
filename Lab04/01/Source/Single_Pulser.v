`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/12/2023 02:19:27 PM
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
    reg tmp;
    always @(posedge clock) begin
        tmp <= P;
        if(tmp == 0 && P == 1) begin
            Z <= 1;
        end else begin
            Z <= 0;
        end
    end
endmodule
