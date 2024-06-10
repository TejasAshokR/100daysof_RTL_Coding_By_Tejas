module mux2to1 (
    input wire a,      // First input
    input wire b,      // Second input
    input wire sel,    // Select line
    output wire y      // Output
);
    assign y = (sel) ? b : a;
endmodule


module mux4to1 (
    input wire [3:0] i,   // 4-bit input
    input wire [1:0] sel, // 2-bit select input
    output wire y         // Output
);
    wire y0, y1;          // Intermediate wires

    // Instantiate first level of 2:1 multiplexers
    mux2to1 mux0 (
        .a(i[0]),
        .b(i[1]),
        .sel(sel[0]),
        .y(y0)
    );

    mux2to1 mux1 (
        .a(i[2]),
        .b(i[3]),
        .sel(sel[0]),
        .y(y1)
    );

    // Instantiate second level of 2:1 multiplexer
    mux2to1 mux2 (
        .a(y0),
        .b(y1),
        .sel(sel[1]),
        .y(y)
    );
endmodule
