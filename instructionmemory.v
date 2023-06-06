`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/29/2023 11:52:23 AM
// Design Name: 
// Module Name: instructionmemory
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


module instructionmemory(clk, addr, inst);
input clk;
input [7:0] addr;
output reg [31:0] inst;

wire [31:0] instruction [255:0];

assign instruction[150] = 20;
assign instruction[200] = 25;

    always@(negedge clk) begin
    inst = instruction[addr];
end
endmodule
