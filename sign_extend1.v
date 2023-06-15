`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/09/2023 02:50:55 PM
// Design Name: 
// Module Name: sign_extend1
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


module sign_extend1(in, out);
input [11:0]in;
output reg [31:0]out;
reg i;
initial begin
if(in[11] == 1)
    out = {20'b11111111111111111111, in};

    else 
    out = {20'b00000000000000000000, in};
end
endmodule
