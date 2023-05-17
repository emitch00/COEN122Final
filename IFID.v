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


module IFID(clk, pcIn, instIn, pcOut, instOut);
input clk;
  input [31:0] pcIn;
input [31:0] instIn;

  output reg [31:0] pcOut;
output reg [31:0] instOut;

always@(posedge clk)
begin

pcOut = pcIn;
instOut = instIn;

end
endmodule
