module tb;
reg a,b,c;
wire diff,bo;
full_sub dut(a,b,c,diff,bo);
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
$monitor("at time=%t: a=%b,b=%b,c=%b,diff=%b,bo=%b",$time,a,b,c,diff,bo);
end
endmodule
