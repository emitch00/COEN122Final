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


module IDEX(clk, branch, jump, jumpMem, memRead, memToReg, memWrite, aluSrc, regWrt, aluOp, immGen, rd, rs1, rs2, pcOut, svpc, branchOut, jumpOut, jumpMemout, memReadout, memToRegout, memWriteout, aluSrcout, regWrtout, aluOpout, immGenout, rdOut, rs1Out, rs2Out, pcOut, svpcOut);

input clk;
input branch;
input jump;
input jumpMem;
input memRead;
input memToReg;
input memWrite;
input aluSrc;
input regWrt;
input [3:0] aluOp;
input [31:0] immGen;
input [4:0] rd;
input [31:0] rs1;
input [31:0] rs2;
input [31:0] pcOut;
input svpc;

output reg branchOut;
output reg jumpOut;
output reg jumpMemout;
output reg memReadout;
output reg memToRegout;
output reg memWriteout;
output reg aluSrcout;
output reg regWrtout;
output reg [3:0] aluOpout;
output reg [31:0] immGenout;
output reg [4:0] rdOut;
output reg [31:0] rs1Out;
output reg [31:0] rs2Out;
output reg [31:0] pcOut;
output reg svpcOut;

always@(posedge clk)
begin

branchNout = branchN;
branchZout = branchZ;
jumpOut = jump;
jumpMemout = jumpMem;
memReadout = memRead;
memToRegout = memToReg;
memWriteout = memWrite;
aluSrcout = aluSrc;
regWrtout = regWrt;
aluOpout = aluOp;
immGenout = immGen;
rdOut = rd;
rs1Out = rs1;
rs2Out = rs2;
pcOut = pc;
svpcOut = svpc;

end
endmodule
