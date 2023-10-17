`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/16/2023 12:06:26 AM
// Design Name: 
// Module Name: InputBuffer
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


module InputBuffer(
    input wire p,
    input wire clock,
    output reg z
    );
    wire s1,s2;
    reg r1,r2;
    reg [20:0] count=0;
    DFF d0(p,clock,s1);
    DFF d1(s1,clock,s2);
    always @(posedge clock) begin
        count <= count + 1;
        if(count == 0) begin
            r1 <= s2;
        end
        r2 <= r1;
        if(r1 == 1 && r2 == 0) begin
            z <= 1;
        end else begin
            z <= 0;
        end 
    end
endmodule
