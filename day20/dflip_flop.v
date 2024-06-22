module dflip_flop(reset,clk,d,q,q0);
input reset,clk,d;
output q,q0;
reg q=1'b0;
reg q0=1'b1;
always@(posedge clk)
begin
if(reset==1)
begin
q=1'b0;
q0=1'b1;
end
else
begin
q=0;
q0=`q;
end
endmodule
