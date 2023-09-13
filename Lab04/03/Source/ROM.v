`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/13/2023 11:46:02 PM
// Design Name: 
// Module Name: ROM
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


module ROM(
    input wire [9:0] A,
    input wire clock,
    output reg [15:0] Out
    );
    (*rom_style = "block" *) reg [15:0] mem [1023:0];
    initial $readmemb("rom.mem", mem);
    always @(posedge clock) begin
        Out <= mem[A];
    end
endmodule
