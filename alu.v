`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/19/2023 02:42:15 PM
// Design Name: 
// Module Name: alu
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


module two_oneMux(b, sel, out);

input [31:0] b;
input sel;

wire notwire;
wire [31:0] andwire1;
wire [31:0] andwire2;

output [31:0] out;

//Not gate applies to all bits of B
not(notwire, sel);

//B0
and(andwire1[0], b[0], notwire);
and(andwire2[0], sel, 0);
or(out[0], andwire1[0], andwire2[0]);

//B1
and(andwire1[1], b[1], notwire);
and(andwire2[1], sel, 0);
or(out[1], andwire1[1], andwire2[1]);

//B2
and(andwire1[2], b[2], notwire);
and(andwire2[2], sel, 0);
or(out[2], andwire1[2], andwire2[2]);

//B3
and(andwire1[3], b[3], notwire);
and(andwire2[3], sel, 0);
or(out[3], andwire1[3], andwire2[3]);

//B4
and(andwire1[4], b[4], notwire);
and(andwire2[4], sel, 0);
or(out[4], andwire1[4], andwire2[4]);

//B5
and(andwire1[5], b[5], notwire);
and(andwire2[5], sel, 0);
or(out[5], andwire1[5], andwire2[5]);

//B6
and(andwire1[6], b[6], notwire);
and(andwire2[6], sel, 0);
or(out[6], andwire1[6], andwire2[6]);

//B7
and(andwire1[7], b[7], notwire);
and(andwire2[7], sel, 0);
or(out[7], andwire1[7], andwire2[7]);

//B8
and(andwire1[8], b[8], notwire);
and(andwire2[8], sel, 0);
or(out[8], andwire1[8], andwire2[8]);

//B9
and(andwire1[9], b[9], notwire);
and(andwire2[9], sel, 0);
or(out[9], andwire1[9], andwire2[9]);

//B10
and(andwire1[10], b[10], notwire);
and(andwire2[10], sel, 0);
or(out[10], andwire1[10], andwire2[10]);

//B11
and(andwire1[11], b[11], notwire);
and(andwire2[11], sel, 0);
or(out[11], andwire1[11], andwire2[11]);

//B12
and(andwire1[12], b[12], notwire);
and(andwire2[12], sel, 0);
or(out[12], andwire1[12], andwire2[12]);

//B13
and(andwire1[13], b[13], notwire);
and(andwire2[13], sel, 0);
or(out[13], andwire1[13], andwire2[13]);

//B14
and(andwire1[14], b[14], notwire);
and(andwire2[14], sel, 0);
or(out[14], andwire1[14], andwire2[14]);

//B15
and(andwire1[15], b[15], notwire);
and(andwire2[15], sel, 0);
or(out[15], andwire1[15], andwire2[15]);

//B16
and(andwire1[16], b[16], notwire);
and(andwire2[16], sel, 0);
or(out[16], andwire1[16], andwire2[16]);

//B17
and(andwire1[17], b[17], notwire);
and(andwire2[17], sel, 0);
or(out[17], andwire1[17], andwire2[17]);

//B18
and(andwire1[18], b[18], notwire);
and(andwire2[18], sel, 0);
or(out[18], andwire1[18], andwire2[18]);

//B19
and(andwire1[19], b[19], notwire);
and(andwire2[19], sel, 0);
or(out[19], andwire1[19], andwire2[19]);

//B20
and(andwire1[20], b[20], notwire);
and(andwire2[20], sel, 0);
or(out[20], andwire1[20], andwire2[20]);

//B21
and(andwire1[21], b[21], notwire);
and(andwire2[21], sel, 0);
or(out[21], andwire1[21], andwire2[21]);

//B22
and(andwire1[22], b[22], notwire);
and(andwire2[22], sel, 0);
or(out[22], andwire1[22], andwire2[22]);

//B23
and(andwire1[23], b[23], notwire);
and(andwire2[23], sel, 0);
or(out[23], andwire1[23], andwire2[23]);

//B24
and(andwire1[24], b[24], notwire);
and(andwire2[24], sel, 0);
or(out[24], andwire1[24], andwire2[24]);

//B25
and(andwire1[25], b[25], notwire);
and(andwire2[25], sel, 0);
or(out[25], andwire1[25], andwire2[25]);

//B26
and(andwire1[26], b[26], notwire);
and(andwire2[26], sel, 0);
or(out[26], andwire1[26], andwire2[26]);

//B27
and(andwire1[27], b[27], notwire);
and(andwire2[27], sel, 0);
or(out[27], andwire1[27], andwire2[27]);

//B28
and(andwire1[28], b[28], notwire);
and(andwire2[28], sel, 0);
or(out[28], andwire1[28], andwire2[28]);

//B29
and(andwire1[29], b[29], notwire);
and(andwire2[29], sel, 0);
or(out[29], andwire1[29], andwire2[29]);

//B30
and(andwire1[30], b[30], notwire);
and(andwire2[30], sel, 0);
or(out[30], andwire1[30], andwire2[30]);

//B31
and(andwire1[31], b[31], notwire);
and(andwire2[31], sel, 0);
or(out[31], andwire1[31], andwire2[31]);

endmodule

module three_oneMux(a, negA, sel, out);

input [31:0] a;
input [31:0] negA;
input [1:0] sel;

wire [1:0] notwire;
wire [31:0] andwire1;
wire [31:0] andwire2;
wire [31:0] andwire3;

output [31:0] out;

//Not gate applies to all bits of A & -A
not(notwire[0], sel[0]);
not(notwire[1], sel[1]);

//A0 & -A0
and(andwire1[0], a[0], notwire[0], notwire[1]);
and(andwire2[0], sel[0], notwire[1], 1);
and(andwire3[0], negA[0], notwire[0], sel[1]);
or(out[0], andwire1[0], andwire2[0], andwire3[0]);

//A1 & -A1
and(andwire1[1], a[1], notwire[0], notwire[1]);
and(andwire2[1], sel[0], notwire[1], 0);
and(andwire3[1], negA[1], notwire[0], sel[1]);
or(out[1], andwire1[1], andwire2[1], andwire3[1]);

//A2 & -A2
and(andwire1[2], a[2], notwire[0], notwire[1]);
and(andwire2[2], sel[0], notwire[1], 0);
and(andwire3[2], negA[2], notwire[0], sel[1]);
or(out[2], andwire1[2], andwire2[2], andwire3[2]);

//A3 & -A3
and(andwire1[3], a[3], notwire[0], notwire[1]);
and(andwire2[3], sel[0], notwire[1], 0);
and(andwire3[3], negA[3], notwire[0], sel[1]);
or(out[3], andwire1[3], andwire2[3], andwire3[3]);

//A4 & -A4
and(andwire1[4], a[4], notwire[0], notwire[1]);
and(andwire2[4], sel[0], notwire[1], 0);
and(andwire3[4], negA[4], notwire[0], sel[1]);
or(out[4], andwire1[4], andwire2[4], andwire3[4]);

//A5 & -A5
and(andwire1[5], a[5], notwire[0], notwire[1]);
and(andwire2[5], sel[0], notwire[1], 0);
and(andwire3[5], negA[5], notwire[0], sel[1]);
or(out[5], andwire1[5], andwire2[5], andwire3[5]);

//A6 & -A6
and(andwire1[6], a[6], notwire[0], notwire[1]);
and(andwire2[6], sel[0], notwire[1], 0);
and(andwire3[6], negA[6], notwire[0], sel[1]);
or(out[6], andwire1[6], andwire2[6], andwire3[6]);

//A7 & -A7
and(andwire1[7], a[7], notwire[0], notwire[1]);
and(andwire2[7], sel[0], notwire[1], 0);
and(andwire3[7], negA[7], notwire[0], sel[1]);
or(out[7], andwire1[7], andwire2[7], andwire3[7]);

//A8 & -A8
and(andwire1[8], a[8], notwire[0], notwire[1]);
and(andwire2[8], sel[0], notwire[1], 0);
and(andwire3[8], negA[8], notwire[0], sel[1]);
or(out[8], andwire1[8], andwire2[8], andwire3[8]);

//A9 & -A9
and(andwire1[9], a[9], notwire[0], notwire[1]);
and(andwire2[9], sel[0], notwire[1], 0);
and(andwire3[9], negA[9], notwire[0], sel[1]);
or(out[9], andwire1[9], andwire2[9], andwire3[9]);

//A10 & -A10
and(andwire1[10], a[10], notwire[0], notwire[1]);
and(andwire2[10], sel[0], notwire[1], 0);
and(andwire3[10], negA[10], notwire[0], sel[1]);
or(out[10], andwire1[10], andwire2[10], andwire3[10]);

//A11 & -A11
and(andwire1[11], a[11], notwire[0], notwire[1]);
and(andwire2[11], sel[0], notwire[1], 0);
and(andwire3[11], negA[11], notwire[0], sel[1]);
or(out[11], andwire1[11], andwire2[11], andwire3[11]);

//A12 & -A12
and(andwire1[12], a[12], notwire[0], notwire[1]);
and(andwire2[12], sel[0], notwire[1], 0);
and(andwire3[12], negA[12], notwire[0], sel[1]);
or(out[12], andwire1[12], andwire2[12], andwire3[12]);

//A13 & -A13
and(andwire1[13], a[13], notwire[0], notwire[1]);
and(andwire2[13], sel[0], notwire[1], 0);
and(andwire3[13], negA[13], notwire[0], sel[1]);
or(out[13], andwire1[13], andwire2[13], andwire3[13]);

//A14 & -A14
and(andwire1[14], a[14], notwire[0], notwire[1]);
and(andwire2[14], sel[0], notwire[1], 0);
and(andwire3[14], negA[14], notwire[0], sel[1]);
or(out[14], andwire1[14], andwire2[14], andwire3[14]);

//A15 & -A15
and(andwire1[15], a[15], notwire[0], notwire[1]);
and(andwire2[15], sel[0], notwire[1], 0);
and(andwire3[15], negA[15], notwire[0], sel[1]);
or(out[15], andwire1[15], andwire2[15], andwire3[15]);

//A16 & -A16
and(andwire1[16], a[16], notwire[0], notwire[1]);
and(andwire2[16], sel[0], notwire[1], 0);
and(andwire3[16], negA[16], notwire[0], sel[1]);
or(out[16], andwire1[16], andwire2[16], andwire3[16]);

//A17 & -A17
and(andwire1[17], a[17], notwire[0], notwire[1]);
and(andwire2[17], sel[0], notwire[1], 0);
and(andwire3[17], negA[17], notwire[0], sel[1]);
or(out[17], andwire1[17], andwire2[17], andwire3[17]);

//A18 & -A18
and(andwire1[18], a[18], notwire[0], notwire[1]);
and(andwire2[18], sel[0], notwire[1], 0);
and(andwire3[18], negA[18], notwire[0], sel[1]);
or(out[18], andwire1[18], andwire2[18], andwire3[18]);

//A19 & -A19
and(andwire1[19], a[19], notwire[0], notwire[1]);
and(andwire2[19], sel[0], notwire[1], 0);
and(andwire3[19], negA[19], notwire[0], sel[1]);
or(out[19], andwire1[19], andwire2[19], andwire3[19]);

//A20 & -A20
and(andwire1[20], a[20], notwire[0], notwire[1]);
and(andwire2[20], sel[0], notwire[1], 0);
and(andwire3[20], negA[20], notwire[0], sel[1]);
or(out[20], andwire1[20], andwire2[20], andwire3[20]);

//A21 & -A21
and(andwire1[21], a[21], notwire[0], notwire[1]);
and(andwire2[21], sel[0], notwire[1], 0);
and(andwire3[21], negA[21], notwire[0], sel[1]);
or(out[21], andwire1[21], andwire2[21], andwire3[21]);

//A22 & -A22
and(andwire1[22], a[22], notwire[0], notwire[1]);
and(andwire2[22], sel[0], notwire[1], 0);
and(andwire3[22], negA[22], notwire[0], sel[1]);
or(out[22], andwire1[22], andwire2[22], andwire3[22]);

//A23 & -A23
and(andwire1[23], a[23], notwire[0], notwire[1]);
and(andwire2[23], sel[0], notwire[1], 0);
and(andwire3[23], negA[23], notwire[0], sel[1]);
or(out[23], andwire1[23], andwire2[23], andwire3[23]);

//A24 & -A24
and(andwire1[24], a[24], notwire[0], notwire[1]);
and(andwire2[24], sel[0], notwire[1], 0);
and(andwire3[24], negA[24], notwire[0], sel[1]);
or(out[24], andwire1[24], andwire2[24], andwire3[24]);

//A25 & -A25
and(andwire1[25], a[25], notwire[0], notwire[1]);
and(andwire2[25], sel[0], notwire[1], 0);
and(andwire3[25], negA[25], notwire[0], sel[1]);
or(out[25], andwire1[25], andwire2[25], andwire3[25]);

//A26 & -A26
and(andwire1[26], a[26], notwire[0], notwire[1]);
and(andwire2[26], sel[0], notwire[1], 0);
and(andwire3[26], negA[26], notwire[0], sel[1]);
or(out[26], andwire1[26], andwire2[26], andwire3[26]);

//A27 & -A27
and(andwire1[27], a[27], notwire[0], notwire[1]);
and(andwire2[27], sel[0], notwire[1], 0);
and(andwire3[27], negA[27], notwire[0], sel[1]);
or(out[27], andwire1[27], andwire2[27], andwire3[27]);

//A28 & -A28
and(andwire1[28], a[28], notwire[0], notwire[1]);
and(andwire2[28], sel[0], notwire[1], 0);
and(andwire3[28], negA[28], notwire[0], sel[1]);
or(out[28], andwire1[28], andwire2[28], andwire3[28]);

//A29 & -A29
and(andwire1[29], a[29], notwire[0], notwire[1]);
and(andwire2[29], sel[0], notwire[1], 0);
and(andwire3[29], negA[29], notwire[0], sel[1]);
or(out[29], andwire1[29], andwire2[29], andwire3[29]);

//A30 & -A30
and(andwire1[30], a[30], notwire[0], notwire[1]);
and(andwire2[30], sel[0], notwire[1], 0);
and(andwire3[30], negA[30], notwire[0], sel[1]);
or(out[30], andwire1[30], andwire2[30], andwire3[30]);

//A31 & -A31
and(andwire1[31], a[31], notwire[0], notwire[1]);
and(andwire2[31], sel[0], notwire[1], 0);
and(andwire3[31], negA[31], notwire[0], sel[1]);
or(out[31], andwire1[31], andwire2[31], andwire3[31]);

endmodule

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

one_bitAdder one (a[0],b[0],0,c[0],out[0]);
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

module negate(a, out);

input [31:0] a;
wire [31:0] notwire;
wire cout;
output [31:0] out;

not(notwire[0], a[0]);
not(notwire[1], a[1]);
not(notwire[2], a[2]);
not(notwire[3], a[3]);
not(notwire[4], a[4]);
not(notwire[5], a[5]);
not(notwire[6], a[6]);
not(notwire[7], a[7]);
not(notwire[8], a[8]);
not(notwire[9], a[9]);
not(notwire[10], a[10]);
not(notwire[11], a[11]);
not(notwire[12], a[12]);
not(notwire[13], a[13]);
not(notwire[14], a[14]);
not(notwire[15], a[15]);
not(notwire[16], a[16]);
not(notwire[17], a[17]);
not(notwire[18], a[18]);
not(notwire[19], a[19]);
not(notwire[20], a[20]);
not(notwire[21], a[21]);
not(notwire[22], a[22]);
not(notwire[23], a[23]);
not(notwire[24], a[24]);
not(notwire[25], a[25]);
not(notwire[26], a[26]);
not(notwire[27], a[27]);
not(notwire[28], a[28]);
not(notwire[29], a[29]);
not(notwire[30], a[30]);
not(notwire[31], a[31]);

rippleAdder addOne (notwire, 1, cout, out);


endmodule

module alu(a, b, add, inc, neg, sub, out, Z, N);

input [31:0] a;
input [31:0] b;
input add;
input inc;
input neg;
input sub;

wire[31:0] twomuxout;
wire[31:0] threemuxout;
wire[31:0] negateout;

wire not_sub;
wire [1:0] select;

wire cout;

output [31:0] out;
output Z;
output N;


//2to1mux
two_oneMux mux_B (b, neg, twomuxout);

//2s complement
negate neg_A (a, negateout);

//3to1mux
not(not_sub, sub);
and(select[0], inc, not_sub);
nor(select[1], add, inc);
three_oneMux mux_A (a, negateout, select, threemuxout);

//fulladder
rippleAdder fullAdder (threemuxout, twomuxout, cout, out);

//For Z, norgate every bit of output
//For N, set it to value of most significant bit

//Z
nor(Z, out[0], out[1], out[2], out[3], out[4], out[5], out[6], out[7], out[8], out[9], out[10], out[11], out[12], out[13], out[14], out[15], out[16], out[17], out[18], out[19], out[20], out[21], out[22], out[23], out[24], out[25], out[26], out[27], out[28], out[29], out[30], out[31]);

//N
assign N = out[31];

endmodule
