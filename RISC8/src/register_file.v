module register_file (
    input clk,
    input reg_write,
    input [1:0] rs,
    input [1:0] rt,
    input [1:0] rd,
    input [7:0] write_data,
    output [7:0] read_data1,
    output [7:0] read_data2
);

reg [7:0] registers [3:0];

// Initialize registers for simulation
initial begin
    registers[0] = 8'd5;
    registers[1] = 8'd3;
    registers[2] = 8'd2;
    registers[3] = 8'd1;
end

assign read_data1 = registers[rs];
assign read_data2 = registers[rt];

always @(posedge clk) begin
    if (reg_write)
        registers[rd] <= write_data;
end

endmodule