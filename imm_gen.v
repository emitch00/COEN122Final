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


module imm_gen(clk, signextend0out, signextend1out, Gen, constOut);
//rt+rs
input clk;
input [31:0]signextend0out;
input [31:0]signextend1out;
//input [21:0]const;
//either the const will be 12 bits(rs+rt) or 6 bits(rt)
input Gen; //if Save PC (12-bit y)
output reg [31:0]constOut;
//reg i;
//reg end_copy;
 
always@(negedge clk)
begin 
if(Gen==1)//svpc
    //constOut[21:0] = const[21:0];
    //sign_extend1 Gen1(const, constOut);
    constOut = signextend1out;

//sign extension
else//add immediate
   // constOut[15:0] = const[15:0];
    //sign_extend0 Gen0(const[15:0], constOut);
    constOut = signextend0out;

end
endmodule
