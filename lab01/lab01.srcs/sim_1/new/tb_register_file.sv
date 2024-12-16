`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/15/2024 04:05:32 PM
// Design Name: 
// Module Name: tb_register_file
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


module tb_register_file;
    parameter REGF_WIDTH = 16;
    logic clk;
    logic [1:0] rs1;
    logic [1:0] rs2;
    logic [1:0] rd;
    logic [REGF_WIDTH-1:0] alu_result;
    logic [REGF_WIDTH - 1 : 0] op1;
    logic [REGF_WIDTH - 1 : 0] op2;
    
    register_file #(REGF_WIDTH) aa(
    .clk(clk),
    .rs1(rs1),
    .rs2(rs2),
    .rd(rd),
    .alu_result(alu_result),
    .op1(op1),
    .op2(op2)
    );
    
    always #5 clk = ~clk;
    initial begin
    clk=0;
    rs1='b00;
    rs2='b00;
    rd='b00;
    alu_result='h0000;#5
    rs1='b01;
    rs2='b10;
    rd='b01;
    alu_result='h1111;#20
    $finish;
    end
    
endmodule
