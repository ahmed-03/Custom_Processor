`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/15/2024 03:47:26 PM
// Design Name: 
// Module Name: tb_alu
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


module tb_alu;
    parameter ALU_WIDTH = 16;
    
    logic [ALU_WIDTH - 1: 0] op1;
    logic [ALU_WIDTH - 1: 0] op2;
    logic [1:0] opcode;
    logic [ALU_WIDTH - 1: 0] alu_result;
     
    alu #(ALU_WIDTH) aa( 
        .op1(op1),
        .op2(op2),
        .opcode(opcode), 
        .alu_result(alu_result)   
    );
    
    initial begin
    op1='b01;
    op2='b10;
    opcode='b00;#1
    op1='b10;
    op2='b01;
    opcode='b01;#1
    op1='b10;
    op2='b01;
    opcode='b10;#1
    op1='b10;
    op2='b01;
    opcode='b11;#1
    $finish;
    end
        
        
endmodule
