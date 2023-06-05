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

//all our IF wire
reg M[rs], Rs, or_out, ForPC_out, constant, pcOutF;
reg [31:0]addr;
reg [31:0]inst;
//all the ID wires
reg pcOutD;
reg [31:0]instOut;
reg regWrt, memToReg, branch, memRead, memWrite, ALUSrc, SVPC, jump, jump_mem, Gen, add, sub, inc, neg;
reg [31:0]regDataIn;
reg [31:0]rsOut;
reg [31:0]rtOut;
reg [31:0]GenOut;
//all the EX wires
reg branchOut, jumpOut, jumpMemout, memReadout, memToRegout, memWriteout, aluSrcout, regWrtout, svpcOut, add_out, sub_out, inc_out, neg_out;
reg [31:0]immGenOut;
reg [5:0] rdOut;
reg [5:0] rsOut;
reg [5:0] rtOut;
reg [31:0] pcX;
//all the MEM wires
reg SumExtra;
reg [31:0]SumOut;
reg [31:0]TwoMuxOut;
reg [31:0]ALUOut;
reg Z, N, Zbranch, Nbranch, PCChange;
reg [31:0]DMOut;
//all the WB wires 
reg memToRegW, regWrtW, svpcW;
reg [31:0]dataMemW;
reg [5:0]rdOutW;
reg [31:0]adderOutW;
reg [31:0] DMtoRegOut;
reg [31:0] SVPCtoReg;
reg [31:0] ALUW;

//placeholder names

//all the IF module blocks
three_oneMux For_PC(M[rs], pcOutF, Rs, or_out, ForPC_out);
pc PC(clk, ForPC_out, constant, pcOutF);
instructionmemory IF(clk, addr, inst);
//IF/ID buffer
IFID buffer1(clk, pcOutF, inst, pcOutD, instOut);

//ID stage blocks....
control Control(instOut[31:28], regWrt, memToReg, branch, memRead, memWrite, ALUSrc, SVPC, jump, jump_mem, Gen, add, sub, inc, neg);
registerfile ID(clk, regWrt, instOut[27:22], instOut[21:16], instOut[15:10], regDataIn, rsOut, rtOut);
//ask about source file
imm_gen Imm(clk, inst[21:10], Gen, GenOut);
//ID/EX buffer 
IDEX buffer2(clk, branch, jump, jump_mem, memRead, memToReg, memWrite, ALUSrc, regWrt, GenOut, instOut[27:22], instOut[21:16], instOut[15:10], pcOutD, SVPC, add, sub, inc, neg, branchOut, jumpOut, jumpMemout, memReadout, memToRegout, memWriteout, aluSrcout, regWrtout, immGenout, rdOut, rsOut, rtOut, pcX, svpcOut, add_out, sub_out, inc_out, neg_out);

//EX/MEM blocks 
rippleAdder Sum(pcX, GenOut, SumExtra, SumOut);
two_oneMux ALUMux(rtOut, GenOut, aluSrcout, TwoMuxOut);
alu ALU(rsOut, TwoMuxOut, add_out, inc_out, neg_out, sub_out, ALUOut, Z, N);
and(Zbranch, Z, Branch);
and(Nbranch, N, Branch);
or(PCChange, jump, Zbranch, Nbranch);
datamemory DM(clk, memReadout, memWriteout, ALUOut, rtOut, DMOut);
//MEM/WB buffer 
EXWB buffer3(clk, memToRegout, DMOut, ALUOut, regWrtout, rdOut, SumOut, svpcOut, memToRegW, dataMemW, ALUW, regWrtW, rdOutW, adderOutW, svpcW);

//WB blocks 
two_oneMux Mem_to_Reg(dataMemW, ALUW, memToRegW, DMtoRegout);
two_oneMux SVPC_(DMtoRegout, adderOutW, svpcW, SVPCtoReg);
registerfile WB(clk, regWrtW, rdOutW, rs, rt, datain, rsout, rtout);

//clock

initial
begin
    PC=0;
//how much time will the required instrucctions take? how many clock cycles * period of the clock
//#that much time
