`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/16/2023 11:54:33 PM
// Design Name: 
// Module Name: N_bit_Shift_Tester
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


module N_bit_Shift_Tester(

    );
    reg d,clock;
    wire [4:0] q;
    N_bit_Shift #(.N(4))u1(q,clock,d);
    always #10 clock=~clock;
    initial begin
        #0; d=0; clock = 0;
        #10; d=0;
        #10; d=1;
        #10; d=1;
        #10; d=1;
        #10; d=1;
        #10; d=0;
        #10; d=0;
        #10; d=1;
        #10; d=1;
        #10; d=0;
        #10; d=0;
        #10; $finish;
    end
endmodule
