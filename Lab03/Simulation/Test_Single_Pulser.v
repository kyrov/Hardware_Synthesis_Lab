`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/12/2023 01:57:14 PM
// Design Name: 
// Module Name: Test_Single_Pulser
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


module Test_Single_Pulser(

    );
    reg P;
    reg clock;
    wire Z;
    Single_Pulser u0(P,clock,Z);
    always #10 clock = ~clock;
    initial
    begin
        #0; clock=0; P=0;
        #10; P=0;
        #10; P=1;
        #10; P=1;
        #10; P=1;
        #10; P=1;
        #10; P=1;
        #10; P=1;
        #10; P=0;
        #10; P=0;
        #10; P=1;
        #10; P=1;
        #10; P=1;
        #10; P=1;
        #10; $finish;
    end
endmodule
