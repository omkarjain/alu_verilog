module alu (
    input [3:0] A,
    input [3:0] B,
    input [2:0] opcode,
    output reg [4:0] result
);

always @(*) begin
    case (opcode)
        3'b000: result = A + B;       // Addition
        3'b001: result = A - B;       // Subtraction
        3'b010: result = A & B;       // Bitwise AND
        3'b011: result = A | B;       // Bitwise OR
        3'b100: result = A ^ B;       // Bitwise XOR
        3'b101: result = ~A;          // Bitwise NOT (on A only)
        3'b110: result = A << 1;      // Left shift A
        3'b111: result = A >> 1;      // Right shift A
        default: result = 5'b00000;   // Default
    endcase
end

endmodule
