`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/17/2023 06:07:03 PM
// Design Name: 
// Module Name: 4to1mux
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

//define variables
module four_to_one_mux(d0, d1, d2, d3, sel, out);
//define 4 data inputs
input d0, d1, d2, d3;

//define select with 2 bits
input [1:0] sel;

//define wires
wire [1:0]notwire;
wire [3:0]andwire;

//define 1 output
output out;

//not gate logic
not(notwire[0], sel[0]);
not(notwire[1], sel[1]);

//and gate logic
and(andwire[0], d0, notwire[1], notwire[0]);
and(andwire[1], d1, notwire[1], sel[0]);
and(andwire[2], d2, sel[1], notwire[0]);
and(andwire[3], d3, sel[1], sel[0]);

//or gate logic
or(out, andwire[0], andwire[1], andwire[2], andwire[3]);

//reg n0, n1, a0, a1, a2, a3;

/*always @(d0, d1, d2, d3, sel)
begin
    n0 = ~sel[0];
    n1 = ~sel[1];
    
    a0 = d0 & n1 & n0;
    a1 = d1 & n1 & sel[0];
    a2 = d2 & sel[1] & n0;
    a3 = d3 & sel[1] & sel[0];
    
    out = a0 | a1 | a2 | a3;
    
end*/
endmodule
