`timescale 1ns / 1ps

module program_counter #(
    parameter PROG_VALUE = 2
) (
    input clk, 
    input rst_n,
    output logic [PROG_VALUE-1:0] PC
);

  always @(posedge clk, negedge rst_n) begin
    if (~rst_n) PC <= '0;
    else PC <= PC + 1;
    end

endmodule