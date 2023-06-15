`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/09/2023 02:55:49 PM
// Design Name: 
// Module Name: sign_extend0
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


module sign_extend0(in, out);
input [5:0]in;
output reg [31:0]out;

initial begin
if(in[5] == 1)
    out = {26'b11111111111111111111111111, in};

else
    out = {26'b00000000000000000000000000, in};
end
endmodule
