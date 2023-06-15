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


module pc(clock, pc, pcOut);
input [31:0]pc;
input clock;
//input [31:0]constant;
//input V;




//rippleAdder Adder(pc, constant, cout, add_PC);

output reg [31:0]pcOut;

always@(negedge clock)

 begin
if(pc==0)
    pcOut =0;
else
    pcOut = pc;
end
endmodule
