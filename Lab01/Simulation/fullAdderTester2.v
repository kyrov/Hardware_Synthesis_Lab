`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/16/2023 10:31:20 PM
// Design Name: 
// Module Name: fullAdderTester2
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


module fullAdderTester2(

    );
    reg a,b,cin;
    wire cout,s;
    fullAdder2 u1(cout,s,a,b,cin);
    initial begin
        $monitor("time %t: {%b %b} <- {%d %d %d}",$time,cout,s,a,b,cin);
        #0; a=0; b=0; cin=0;
        #10; a=0; b=0; cin=1;
        #10; a=0; b=1; cin=0;
        #10; a=0; b=1; cin=1;
        #10; a=1; b=0; cin=0;
        #10; a=1; b=0; cin=1;
        #10; a=1; b=1; cin=0;
        #10; a=1; b=1; cin=1;
        #20; $finish;
    end
endmodule
