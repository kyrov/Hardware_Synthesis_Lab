`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/12/2023 12:26:57 PM
// Design Name: 
// Module Name: BCD
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


module BCD(
    input wire up,down,set9,set0,
    input wire clock,
    output reg [3:0] A,
    output wire cout,bout
    );
    assign cout = (A == 4'b1001 && up)? 1:0;
    assign bout = (A == 4'b0000 && down)? 1:0;
    always @(posedge clock) begin
        if(up) begin
            if(A == 4'b1001) begin
                A <= 0;
            end else begin
                A <= A + 1;
            end
        end else if(down) begin
            if(A == 4'b0000) begin
                A <= 4'b1001;
            end else begin
                A <= A - 1;
            end
        end else if(set9) begin
            A <= 4'b1001;
        end else if(set0) begin
            A <= 4'b0000;
        end
    end
endmodule
