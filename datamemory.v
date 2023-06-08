`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/29/2023 11:52:23 AM
// Design Name: 
// Module Name: datamemory
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


module datamemory(clk, rd, wrt, addr, datain, dataout);
input clk, rd, wrt;
input [31:0] addr;
input [31:0] datain;

output reg [31:0] dataout;

reg [31:0] data [65536:0];

initial begin
data[2] = 3;
data[3] = -4;
data[4] = 5;
data[5] = 2;
data[6] = 20;
end

always@(negedge clk) begin
    if(wrt == 1)
        data[addr[15:0]] = datain;
    
    if(rd == 1)
        dataout = data[addr[15:0]];
end
endmodule
