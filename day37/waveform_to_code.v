module waveform_to_code(clk,reset,a_i,q_0);
input clk;
input reset;
input a_i;
output [2:0] q_0;
reg [2:0]p_count;
wire [2:0]next_count;

always@(posedge clk or posedge reset)
   if(reset)
      p_count<=3'b000;
   else
	   p_count<=next_count;
assign next_count=a_i ? 3'h4:(p_count ==3'h6)?3'h0:
                      p_count+3'h1;
assign q_0=p_count;
endmodule

		