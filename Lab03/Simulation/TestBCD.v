`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/12/2023 12:33:40 PM
// Design Name: 
// Module Name: TestBCD
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


module TestBCD(
    
    );
    reg up;
    reg down;
    reg set9;
    reg set0;
    reg clock;
    wire [3:0] A;
    wire cout;
    wire bout;
    BCD u0(up,down,set9,set0,clock,A,cout,bout);
    always #10 clock = ~clock;
    initial begin
        #0; clock=0; up=0; down=0; set9=0; set0=0;
        #10; up=0; down=0; set9=0; set0=1;
        #10; up=0; down=0; set9=0; set0=1;
        #10; up=1; down=0; set9=0; set0=0;
        #10; up=1; down=0; set9=0; set0=0;
        #10; up=1; down=0; set9=0; set0=0;
        #10; up=1; down=0; set9=0; set0=0;
        #10; up=1; down=0; set9=0; set0=0;
        #10; up=1; down=0; set9=0; set0=0;
        #10; up=1; down=0; set9=0; set0=0;
        #10; up=1; down=0; set9=0; set0=0;
        #10; up=1; down=0; set9=0; set0=0;
        #10; up=1; down=0; set9=0; set0=0;
        #10; up=1; down=0; set9=0; set0=0;
        #10; up=1; down=0; set9=0; set0=0;
        #10; up=1; down=0; set9=0; set0=0;
        #10; up=1; down=0; set9=0; set0=0;
        #10; up=1; down=0; set9=0; set0=0;
        #10; up=1; down=0; set9=0; set0=0;
        #10; up=1; down=0; set9=0; set0=0;
        #10; up=1; down=0; set9=0; set0=0;
        #10; up=1; down=0; set9=0; set0=0;
        #10; up=1; down=0; set9=0; set0=0;
        #10; up=0; down=0; set9=1; set0=0;
        #10; up=0; down=0; set9=1; set0=0;
        #10; up=0; down=1; set9=0; set0=0;
        #10; up=0; down=1; set9=0; set0=0;
        #10; up=0; down=1; set9=0; set0=0;
        #10; up=0; down=1; set9=0; set0=0;
        #10; up=0; down=1; set9=0; set0=0;
        #10; up=0; down=1; set9=0; set0=0;
        #10; up=0; down=1; set9=0; set0=0;
        #10; up=0; down=1; set9=0; set0=0;
        #10; up=0; down=1; set9=0; set0=0;
        #10; up=0; down=1; set9=0; set0=0;
        #10; up=0; down=1; set9=0; set0=0;
        #10; up=0; down=1; set9=0; set0=0;
        #10; up=0; down=1; set9=0; set0=0;
        #10; up=0; down=1; set9=0; set0=0;
        #10; up=0; down=1; set9=0; set0=0;
        #10; up=0; down=1; set9=0; set0=0;
        #10; up=0; down=1; set9=0; set0=0;
        #10; up=0; down=1; set9=0; set0=0;
        #10; up=0; down=1; set9=0; set0=0;
        #10; up=0; down=1; set9=0; set0=0;
        #10; up=0; down=1; set9=0; set0=0;
        #10; up=0; down=1; set9=0; set0=0;
        #10; up=0; down=1; set9=0; set0=0;
        #10; up=0; down=1; set9=0; set0=0;
        #10; up=0; down=1; set9=0; set0=0;
        #10; up=0; down=1; set9=0; set0=0;
        #10; up=0; down=0; set9=0; set0=1;
        #10; up=0; down=0; set9=0; set0=1;
        #10; up=0; down=0; set9=1; set0=0;
        #10; $finish;
    end
endmodule
