`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/12/2023 06:45:04 PM
// Design Name: 
// Module Name: system
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


module system(
    input wire [3:0] R,G,B,
    input wire reset,
    input wire clock,
    input wire Push,H_push,V_push,
    output wire [11:0] Store_Color,
    output reg [3:0] RED,GREEN,BLUE,
    output wire HSYNC,VSYNC
    );
    wire video_on,p_tick,push,h_push,v_push;
    wire [9:0] x,y;
    reg [3:0] SR,SG,SB;
    reg status; // 0 = H , 1 = V
    assign Store_Color = {SR,SG,SB};
    InputBuffer i0(Push,clock,push);
    InputBuffer i1(H_push,clock,h_push);
    InputBuffer i2(V_push,clock,v_push);
    vga_sync s1(clock,reset,HSYNC,VSYNC,video_on,p_tick,x,y);
    always @(posedge clock) begin
        if(push) begin
            SR <= R;
            SG <= G;
            SB <= B;
        end
        if(h_push) begin
            status <= 0;
        end else if(v_push) begin
            status <= 1;
        end
    end
    always @(posedge clock) begin
        if(p_tick == 1) begin
            if(video_on) begin
                if(status == 0) begin
                    RED <= ((x*R)+((640-x)*SR))/640;
                    GREEN <= ((x*G)+((640-x)*SG))/640;
                    BLUE <= ((x*B)+((640-x)*SB))/640;
                end else begin
                    RED <= ((y*R) + ((480-y)*SR))/480;
                    GREEN <= ((y*G) + ((480-y)*SG))/480;
                    BLUE <= ((y*B) + ((480-y)*SB))/480;
                end
            end else begin
                RED <= 0;
                GREEN <= 0;
                BLUE <= 0;
            end
        end
    end
endmodule
