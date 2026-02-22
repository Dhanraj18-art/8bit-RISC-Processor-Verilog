module processor_top (
    input clk,
    input reset
);

wire [7:0] pc_out;
wire [7:0] instruction;
wire [7:0] read_data1, read_data2;
wire [7:0] alu_result;
wire reg_write;
wire [2:0] alu_op;

pc PC(clk, reset, pc_out);

instruction_memory IM(pc_out, instruction);

control_unit CU(instruction[7:5], reg_write, alu_op);

register_file RF(
    clk,
    reg_write,
    instruction[4:3], // rs
    instruction[2:1], // rt
    instruction[4:3], // rd
    alu_result,
    read_data1,
    read_data2
);

alu ALU(
    read_data1,
    read_data2,
    alu_op,
    alu_result
);

endmodule