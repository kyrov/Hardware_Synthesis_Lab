`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/16/2023 11:37:02 PM
// Design Name: 
// Module Name: testDFlipFlop
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


module testDFlipFlop(

    );
    reg clock, nreset, d;
    wire q;
    DFlipFlop D1(q,clock,nreset,d);
    always #10 clock = ~clock;
    initial begin
    #0; d=0; nreset=0; clock=0;
    #10; d=0; nreset=1;
    #10; d=1; nreset=1;
    #10; d=1; nreset=1;
    #10; d=0; nreset=1;
    #10; d=0; nreset=1;
    #10; d=1; nreset=1;
    #10; d=1; nreset=1;
    #2; d=1; nreset=0;
    #8; d=1; nreset=0;
    #10; d=1; nreset=1;
    #10; $finish;
    end
endmodule
