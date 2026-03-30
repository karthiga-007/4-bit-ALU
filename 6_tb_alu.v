`timescale 1ns/1ps

module alu_4bit_tb;

reg [3:0] A;
reg [3:0] B;
reg [1:0] sel;
wire [3:0] Y;

// Instantiate ALU
alu_4bit uut (
    .A(A),
    .B(B),
    .sel(sel),
    .Y(Y)
);

initial begin
    // Dump waveform
    $dumpfile("alu_4bit.vcd");
    $dumpvars(0, alu_4bit_tb);

    // Test 1
    A = 4'b0101;  // 5
    B = 4'b0011;  // 3

    sel = 2'b00; #10; // ADD → 8
    sel = 2'b01; #10; // SUB → 2
    sel = 2'b10; #10; // AND → 1
    sel = 2'b11; #10; // OR  → 7

    // Test 2
    A = 4'b1111;  // 15
    B = 4'b0001;  // 1

    sel = 2'b00; #10; // ADD → overflow (wrap)
    sel = 2'b01; #10; // SUB → 14
    sel = 2'b10; #10; // AND
    sel = 2'b11; #10; // OR

    
end

endmodule
