`timescale 1ns/1ps
module tb;
reg [3:0]a,b;
reg cin;
wire [3:0]sum;
wire carry;

ripple_carry_adder dut(a,b,cin,sum,carry);
initial
begin
a=4'b0101; b=4'b1010; cin=0;#10;
$display("a=%b b=%b c=%b sum=%b carry=%b",a,b,cin,sum,carry);

a = 4'b0011; b = 4'b0011; cin = 1'b0; #10;
$display("a=%b b=%b c=%b sum=%b carry=%b",a,b,cin,sum,carry);

a = 4'b0110; b = 4'b0101; cin = 1'b0; #10;
$display("a=%b b=%b c=%b sum=%b carry=%b",a,b,cin,sum,carry);

a = 4'b1111; b = 4'b1111; cin = 1'b0; #10;
$display("a=%b b=%b c=%b sum=%b carry=%b",a,b,cin,sum,carry);
#10 $finish;
end
endmodule
