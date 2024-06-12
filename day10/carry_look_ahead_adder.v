module carry_look_ahead_adder(
input [3:0]a,b,
input cin,
output [3:0]sum,
output carry);

wire p0,g0,p1,g1,p2,g2,p3,g3;
wire [3:0]c;
and (g0,a[0],b[0]);
and (g1,a[1],b[1]);
and (g2,a[2],b[2]);
and (g3,a[3],b[3]);

xor (p0,a[0],b[0]);
xor (p1,a[1],b[1]);
xor (p2,a[2],b[2]);
xor (p3,a[3],b[3]);

xor (sum[0],p0,cin);
xor (sum[1],p1,c[0]);
xor (sum[2],p2,c[1]);
xor (sum[3],p3,c[2]);

assign  c[0] = g0 | (p0 & cin),
        c[1] = g1 | (p1 & g0) | (p1 & p0 & cin),
        c[2] = g2 | (p2 & g1) | (p2 & p1 & g0) | (p2 & p1 & p0 & cin),
        c[3] = g3 | (p3 & g2) | (p3 & p2 & g1) | (p3 & p2 & p1 & g0) |(p3 & p2 & p1 & p0 & cin);
assign carry = c[3];
endmodule