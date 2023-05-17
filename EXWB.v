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



module EXWB(clk, memToReg, dataMem, regWrt, rd, adder, svpc, memToRegout, dataMemout, regWrtout, rdOut, adderOut, svpcOut);
input clk;
input memToReg;
input [31:0] dataMem;
input regWrt;
input [4:0] rd;
input [31:0] adder;
input svpc;

output reg memToRegout;
output reg [31:0] dataMemout;
output reg regWrtout;
output reg [4:0] rdOut;
output reg [31:0] adderOut;
output reg svpcOut;

always@(posedge clk)
begin

memToRegout = memToReg;
dataMemout = dataMem;
regWrtout = regWrt;
rdOut = rd;
adderOut = adder;
svpcOut = svpc;

end
endmodule
