`timescale 1ns/1ps

module processor_tb;

reg clk;
reg reset;

// Instantiate your processor
processor_top uut (
    .clk(clk),
    .reset(reset)
);

initial begin
    // Create VCD file for waveform
    $dumpfile("processor.vcd");
    $dumpvars(0, processor_tb);

    // Initialize signals
    clk = 0;
    reset = 1;

    // Release reset after 10 ns
    #10 reset = 0;

    // Run simulation for some time
    #200;

    $finish;
end

// Clock generation (10ns period)
always #5 clk = ~clk;

endmodule