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


module pc(pc, constant,V, pcOut);
input [31:0]pc;
input [31:0]constant;
input V;

wire cout;
wire [31:0]add_PC;

rippleAdder Adder(pc, constant, cout, add_PC);

output reg [31:0]pcOut;

initial begin
if(V==0)
    pcOut =0;
else
    pcOut = add_PC;
end
endmodule
