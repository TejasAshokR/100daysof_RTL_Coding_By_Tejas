`timescale 1ns/1ps
module fa(
input a,b,c,
output reg sum,carry);
always@(*)
begin
sum=a^b^c;
carry=(a&b)|(b&c)|(c&a);
end
endmodule

module mux(
input a,b,sel,
output reg y);
always@(*)
begin
y=(~sel&a)|(sel&b);
end
endmodule


module carry_select_adder(
input [3:0]a,b,
input c,
output [3:0]sum,
output carry);
wire [16:0] w;

fa fa0(a[0],b[0],1'b0,w[0],w[1]);
fa fa1(a[1],b[1],w[1],w[2],w[3]);
fa fa2(a[2],b[2],w[3],w[4],w[5]);
fa fa3(a[3],b[3],w[5],w[6],w[7]);

fa fa4(a[0],b[0],1'b1,w[8],w[9]);
fa fa5(a[1],b[1],w[9],w[10],w[11]);
fa fa6(a[2],b[2],w[11],w[12],w[13]);
fa fa7(a[3],b[3],w[13],w[14],w[15]);

mux mux0(w[0],w[8],c,sum[0]);
mux mux1(w[2],w[10],c,sum[1]);
mux mux2(w[4],w[12],c,sum[2]);
mux mux3(w[6],w[14],c,sum[3]);

mux mux5(w[7],w[15],c,carry);
endmodule
