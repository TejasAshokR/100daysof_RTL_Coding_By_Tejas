`timescale 1ns/1ps

module multiplier(
       input [3:0]a,b,
       output reg [7:0]y);
       
		 reg [7:0] t1,t2,t3,t4;
always@(a,b)
begin
            t1=0;t2=0;t3=0;t4=0;
       if(b[0]) 
	        t1=a<<0;//left shift operation
	    if(b[1]) 
	        t2=a<<1;
	    if(b[2]) 
	        t2=a<<2;
	    if(b[3]) 
	        t2=a<<3;
	    y=t1+t2+t3+t4;
       end
endmodule
