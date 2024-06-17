`timescale 1ns/1ps
module demux_2_1(
    input sel,
    input i,
    output y1,
    output y2
);
    assign y1 = sel ? 1'b0 : i;
    assign y2 = sel ? i : 1'b0;
endmodule

module demux_1_8(
    input [2:0] s, // Adjusted to 3 bits, since we need 3 select lines for 1:8 demux
    input i,
    output y0,
    output y1,
    output y2,
    output y3,
    output y4,
    output y5,
    output y6,
    output y7
);

    wire z0, z1, z2, z3, z4, z5;

    demux_2_1 d0(s[2], i, z0, z1); // First level demux

    demux_2_1 d1(s[1], z0, z2, z3); // Second level demux
    demux_2_1 d2(s[1], z1, z4, z5);

    demux_2_1 d3(s[0], z2, y0, y1); // Third level demux
    demux_2_1 d4(s[0], z3, y2, y3);
    demux_2_1 d5(s[0], z4, y4, y5);
    demux_2_1 d6(s[0], z5, y6, y7);

endmodule

