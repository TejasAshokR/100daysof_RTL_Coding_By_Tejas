module half_adder(a,b,sum,carry);
input a,b;
output sum,carry;
assign sum=a^b;
assign carry=a&b;
endmodule


module fa_using_ha(a,b,c,sm,co);
input wire a,b,c;
output wire sm,co;
wire s1,c1,c2;
//half adder 1
assign s1=a^b;
assign c1=a&b;
//half adder 2
assign sm=s1^c;
assign c2=s1&c;
//for carry
assign co=c1|c2;
endmodule
