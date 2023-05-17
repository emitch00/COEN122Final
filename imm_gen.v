`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/17/2023 11:47:54 AM
// Design Name: 
// Module Name: imm_gen
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


module imm_gen(clock, const, Gen, constOut);
//rt+rs
input [11:0]const;
input clock;
//either the const will be 12 bits(rs+rt) or 6 bits(rt)
input Gen; //if Save PC (12-bit y)
output [31:0]constOut;
reg i;
reg end_copy;

always@(posedge clock)
begin
end_copy=6;
if(Gen==1)
    end_copy=12;
for(i=0; i<end_copy; i=i+1)
    constOut[i] = const[i];
//sign extension
for(i=end_copy; i<32; i=i+1)
    constOut[i] = const[end_copy-1];
end
endmodule
