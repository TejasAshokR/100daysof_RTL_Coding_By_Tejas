`timescale 1ns/1ps
module tb;
reg [3:0]g;
wire [3:0]b;
gray_to_binary dut(g,b);
initial
begin
g=4'b0000; #10;
g=4'b0001; #10;
g=4'b0010; #10;
g=4'b0011; #10;
end
initial
begin
$monitor("g=%b b=%b",g,b);
 
#100 $finish;
end
endmodule

