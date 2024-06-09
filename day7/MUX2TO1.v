//2:1mux using ternary operator
`timescale 1ns/1ps

module MUX2TO1(i0,i1,sel,y);
input i0,i1,sel;
output y;
assign y=sel?i1:i0;
endmodule



//Another method using behavioral modeling


/*module mux2to1 (
    input wire a,    // First input
    input wire b,    // Second input
    input wire sel,  // Select input
    output reg y     // Output
);
    // Always block to model the behavior of the multiplexer
    always @(*) begin
        if (sel)
            y = b;
        else
            y = a;
    end
endmodule
 */
