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


module IDEX(clk, branch, jump, jumpMem, memRead, memToReg, memWrite, aluSrc, regWrt, immGen, rd, rs1, rs2, PC, svpc, add, sub, inc, neg, branchOut, jumpOut, jumpMemout, memReadout, memToRegout, memWriteout, aluSrcout, regWrtout, immGenout, rdOut, rs1Out, rs2Out, PCOut, svpcOut, add_out, sub_out, inc_out, neg_out);

input clk;
input branch;
input jump;
input jumpMem;
input memRead;
input memToReg;
input memWrite;
input aluSrc;
input regWrt;
input [31:0] immGen;
input [5:0] rd;
input [5:0] rs1;
input [5:0] rs2;
input [31:0] PC;
input svpc;
input add, sub, inc, neg;

output reg branchOut;
output reg jumpOut;
output reg jumpMemout;
output reg memReadout;
output reg memToRegout;
output reg memWriteout;
output reg aluSrcout;
output reg regWrtout;
output reg [31:0] immGenout;
output reg [5:0] rdOut;
output reg [31:0] rs1Out;
output reg [31:0] rs2Out;
output reg [31:0] PCOut;
output reg svpcOut;
output reg add_out, sub_out, inc_out, neg_out;

always@(posedge clk)
begin

jumpOut = jump;
jumpMemout = jumpMem;
memReadout = memRead;
memToRegout = memToReg;
memWriteout = memWrite;
aluSrcout = aluSrc;
regWrtout = regWrt;
immGenout = immGen;
rdOut = rd;
rs1Out = rs1;
rs2Out = rs2;
PCOut = PC;
svpcOut = svpc;
add_out = add;
sub_out = sub;
inc_out = inc;
neg_out = neg;

end
endmodule
