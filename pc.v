`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/10/2023 03:36:01 PM
// Design Name: 
// Module Name: pc
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


module pc(clk, pc, constant, pcOut);
input clk;
input pc;
input constant;

wire cout;

output reg pcOut;

always@(posedge clk)
begin
rippleAdder (pc, constant, cout, pc);
end
endmodule
