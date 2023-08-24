`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/23/2023 05:47:19 PM
// Design Name: 
// Module Name: BCD_Couter
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


module BCD_Couter(
    input wire up,
    input wire down,
    input wire set9,
    input wire set0,
    input wire clock,
    output reg [3:0] A,
    output wire cout,
    output wire bout
    );
    assign cout = (A == 4'b1001) ? 1 : 0;
    assign bout = (A == 4'b0000) ? 1 : 0;
    always @(posedge clock) begin
        if(up) begin
            case (A)
                4'b1001 : A <= 0;
                default : A <= A+1;
            endcase
        end else if(down) begin
            case (A)
                4'b0000 : A <= 4'b1001;
                default : A <= A-1;
            endcase
        end else if(set9) begin
            A <= 4'b1001;
        end else if(set0) begin
            A <= 4'b0000;
        end
    end
endmodule
