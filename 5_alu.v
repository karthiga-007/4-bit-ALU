`timescale 1ns/1ps

module alu_4bit (
    input [3:0] A,
    input [3:0] B,
    input [1:0] sel,
    output reg [3:0] Y
);

// Internal wires
wire [3:0] add_out;
wire [3:0] sub_out;
wire [3:0] and_out;
wire [3:0] or_out;

// Instantiate modules
adder_4bit u1 (.A(A), .B(B), .Y(add_out));
sub_4bit   u2 (.A(A), .B(B), .Y(sub_out));
and_4bit   u3 (.A(A), .B(B), .Y(and_out));
or_4bit    u4 (.A(A), .B(B), .Y(or_out));

// Select operation
always @(*) begin
    case (sel)
        2'b00: Y = add_out;
        2'b01: Y = sub_out;
        2'b10: Y = and_out;
        2'b11: Y = or_out;
    endcase
end

endmodule
