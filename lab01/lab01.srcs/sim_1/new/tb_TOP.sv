`timescale 1ns / 1ps

module tb_TOP;

    logic clk,rst_n;
    
    TOP aa(
    .clk(clk),
    .rst_n(rst_n)
    );
    
    always #5 clk = ~clk;
    
    initial begin
    clk=0;
    rst_n=1;#1
    rst_n=0;#1
    rst_n=1;#1

    $finish;
    end
    
endmodule
