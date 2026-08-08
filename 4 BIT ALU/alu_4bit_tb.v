`timescale 1ns/1ps

module alu_4bit_tb;

reg [3:0] A;
reg [3:0] B;
reg [2:0] Sel;

wire [3:0] Result;
wire Carry;

alu_4bit uut (
    .A(A),
    .B(B),
    .Sel(Sel),
    .Result(Result),
    .Carry(Carry)
);

initial begin

    $display("-----------------------------------------------");
    $display("             4-BIT ALU SIMULATION");
    $display("-----------------------------------------------");
    $display(" A     B    Sel   Result   Carry");
    $display("-----------------------------------------------");

    // Addition
    A = 4'b0101;
    B = 4'b0011;
    Sel = 3'b000;
    #10;
    $display("%b  %b   %b    %b      %b", A, B, Sel, Result, Carry);

    // Subtraction
    A = 4'b0101;
    B = 4'b0011;
    Sel = 3'b001;
    #10;
    $display("%b  %b   %b    %b      %b", A, B, Sel, Result, Carry);

    // AND
    A = 4'b1100;
    B = 4'b1010;
    Sel = 3'b010;
    #10;
    $display("%b  %b   %b    %b      %b", A, B, Sel, Result, Carry);

    // OR
    Sel = 3'b011;
    #10;
    $display("%b  %b   %b    %b      %b", A, B, Sel, Result, Carry);

    // XOR
    Sel = 3'b100;
    #10;
    $display("%b  %b   %b    %b      %b", A, B, Sel, Result, Carry);

    // NOT
    A = 4'b1010;
    B = 4'b0000;
    Sel = 3'b101;
    #10;
    $display("%b  %b   %b    %b      %b", A, B, Sel, Result, Carry);

    // Shift Left
    A = 4'b0011;
    Sel = 3'b110;
    #10;
    $display("%b  %b   %b    %b      %b", A, B, Sel, Result, Carry);

    // Shift Right
    A = 4'b1100;
    Sel = 3'b111;
    #10;
    $display("%b  %b   %b    %b      %b", A, B, Sel, Result, Carry);

    $display("-----------------------------------------------");
    $display("Simulation Completed Successfully.");
    $display("-----------------------------------------------");

    $finish;

end

endmodule