module tb;
reg a,b,c;
wire sm,co;
fa_using_ha dut(a,b,c,sm,co);
initial
begin
#10 a=0;b=0;c=0;
#10 a=0;b=0;c=1;
#10 a=0;b=1;c=0;
#10 a=0;b=1;c=1;
#10 a=1;b=0;c=0;
#10 a=1;b=0;c=1;
#10 a=1;b=1;c=0;
#10 a=1;b=1;c=1;
end
initial
begin
$monitor("at time %t: a=%b,b=%b,c=%b,sm=%b,co=%b",$time,a,b,c,sm,co);
end
endmodule
