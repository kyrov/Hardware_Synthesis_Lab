`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/22/2023 08:15:57 PM
// Design Name: 
// Module Name: Main
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


module Main(
    input wire set9,
    input wire reset,
    input wire up1,
    input wire down1,
    input wire up10,
    input wire down10,
    input wire up100,
    input wire down100,
    input wire up1000,
    input wire down1000,
    input wire clock,
    output wire [3:0] An,
    output wire [6:0] Ca
    );
    wire Up1,Up10,Up100,Up1000;
    wire Down1,Down10,Down100,Down1000;
    wire Set9,Reset;
    wire [3:0] cout,bout;
    wire [3:0] A,B,C,D;
    wire [3:0] BCD_Up,BCD_Down;
    wire up1_s,up10_s,up100_s,up1000_s;
    wire down1_s,down10_s,down100_s,down1000_s;
    wire set9_s,reset_s;
    wire up1_sd,up10_sd,up100_sd,up1000_sd;
    wire down1_sd,down10_sd,down100_sd,down1000_sd;
    wire set9_sd,reset_sd;
    DDFFS s0(up1,clock,up1_s);
    DDFFS s1(up10,clock,up10_s);
    DDFFS s2(up100,clock,up100_s);
    DDFFS s3(up1000,clock,up1000_s);
    DDFFS s4(down1,clock,down1_s);
    DDFFS s5(down10,clock,down10_s);
    DDFFS s6(down100,clock,down100_s);
    DDFFS s7(down1000,clock,down1000_s);
    DDFFS s8(set9,clock,set9_s);
    DDFFS s9(reset,clock,reset_s);
    Deboucer d0(up1_s,clock,up1_sd);
    Deboucer d1(up10_s,clock,up10_sd);
    Deboucer d2(up100_s,clock,up100_sd);
    Deboucer d3(up1000_s,clock,up1000_sd);
    Deboucer d4(down1_s,clock,down1_sd);
    Deboucer d5(down10_s,clock,down10_sd);
    Deboucer d6(down100_s,clock,down100_sd);
    Deboucer d7(down1000_s,clock,down1000_sd);
    Deboucer d8(set9_s,clock,set9_sd);
    Deboucer d9(reset_s,clock,reset_sd);
    Single_Pulser u0(up1_sd,clock,Up1);
    Single_Pulser u1(up10_sd,clock,Up10);
    Single_Pulser u2(up100_sd,clock,Up100);
    Single_Pulser u3(up1000_sd,clock,Up1000);
    Single_Pulser u4(down1_sd,clock,Down1);
    Single_Pulser u5(down10_sd,clock,Down10);
    Single_Pulser u6(down100_sd,clock,Down100);
    Single_Pulser u7(down1000_sd,clock,Down1000);
    Single_Pulser u8(set9_sd,clock,Set9);
    Single_Pulser u9(reset_sd,clock,Reset);
    assign BCD_Up[0] = (Up1 && (cout != 4'b1111)) ? 1 : 0;
    assign BCD_Up[1] = (Up10 && (cout[3:1] != 3'b111)) ? 1 :
                       (BCD_Up[0] && (cout[0] == 1)) ? 1 : 0;
    assign BCD_Up[2] = (Up100 && (cout[3:2] != 2'b11)) ? 1 :
                       (BCD_Up[1] && (cout[1] == 1)) ? 1 :
                       (BCD_Up[0] && (cout[1:0] == 2'b11)) ? 1 : 0;
    assign BCD_Up[3] = (Up1000 && (cout[3] != 1)) ? 1 :
                       (BCD_Up[2] && (cout[2] == 1)) ? 1 :
                       (BCD_Up[1] && (cout[2:1] == 2'b11)) ? 1 :
                       (BCD_Up[0] && (cout[2:0] == 3'b111)) ? 1 : 0;
    assign BCD_Down[0] = (Down1 && (bout != 4'b1111)) ? 1 : 0;
    assign BCD_Down[1] = (Down10 && (bout[3:1] != 3'b111)) ? 1 :
                         (BCD_Down[0] && bout[0]) ? 1 : 0;
    assign BCD_Down[2] = (Down100 && (bout[3:2] != 2'b11)) ? 1 :
                         (BCD_Down[1] && (bout[1])) ? 1 :
                         (BCD_Down[0] && (bout[1:0] == 2'b11)) ? 1 : 0;
    assign BCD_Down[3] = (Down1000 && (bout[3] == 0)) ? 1 :
                         (BCD_Down[2] && (bout[2])) ? 1 :
                         (BCD_Down[1] && (bout[2:1] == 2'b11)) ? 1 :
                         (BCD_Down[0] && (bout[2:0] == 3'b111)) ? 1 : 0;
    BCD_Couter v0(BCD_Up[0],BCD_Down[0],Set9,Reset,clock,A,cout[0],bout[0]);
    BCD_Couter v1(BCD_Up[1],BCD_Down[1],Set9,Reset,clock,B,cout[1],bout[1]);
    BCD_Couter v2(BCD_Up[2],BCD_Down[2],Set9,Reset,clock,C,cout[2],bout[2]);
    BCD_Couter v3(BCD_Up[3],BCD_Down[3],Set9,Reset,clock,D,cout[3],bout[3]);
    SevenSegment #(20)o0(A,B,C,D,clock,Ca,An);
endmodule
