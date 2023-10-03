`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/29/2023 10:45:26 PM
// Design Name: 
// Module Name: ALU_Tester
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


module ALU_Tester(
    );
    reg [31:0] A;
    reg [31:0] B;
    reg Cin;
    reg [2:0] alu_ops;
    wire [31:0] S;
    wire z;
    wire Cout;
    alu u0(S,z,Cout,A,B,Cin,alu_ops);
    initial
    begin
    #0; A=50; B=20; Cin=0; alu_ops=0;
    #10; A=50; B=80; Cin=1; alu_ops=0;
    #10; A=100; B=100; Cin=1; alu_ops=0;
    #10; A=50; B=20; Cin=0; alu_ops=1;
    #10; A=50; B=80; Cin=1; alu_ops=1;
    #10; A=100; B=100; Cin=1; alu_ops=1;
    #0; A=1; B=1; Cin=0; alu_ops=2;
    #10; A=50; B=80; Cin=1; alu_ops=2;
    #10; A=0; B=0; Cin=0; alu_ops=2;
    #0; A=1; B=1; Cin=0; alu_ops=3;
    #10; A=0; B=0; Cin=0; alu_ops=3;
    #10; A=100; B=100; Cin=1; alu_ops=3;
    #0; A=50; B=20; Cin=0; alu_ops=4;
    #10; A=50; B=80; Cin=1; alu_ops=4;
    #10; A=100; B=100; Cin=1; alu_ops=4;
    #0; A=50; B=20; Cin=0; alu_ops=5;
    #10; A=50; B=80; Cin=1; alu_ops=5;
    #10; A=100; B=100; Cin=1; alu_ops=5;
    #0; A=50; B=20; Cin=0; alu_ops=6;
    #10; A=50; B=80; Cin=1; alu_ops=6;
    #10; A=100; B=100; Cin=1; alu_ops=6;
    #0; A=50; B=20; Cin=0; alu_ops=7;
    #10; A=50; B=80; Cin=1; alu_ops=7;
    #10; A=100; B=100; Cin=1; alu_ops=7;
    #50; $finish;
    end
endmodule
