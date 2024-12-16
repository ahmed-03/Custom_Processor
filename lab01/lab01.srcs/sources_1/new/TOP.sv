`timescale 1ns / 1ps


module TOP(
    input clk,rst_n
    );
    parameter ALU_WIDTH = 16;
    parameter IMEM_DEPTH = 8;
    parameter REGF_WIDTH = 16;
    parameter PROG_VALUE = 2;

    
//    logic [1:0] rs1;
//    logic [1:0] rs2;
//    logic [1:0] rd;
    
    logic [IMEM_DEPTH - 1: 0] Instructions;
    
    logic [ALU_WIDTH - 1: 0] op1;
    logic [ALU_WIDTH - 1: 0] op2;
    logic [ALU_WIDTH - 1: 0] alu_result;
    logic [PROG_VALUE-1:0] PC;
    
//    assign = Instructions[];
//    assign = Instructions[];
//    assign = Instructions[];
    
    program_counter #(PROG_VALUE) a3(
    .clk(clk), 
    .rst_n(rst_n),
    .PC(PC)
    );
    
    instruction_memory #(IMEM_DEPTH) a2(
    .address(PC),
    .Instructions(Instructions)
    );
    
    register_file #(REGF_WIDTH) a4(
    .clk(clk),
    .rs1(Instructions[3:2]),
    .rs2(Instructions[5:4]),
    .rd(Instructions[7:6]),
    .alu_result(alu_result),
    .op1(op1),
    .op2(op2)
    );


    alu #(ALU_WIDTH) a1(
    .op1(op1),
    .op2(op2),
    .opcode(Instructions[1:0]), 
    .alu_result(alu_result)   
    );

    
endmodule
