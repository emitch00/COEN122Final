`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/29/2023 11:52:23 AM
// Design Name: 
// Module Name: registerfile
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


module registerfile(clk, wrt, rd, rs, rt, datain, rsout, rtout);
input clk, wrt;
input [5:0] rd;
input [5:0] rs;
input [5:0] rt;
input [31:0] datain;

output reg [31:0] rsout;
output reg [31:0] rtout;

reg [31:0] register [63:0];
//assign register[2]; //base address
//assign register[3] = ; //N-1
//do registers have initial values? (8+register*4)
initial begin
register[0] = 2;
register[1] = 3;
register[2] = 4;
register[3] = 5;
register[4] = 6;
register[5] = 7;
register[10] = 10;


end
always@(negedge clk) begin
    if(wrt == 1)
        register[rd] = datain;
    
    rsout = register[rs];
    rtout = register[rt];
end
endmodule
