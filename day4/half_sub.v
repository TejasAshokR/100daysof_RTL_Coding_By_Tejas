module half_sub(a,b,diff,bo);
input a,b;
output diff,bo;
assign diff=a^b;
assign bo=(~a&b);
endmodule
