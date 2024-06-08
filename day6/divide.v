`timescale 1ns/1ps
module divide(
input [3:0]divident,divisor,
output reg [3:0] quotient,reminder);

always@(divident,divisor)begin
     integer max_iterations;
     max_iterations = 15;  // Maximum number of iterations to ensure termination

     quotient=0;
	  reminder=divident;
	  while(reminder>=divisor && max_iterations > 0)
	  begin
	        reminder=reminder-divisor;
			  quotient=quotient+1;
			  max_iterations = max_iterations - 1;
	  end
end
endmodule
