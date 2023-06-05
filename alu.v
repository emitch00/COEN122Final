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


module two_oneMux(b, c, sel, out);

input [31:0] b;
input [31:0] c;
input sel;

wire notwire;
wire [31:0] andwire1;
wire [31:0] andwire2;

output [31:0] out;

//Not gate applies to all bits of B
not(notwire, sel);

//B0
and(andwire1[0], b[0], notwire);
and(andwire2[0], sel, c[0]);
or(out[0], andwire1[0], andwire2[0]);

//B1
and(andwire1[1], b[1], notwire);
and(andwire2[1], sel, c[1]);
or(out[1], andwire1[1], andwire2[1]);

//B2
and(andwire1[2], b[2], notwire);
and(andwire2[2], sel, c[2]);
or(out[2], andwire1[2], andwire2[2]);

//B3
and(andwire1[3], b[3], notwire);
and(andwire2[3], sel, c[3]);
or(out[3], andwire1[3], andwire2[3]);

//B4
and(andwire1[4], b[4], notwire);
and(andwire2[4], sel, c[4]);
or(out[4], andwire1[4], andwire2[4]);

//B5
and(andwire1[5], b[5], notwire);
and(andwire2[5], sel, c[5]);
or(out[5], andwire1[5], andwire2[5]);

//B6
and(andwire1[6], b[6], notwire);
and(andwire2[6], sel, c[6]);
or(out[6], andwire1[6], andwire2[6]);

//B7
and(andwire1[7], b[7], notwire);
and(andwire2[7], sel, c[7]);
or(out[7], andwire1[7], andwire2[7]);

//B8
and(andwire1[8], b[8], notwire);
and(andwire2[8], sel, c[8]);
or(out[8], andwire1[8], andwire2[8]);

//B9
and(andwire1[9], b[9], notwire);
and(andwire2[9], sel, c[9]);
or(out[9], andwire1[9], andwire2[9]);

//B10
and(andwire1[10], b[10], notwire);
and(andwire2[10], sel, c[10]);
or(out[10], andwire1[10], andwire2[10]);

//B11
and(andwire1[11], b[11], notwire);
and(andwire2[11], sel, c[11]);
or(out[11], andwire1[11], andwire2[11]);

//B12
and(andwire1[12], b[12], notwire);
and(andwire2[12], sel, c[12]);
or(out[12], andwire1[12], andwire2[12]);

//B13
and(andwire1[13], b[13], notwire);
and(andwire2[13], sel, c[13]);
or(out[13], andwire1[13], andwire2[13]);

//B14
and(andwire1[14], b[14], notwire);
and(andwire2[14], sel, c[14]);
or(out[14], andwire1[14], andwire2[14]);

//B15
and(andwire1[15], b[15], notwire);
and(andwire2[15], sel, c[15]);
or(out[15], andwire1[15], andwire2[15]);

//B16
and(andwire1[16], b[16], notwire);
and(andwire2[16], sel, c[16]);
or(out[16], andwire1[16], andwire2[16]);

//B17
and(andwire1[17], b[17], notwire);
and(andwire2[17], sel, c[17]);
or(out[17], andwire1[17], andwire2[17]);

//B18
and(andwire1[18], b[18], notwire);
and(andwire2[18], sel, c[18]);
or(out[18], andwire1[18], andwire2[18]);

//B19
and(andwire1[19], b[19], notwire);
and(andwire2[19], sel, c[19]);
or(out[19], andwire1[19], andwire2[19]);

//B20
and(andwire1[20], b[20], notwire);
and(andwire2[20], sel, c[20]);
or(out[20], andwire1[20], andwire2[20]);

//B21
and(andwire1[21], b[21], notwire);
and(andwire2[21], sel, c[21]);
or(out[21], andwire1[21], andwire2[21]);

//B22
and(andwire1[22], b[22], notwire);
and(andwire2[22], sel, c[22]);
or(out[22], andwire1[22], andwire2[22]);

//B23
and(andwire1[23], b[23], notwire);
and(andwire2[23], sel, c[23]);
or(out[23], andwire1[23], andwire2[23]);

//B24
and(andwire1[24], b[24], notwire);
and(andwire2[24], sel, c[24]);
or(out[24], andwire1[24], andwire2[24]);

//B25
and(andwire1[25], b[25], notwire);
and(andwire2[25], sel, c[25]);
or(out[25], andwire1[25], andwire2[25]);

//B26
and(andwire1[26], b[26], notwire);
and(andwire2[26], sel, c[26]);
or(out[26], andwire1[26], andwire2[26]);

//B27
and(andwire1[27], b[27], notwire);
and(andwire2[27], sel, c[27]);
or(out[27], andwire1[27], andwire2[27]);

//B28
and(andwire1[28], b[28], notwire);
and(andwire2[28], sel, c[28]);
or(out[28], andwire1[28], andwire2[28]);

//B29
and(andwire1[29], b[29], notwire);
and(andwire2[29], sel, c[29]);
or(out[29], andwire1[29], andwire2[29]);

//B30
and(andwire1[30], b[30], notwire);
and(andwire2[30], sel, c[30]);
or(out[30], andwire1[30], andwire2[30]);

//B31
and(andwire1[31], b[31], notwire);
and(andwire2[31], sel, c[31]);
or(out[31], andwire1[31], andwire2[31]);

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
