`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/09/2023 08:57:41 AM
// Design Name: 
// Module Name: IDEX
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


module IDEX(clk, branchN, branchZ, jump, jumpMem, memRead, memToReg, memWrite, pcReg, aluOp, regWrt, rd, rs, rt, adder, branchNout, branchZout, jumpOut, jumpMemout, memReadout, memToRegout, memWriteout, pcRegout, aluOpout, regWrtout, rdOut, rsOut, rtOut, adderOut);

input clk;
input branchN;
input branchZ;
input jump;
input jumpMem;
input memRead;
input memToReg;
input memWrite;
input pcReg;
input [3:0] aluOp;
input regWrt;
input [5:0] rd;
input [31:0] rs;
input [31:0] rt;
input [31:0] adder;

output reg branchNout;
output reg branchZout;
output reg jumpOut;
output reg jumpMemout;
output reg memReadout;
output reg memToRegout;
output reg memWriteout;
output reg pcRegout;
output reg [3:0] aluOpout;
output reg regWrtout;
output reg [31:0] rdOut;
output reg [31:0] rsOut;
output reg [31:0] rtOut;
output reg [31:0] adderOut;

always@(posedge clk)
begin

branchNout = branchN;
branchZout = branchZ;
jumpOut = jump;
jumpMemout = jumpMem;
memReadout = memRead;
memToRegout = memToReg;
memWriteout = memWrite;
pcRegout = pcReg;
aluOpout = aluOp;
regWrtout = regWrt;
rdOut = rd;
rsOut = rs;
rtOut = rt;
adderOut = adder;

end
endmodule
