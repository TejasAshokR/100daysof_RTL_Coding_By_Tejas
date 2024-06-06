module tb1;
reg a,b;
wire diff,bo;
half_sub dut(a,b,diff,bo);
initial
begin
#10 a=0;b=0;
#10 a=0;b=1;
#10 a=1;b=0;
#10 a=1;b=1;
end
endmodule
