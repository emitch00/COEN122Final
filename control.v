`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/17/2023 12:27:34 PM
// Design Name: 
// Module Name: control
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


module control(input opcode, output regWrt, output memToReg, output branch, output memRead, output memWrite, output ALUSrc, output ALUOp, output SVPC, output jump, output jump_mem, output Gen);
input [3:0]opcode;
output regWrt, memToReg, branch, memRead, memWrite, ALUSrc;
output [3:0]ALUOp, SVPC, jump, jump_mem, Gen;

always@(opcode)
begin
    if(opcode == 4'b0000)//NOP
    begin
        regWrt = 0;
        memToReg = 0; 
        branch = 0; 
        memRead = 0;
        memWrite = 0; 
        ALUSrc = 0; 
        ALUOp = 4'b0100;  
        SVPC = 0; 
        jump = 0; 
        jump_mem = 0; 
        Gen = 0;
    end
    else if(opcode == 4'b1111)//SVPC
    begin
        regWrt = 1;
        memToReg = 0; 
        branch = 0; 
        memRead = 0;
        memWrite = 0; 
        ALUSrc = 0; 
        ALUOp = 4'b0100;  
        SVPC = 1; 
        jump = 0; 
        jump_mem = 0; 
        Gen = 1;
    end
    else if(opcode == 4'b1110)//load
    begin
        regWrt = 1;
        memToReg = 1; 
        branch = 0; 
        memRead = 1;
        memWrite = 0; 
        ALUSrc = 1; 
        ALUOp = 4'b0100;  
        SVPC = 0; 
        jump = 0; 
        jump_mem = 0; 
        Gen = 0;
    end
    else if(opcode == 4'b0011)//store
    begin
        regWrt = 0;
        memToReg = 0; 
        branch = 0; 
        memRead = 0;
        memWrite = 1; 
        ALUSrc = 1; 
        ALUOp = 4'b0100; 
        SVPC = 0; 
        jump = 0; 
        jump_mem = 0; 
        Gen = 0;
    end
    else if(opcode == 4'b0100)//add
    begin
        regWrt = 1;
        memToReg = 0; 
        branch = 0; 
        memRead = 0;
        memWrite = 0; 
        ALUSrc = 0; 
        ALUOp = 4'b0100; 
        SVPC = 0; 
        jump = 0; 
        jump_mem = 0; 
        Gen = 0;
    end
    else if(opcode == 4'b0101)//increment
    begin
        regWrt = 1;
        memToReg = 0; 
        branch = 0; 
        memRead = 0;
        memWrite = 0; 
        ALUSrc = 1; 
        ALUOp = 4'b0101; 
        SVPC = 0; 
        jump = 0; 
        jump_mem = 0; 
        Gen = 0;
    end
    else if(opcode == 4'b0110)//negate
    begin
        regWrt = 1;
        memToReg = 0; 
        branch = 0; 
        memRead = 0;
        memWrite = 0; 
        ALUSrc = 1; 
        ALUOp = 4'b0100; 
        SVPC = 0; 
        jump = 0; 
        jump_mem = 0; 
        Gen = 0;
    end
    else if(opcode == 4'b0111)//subtract
    begin
        regWrt = 1;
        memToReg = 0; 
        branch = 0; 
        memRead = 0;
        memWrite = 0; 
        ALUSrc = 0; 
        ALUOp = 4'b0111; 
        SVPC = 0; 
        jump = 0; 
        jump_mem = 0; 
        Gen = 0;
    end
    else if(opcode == 4'b1000)//jump
    begin
        regWrt = 0;
        memToReg = 0; 
        branch = 0; 
        memRead = 0;
        memWrite = 0; 
        ALUSrc = 0; 
        ALUOp = 4'b0100; 
        SVPC = 0; 
        jump = 1; 
        jump_mem = 0; 
        Gen = 0;
    end
    else if(opcode == 4'b1001)//branch if zero
    begin
        regWrt = 0;
        memToReg = 0; 
        branch = 1; 
        memRead = 0;
        memWrite = 0; 
        ALUSrc = 0; 
        ALUOp = 4'b0100; 
        SVPC = 0; 
        jump = 0; 
        jump_mem = 0; 
        Gen = 0;
    end
    else if(opcode == 4'b1010)//jump memory
    begin
        regWrt = 0;
        memToReg = 0; 
        branch = 0; 
        memRead = 1;
        memWrite = 0; 
        ALUSrc = 0; 
        ALUOp = 4'b0100; 
        SVPC = 0; 
        jump = 1; 
        jump_mem = 1; 
        Gen = 0;
    end
    else if(opcode == 4'b1011)//branch if negative
    begin
        regWrt = 0;
        memToReg = 0; 
        branch = 1; 
        memRead = 0;
        memWrite = 0; 
        ALUSrc = 0; 
        ALUOp = 4'b0100; 
        SVPC = 0; 
        jump = 0; 
        jump_mem = 0; 
        Gen = 0;
    end
    else //empty if not one of the instructions
    begin
    end
end
