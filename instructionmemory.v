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

//how do we get binary instruction in and out
module instructionmemory(clk, addr, inst);
input clk;
input [31:0] addr;
output reg [31:0] inst;

wire [31:0] instruction [255:0];

//change assigns to our instructions
assign instruction[0] = 32'b01110001000001000001000000000000; //sub
assign instruction[1] = 32'b01000001010000100000110000000000; //add
assign instruction[2] = 32'b11110010010000000000010000000000; //SVPC 
assign instruction[3] = 32'b11100001100000100000000000000000; //LD
assign instruction[4] = 32'b00000000000000000000000000000000; //NOP
assign instruction[5] = 32'b00000000000000000000000000000000; //NOP
assign instruction[6] = 32'b01000001000001000001100000000000; //ADD
assign instruction[7] = 32'b01010000100000100000010000000000; //INC
assign instruction[8] = 32'b00000000000000000000000000000000; //NOP
assign instruction[9] = 32'b01110010000000100001010000000000; //SUB
assign instruction[10] = 32'b10110000000010010000000000000000; //BRN
assign instruction[11] = 32'b00000000000000000000000000000000; //NOP
assign instruction[12] = 32'b00000000000000000000000000000000; //NOP
assign instruction[13] = 32'b00000000000000000000000000000000; //NOP

always@(negedge clk) begin
    inst = instruction[addr];
end
endmodule
