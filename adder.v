`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/10/2023 03:42:09 PM
// Design Name: 
// Module Name: adder
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


module one_bitAdder(a, b, cin, cout, out);

input a, b, cin;

wire xorwire1;
wire andwire1, andwire2;

output cout, out;

//Logic
xor(xorwire1, a, b);
xor(out, xorwire1, cin);

and(andwire1, cin, xorwire1);
and(andwire2, a, b);
or(cout, andwire1, andwire2);

endmodule

module rippleAdder(a, b, cout, out);

input [31:0] a;
input [31:0] b;

wire [30:0] c;

output cout;
output [31:0] out;

one_bitAdder one (a[0],b[0],1'b0,c[0],out[0]);
one_bitAdder two (a[1],b[1],c[0],c[1],out[1]);
one_bitAdder three (a[2],b[2],c[1],c[2],out[2]);
one_bitAdder four (a[3],b[3],c[2],c[3],out[3]);
one_bitAdder five (a[4],b[4],c[3],c[4],out[4]);
one_bitAdder six (a[5],b[5],c[4],c[5],out[5]);
one_bitAdder seven (a[6],b[6],c[5],c[6],out[6]);
one_bitAdder eight (a[7],b[7],c[6],c[7],out[7]);
one_bitAdder nine (a[8],b[8],c[7],c[8],out[8]);
one_bitAdder ten (a[9],b[9],c[8],c[9],out[9]);
one_bitAdder eleven (a[10],b[10],c[9],c[10],out[10]);
one_bitAdder twelve (a[11],b[11],c[10],c[11],out[11]);
one_bitAdder thirteen (a[12],b[12],c[11],c[12],out[12]);
one_bitAdder fourteen (a[13],b[13],c[12],c[13],out[13]);
one_bitAdder fifteen (a[14],b[14],c[13],c[14],out[14]);
one_bitAdder sixteen (a[15],b[15],c[14],c[15],out[15]);
one_bitAdder seventeen (a[16],b[16],c[15],c[16],out[16]);
one_bitAdder eighteen (a[17],b[17],c[16],c[17],out[17]);
one_bitAdder nineteen (a[18],b[18],c[17],c[18],out[18]);
one_bitAdder twenty (a[19],b[19],c[18],c[19],out[19]);
one_bitAdder twentyone (a[20],b[20],c[19],c[20],out[20]);
one_bitAdder twentytwo (a[21],b[21],c[20],c[21],out[21]);
one_bitAdder twentythree (a[22],b[22],c[21],c[22],out[22]);
one_bitAdder twentyfour (a[23],b[23],c[22],c[23],out[23]);
one_bitAdder twentyfive (a[24],b[24],c[23],c[24],out[24]);
one_bitAdder twentysix (a[25],b[25],c[24],c[25],out[25]);
one_bitAdder twentyseven (a[26],b[26],c[25],c[26],out[26]);
one_bitAdder twentyeight (a[27],b[27],c[26],c[27],out[27]);
one_bitAdder twentynine (a[28],b[28],c[27],c[28],out[28]);
one_bitAdder thirty (a[29],b[29],c[28],c[29],out[29]);
one_bitAdder thirtyone (a[30],b[30],c[29],c[30],out[30]);
one_bitAdder thirtytwo (a[31],b[31],c[30],cout,out[31]);

endmodule