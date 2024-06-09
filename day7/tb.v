`timescale 1ns/1ps

module tb;
reg i0,i1,sel;
wire y;
MUX2TO1 dut(i0,i1,sel,y);
initial
begin
#10 sel=0; i0=0; i1=0;
#10 sel=0; i0=0; i1=1;
#10 sel=0; i0=1; i1=0;
#10 sel=0; i0=0; i1=1;
#10 sel=1; i0=0; i1=0;
#10 sel=1; i0=0; i1=1;
#10 sel=1; i0=1; i1=0;
#10 sel=1; i0=1; i1=1;
#10 $finish; 
end
initial
begin
$monitor("at time %t: i0=%b i1=%b sel=%b  y = %b",$time,i0,i1,sel,y);
end
endmodule

