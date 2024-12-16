`timescale 1ns / 1ps

module register_file #( parameter REGF_WIDTH = 16)(
    input clk,
    input [1:0] rs1,
    input [1:0] rs2,
    input [1:0] rd,
    input [REGF_WIDTH-1:0] alu_result,
    output logic [REGF_WIDTH - 1 : 0] op1,
    output logic [REGF_WIDTH - 1 : 0] op2
);
    logic [REGF_WIDTH -1:0] register_file [3:0];

    initial begin 
        $readmemb("/home/it/Desktop/Computer_Architecture/lab1/support_files/fib_rf.mem", register_file);
    end
    always@(posedge clk) begin
        case(rd)
        2'b01: register_file[1] <= alu_result;
        2'b10: register_file[2] <= alu_result;
        2'b11: register_file[3] <= alu_result;
        default: register_file[0] <= register_file[0];
        endcase
    end

    always_comb begin
        case (rs1)
        2'b00: op1 = register_file[0];
        2'b01: op1 = register_file[1];
        2'b10: op1 = register_file[2];
        2'b11: op1 = register_file[3];    
        endcase
    end

    always_comb begin
        case (rs2)
        2'b00: op2 = register_file[0];
        2'b01: op2 = register_file[1];
        2'b10: op2 = register_file[2];
        2'b11: op2 = register_file[3];
        endcase
    end
endmodule