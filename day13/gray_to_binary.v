`timescale 1ns/1ps
//using dataflow model
module gray_to_binary(
input [3:0]g,
output [3:0]b);
assign b[3]=g[3];
assign b[2]=g[3]^g[2];
assign b[1]=b[2]^g[1];
assign b[0]=b[1]^g[0];
endmodule

//using behavioral modeling
/*module gray_to_binary(
input [3:0]g,
output reg[3:0]b);
always@(*)
begin
integer i;
b[3]=g[3];

for(i=2; i>=0; i=i-1)
begin
b[i]=b[i+1]^g[i];
end
end
endmodule
*/
