`timescale 1ns/1ps
module fa(
input wire a,b,c,
output wire s,co);
assign s=a^b^c;
assign co=(a&b)|(b&c)|(c&a);
endmodule

module ripple_carry_adder(
input wire [3:0]a,b,
input wire cin,
output wire [3:0]sum,
output wire [3:0]carry);
wire c1,c2,c3;

fa fa0(.a(a[0]),.b(b[0]),.c(cin),.s(sum[0]),.co(c1));

fa fa1(.a(a[1]),.b(b[1]),.c(c1),.s(sum[1]),.co(c2));

fa fa2(.a(a[2]),.b(b[2]),.c(c2),.s(sum[2]),.co(c3));

fa fa3(.a(a[3]),.b(b[3]),.c(c3),.s(sum[3]),.co(carry));

endmodule
