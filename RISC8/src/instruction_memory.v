module instruction_memory (
    input [7:0] addr,
    output [7:0] instruction
);

reg [7:0] memory [0:255];

initial begin
    memory[0] = 8'b000_00_01_0; // ADD R0,R1
    memory[1] = 8'b001_00_01_0; // SUB R0,R1
    memory[2] = 8'b010_00_01_0; // AND R0,R1
    memory[3] = 8'b011_00_01_0; // OR  R0,R1

    memory[4] = 8'b000_01_10_0; // ADD R1,R2
    memory[5] = 8'b001_01_11_0; // SUB R1,R3
end

assign instruction = memory[addr];

endmodule