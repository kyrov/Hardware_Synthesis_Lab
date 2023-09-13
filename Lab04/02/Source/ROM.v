`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/13/2023 10:56:01 PM
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
    input wire [4:0] A,
    input wire clock,
    output reg [7:0] Z
    );
    (*rom_style = "block" *) reg [7:0] mem [31:0];
    initial $readmemb("rom.mem", mem);
    always @(posedge clock) begin
        Z <= mem[A];
    end
endmodule
