8-Bit RISC Processor in Verilog
📌 Overview
This project implements a custom 8-bit RISC processor designed using Verilog HDL. The processor architecture includes modular components such as ALU, Register File, Program Counter, Instruction Memory, and Control Unit. The design is verified through RTL simulation and waveform analysis.
🏗️ Architecture
Instruction Format:-
[ opcode(3) | rs(2) | rt(2) | unused(1) ]
Supported Instructions:-
ADD
SUB
AND
OR
🧠 Modules:-
1.ALU (Arithmetic Logic Unit)
2.Register File (4 registers)
3.Program Counter
4.Control Unit
5.Instruction Memory
6.Top Module
7.Testbench
🛠 Tools Used:-
1.Verilog HDL
2.Icarus Verilog
3.GTKWave
▶️ How to Run
Compile:
iverilog -o processor_tb src/*.v tb/processor_tb.v
Run:
vvp processor_tb
Open waveform:
gtkwave processor.vcd
