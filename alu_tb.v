`timescale 1ns / 1ps

module alu_tb;

    reg [3:0] A, B;
    reg [2:0] opcode;
    wire [4:0] result;

    alu uut (
        .A(A),
        .B(B),
        .opcode(opcode),
        .result(result)
    );

    initial begin
        $dumpfile("dump.vcd");      // For waveform generation
        $dumpvars(0, alu_tb);       // Dump everything under alu_tb

        $display("Time\tA\tB\topcode\tresult");
        $monitor("%0dns\t%b\t%b\t%b\t%b", $time, A, B, opcode, result);

        A = 4'b0101; B = 4'b0011; opcode = 3'b000; #10;  // Add
        opcode = 3'b001; #10;                           // Sub
        opcode = 3'b010; #10;                           // AND
        opcode = 3'b011; #10;                           // OR
        opcode = 3'b100; #10;                           // XOR
        opcode = 3'b101; #10;                           // NOT A
        opcode = 3'b110; #10;                           // A << 1
        opcode = 3'b111; #10;                           // A >> 1

        $finish;
    end

endmodule
