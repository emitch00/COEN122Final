`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/09/2023 08:57:41 AM
// Design Name: 
// Module Name: EXWB
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



module EXWB(clk, branchN, branchZ, N, Z, jump, jumpMem, memToReg, pcReg, alu, dataMem, regWrt, rd, adder, branchNout, branchZout, Nout, Zout, jumpOut, jumpMemout, memToRegout, pcRegout, aluOut, dataMemout, regWrtout, rdOut, adderOut);
input clk;
input branchN;
input branchZ;
input N;
input Z;
input jump;
input jumpMem;
input memToReg;
input pcReg;
input [31:0] alu;
input [31:0] dataMem;
input regWrt;
input [5:0] rd;
input [31:0] adder;

output reg branchNout;
output reg branchZout;
output reg Nout;
output reg Zout;
output reg jumpOut;
output reg jumpMemout;
output reg memToRegout;
output reg pcRegout;
output reg [31:0] aluOut;
output reg [31:0] dataMemout;
output reg regWrtout;
output reg [5:0] rdOut;
output reg [31:0] adderOut;

always@(posedge clk)
begin

branchNout = branchN;
branchZout = branchZ;
Nout = N;
Zout = Z;
jumpOut = jump;
jumpMemout = jumpMem;
memToRegout = memToReg;
pcRegout = pcReg;
aluOut = alu;
dataMemout = dataMem;
regWrtout = regWrt;
rdOut = rd;
adderOut = adder;

end
endmodule