`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/31/2023 02:51:12 PM
// Design Name: 
// Module Name: datapath
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


module datapath();
//clk
reg clk;
reg V;
//all our IF wire
reg [31:0]PC;
wire [31:0]pc;
wire [31:0]pcOutF;
wire [31:0]pcOutALU;

wire [31:0]inst;

//all the ID wires
wire [31:0]pcOutD;
wire [31:0]instOut;

wire regWrt, memToReg, branch, memRead, memWrite, ALUSrc, SVPC, jump, jump_mem, Gen, add, sub, inc, neg;
wire [31:0]regDataIn;
wire [31:0]rsOut;
wire [31:0]rtOut;
wire [31:0]GenOut;
wire [31:0]signextend0out;
wire [31:0]signextend1out;
//all the EX wires
wire branchOut, jumpOut, jumpMemout, memReadout, memToRegout, memWriteout, aluSrcout, regWrtout, svpcOut, add_out, sub_out, inc_out, neg_out;
wire [31:0]immGenout;
wire [5:0] rdOut;
wire [31:0] rsOutX;
wire [31:0] rtOutX;
wire [31:0] pcX;

//all the MEM wires
wire SumExtra;
wire [31:0]SumOut;
wire [31:0]TwoMuxOut;
wire [31:0]ALUOut;
wire Z, N;
wire Zbranch, Nbranch, Or_bit;
wire [1:0] PCChange;
wire [31:0]DMOut;
//all the WB wires 

wire memToRegW, regWrtW, svpcW;
wire [31:0]dataMemW;
wire [5:0]rdOutW;
wire [31:0]adderOutW;
wire [31:0]DMtoRegout;

wire [31:0]ALUW;

//placeholder names

//all the IF module blocks
pc PC_adder(clk, PC, pcOutF);


alu PCALU (pcOutF, 1, 1, 0, 0, 0, pcOutALU, Z, N);
instructionmemory IF(clk, pcOutALU, inst);
//IF/ID buffer
IFID buffer1(clk, pcOutF, inst, pcOutD, instOut);



//ID stage blocks....
control Control(instOut[31:28], regWrt, memToReg, branch, memRead, memWrite, ALUSrc, SVPC, jump, jump_mem, Gen, add, sub, inc, neg);
registerfile ID(clk, regWrt, instOut[27:22], instOut[21:16], instOut[15:10], regDataIn, rsOut, rtOut);
//ask about source file

sign_extend1 Gen1(instOut[21:10], signextend1out); 
sign_extend0 Gen0(instOut[15:10], signextend0out);

imm_gen Imm(clk, signextend0out, signextend1out, Gen, GenOut);
//ID/EX buffer 
IDEX buffer2(clk, branch, jump, jump_mem, memRead, memToReg, memWrite, ALUSrc, regWrt, GenOut, instOut[27:22], instOut[21:16], instOut[15:10], pcOutD, SVPC, add, sub, inc, neg, branchOut, jumpOut, jumpMemout, memReadout, memToRegout, memWriteout, aluSrcout, regWrtout, immGenout, rdOut, rsOutX, rtOutX, pcX, svpcOut, add_out, sub_out, inc_out, neg_out);

//EX/MEM blocks 
rippleAdder Sum(pcX, immGenout, SumExtra, SumOut);
two_oneMux ALUMux(rtOutX, immGenout, aluSrcout, TwoMuxOut);
alu ALU(rsOutX, TwoMuxOut, add_out, inc_out, neg_out, sub_out, ALUOut, Z, N);
//WHY THESE DON'T WORK
and(Zbranch, Z, branchOut);
and(Nbranch, N, branchOut);
or(Or_bit, jump, Zbranch, Nbranch);
assign PCChange[0] = Or_bit;
assign PCChange[1] = jump_mem;
datamemory DM(clk, memReadout, memWriteout, ALUOut, rtOutX, DMOut);
//MEM/WB buffer 

EXWB buffer3(clk, memToRegout, DMOut, ALUOut, regWrtout, rdOut, SumOut, svpcOut, memToRegW, dataMemW, ALUW, regWrtW, rdOutW, adderOutW, svpcW);

//WB blocks 

two_oneMux Mem_to_Reg(dataMemW, ALUW, memToRegW, DMtoRegout);
two_oneMux SVPC_(DMtoRegout, adderOutW, svpcW, regDataIn);
three_oneMux For_PC(pcOutALU, rsOut, dataMemW, PCChange, pc);

//clock
initial
begin
clk = 0;
    forever #25 clk = ~clk;
end
reg i;
initial
begin
#100

for (i = 0; i < 50; i = i+1)
    begin
    PC=pc;
    #50;
    end
    $finish;
end



initial
begin
PC =0;
//V=0;
//how much time will the required instrucctions take? how many clock cycles * period of the clock (4 cycles * 2ns)
//#that much time
#50;
//V=1;
PC=1;
#50;
end
endmodule
