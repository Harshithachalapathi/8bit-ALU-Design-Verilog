`timescale 1ns/1ps

module alu_tb;

reg [7:0] A;
reg [7:0] B;
reg [2:0] sel;
wire [7:0] result;

alu_8bit uut(
.A(A),
.B(B),
.sel(sel),
.result(result)
);

initial begin

$dumpfile("dump.vcd");
$dumpvars(0, alu_tb);

A = 8'b00001111;
B = 8'b00000011;

sel = 3'b000; #10;
sel = 3'b001; #10;
sel = 3'b010; #10;
sel = 3'b011; #10;
sel = 3'b100; #10;
sel = 3'b101; #10;
sel = 3'b110; #10;
sel = 3'b111; #10;

$finish;

end

endmodule
