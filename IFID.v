`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/09/2023 08:57:41 AM
// Design Name: 
// Module Name: IFID
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


module IFID(clk, addIn, instIn, addOut, instOut);
input clk;
input [7:0] addIn;
input [31:0] instIn;

output reg [7:0] addOut;
output reg [31:0] instOut;

always@(posedge clk)
begin

addOut = addIn;
instOut = instIn;

end
endmodule
