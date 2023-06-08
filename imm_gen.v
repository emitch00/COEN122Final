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


module imm_gen(const, Gen, constOut);
//rt+rs
input [11:0]const;
//either the const will be 12 bits(rs+rt) or 6 bits(rt)
input Gen; //if Save PC (12-bit y)
output reg [31:0]constOut;
reg i;
reg end_copy;

initial begin 
end_copy=6;
if(Gen==1)
    end_copy=12;
for(i=0; i<end_copy; i=i+1)begin
    constOut[i] = const[i];
 end
//sign extension
for(i=end_copy; i<32; i=i+1)begin
    constOut[i] = const[end_copy-1];
end
end
endmodule
