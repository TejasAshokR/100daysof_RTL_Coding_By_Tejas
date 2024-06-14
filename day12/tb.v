`timescale 1ns/1ps

module tb;
reg [3:0]b;
wire [3:0]g;
binary_to_gray dut(b,g);
initial begin
b=4'b0000; #10;
b=4'b0001; #10; 
b=4'b0010; #10; 
b=4'b0011; #10; 
b=4'b0101; #10; 
end
initial
begin
$monitor("binary:%b gray:%b",b,g);

#100 $finish;
end
endmodule
