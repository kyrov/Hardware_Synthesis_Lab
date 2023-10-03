`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/01/2023 06:17:35 PM
// Design Name: 
// Module Name: TestCPU
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


module TestCPU(
    );
    reg [3:0] A;
    reg [3:0] B;
    reg [3:0] OP;
    reg clock;
    wire [3:0] An;
    wire [6:0] C_LED;
    nano_sc_system cpu(A,B,OP,clock,An,C_LED);
    always #20 clock = ~clock;
    initial
    begin
    #0; clock=0; A=0; B=0; OP=0;
    #20;
    #20; A=5; B=8;
    #20;
    #20;
    #20;
    #20;
    #20;
    #20;
    #20;
    #20;
    #20;
    #20;
    #20;
    #20;
    #20;
    #20;
    #20;
    #20;
    #20;
    #20;
    #20;
    #20;
    #20;
    #20;
    #20;
    #20;
    #20;
    #20;
    #20;
    #20;
    #20;
    #20;
    #20;
    #20;
    #20;
    #20;
    #20;
    #20;
    #20;
    #20;
    #20;
    #20;
    #20;
    #20;
    #20; $finish;
    
    end
endmodule
