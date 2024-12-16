`timescale 1ns / 1ps

module tb_instruction_memory;
    parameter IMEM_DEPTH = 64;
    
    logic [$clog2(IMEM_DEPTH) - 1: 0] address;
    logic [IMEM_DEPTH - 1: 0] Instructions;
    
    instruction_memory #(IMEM_DEPTH) aa(
    .address(address),
    .Instructions(Instructions)
    );
    
    initial begin
    address='b00;#1
    address='b01;#1
    address='b10;#1
    address='b11;#1
    $finish;
    end
    
endmodule
