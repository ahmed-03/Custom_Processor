`timescale 1ns / 1ps

module instruction_memory #( parameter IMEM_DEPTH = 64)(
    input [1: 0] address,
    output [7: 0] Instructions
);
    logic [7: 0] ROM [IMEM_DEPTH - 1: 0];

    initial begin
    $readmemb("/home/it/Desktop/Computer_Architecture/lab1/support_files/fib_im.mem", ROM);
        end
    assign Instructions = ROM[address]; 

endmodule