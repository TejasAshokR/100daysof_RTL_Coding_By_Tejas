module test_bench;
reg [3:0]divident,divisor;
wire [3:0] quotient,reminder;
divide dut(divident,divisor,quotient,reminder);
always begin
        divident =4'b0100;  
        divisor =4'b0010; 
     end
initial
begin
$monitor("%0b /%0b =%0b with reminder %0d",divident,divisor,quotient,reminder);
#100 $finish;
end
endmodule
