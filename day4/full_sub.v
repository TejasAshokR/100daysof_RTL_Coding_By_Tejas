module full_sub(a,b,c,diff,bo);
input a,b,c;
output diff,bo;
assign diff=a^b^c;
assign bo=(~a&b)|(b&c)|(~a&c);
endmodule
