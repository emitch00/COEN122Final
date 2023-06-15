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



module EXWB(clk, memToReg, dataMem, ALU, regWrt, rd, adder, svpc, memToRegout, dataMemout, ALUout, regWrtout, rdOut, adderOut, svpcOut);
input clk;
input memToReg;
input [31:0] dataMem;
input [31:0] ALU;
input regWrt;
input [5:0] rd;
input [31:0] adder;
input svpc;

output reg memToRegout;
output reg [31:0] dataMemout;
output reg [31:0] ALUout;
output reg regWrtout;
output reg [5:0] rdOut;
output reg [31:0] adderOut;
output reg svpcOut;

always@(posedge clk)
begin

memToRegout = memToReg;
dataMemout = dataMem;
ALUout = ALU;
regWrtout = regWrt;
rdOut = rd;
adderOut = adder;
svpcOut = svpc;

end
endmodule
