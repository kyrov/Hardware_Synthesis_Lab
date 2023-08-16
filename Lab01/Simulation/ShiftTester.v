`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/16/2023 11:26:12 PM
// Design Name: 
// Module Name: ShiftTester
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


module ShiftTester(

    );
    reg clock,d;
    wire [1:0] A,B;
    shiftA u1(A,clock,d);
    shiftB u2(B,clock,d);
    always #10 clock=~clock;
    initial begin
        $monitor("time %t: {%b %b} <- {%d %d}",$time,A,B,clock,d);
        #0; d=0; clock=0;
        #10; d=0;
        #10; d=1;
        #10; d=1;
        #10; d=0;
        #10; d=0;
        #10; d=1;
        #10; d=0;
        #10; d=0;
        #10; d=1;
        #20; $finish;
    end
endmodule
