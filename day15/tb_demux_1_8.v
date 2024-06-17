`timescale 1ns/1ps

module tb_demux_1_8();
    reg [2:0] s;
    reg i;

    wire y0, y1, y2, y3, y4, y5, y6, y7;

   demux_1_8 uut (
        .s(s),
        .i(i),
        .y0(y0),
        .y1(y1),
        .y2(y2),
        .y3(y3),
        .y4(y4),
        .y5(y5),
        .y6(y6),
        .y7(y7)
    );

    
    initial begin
        
       #10 s = 3'b000; i = 0;
                 $monitor("Time=%0t s=%b i=%b y0=%b y1=%b y2=%b y3=%b y4=%b y5=%b y6=%b y7=%b", 
                 $time, s, i, y0, y1, y2, y3, y4, y5, y6, y7);
        #10 s = 3'b000; i = 1;
        #10 s = 3'b001; i = 1;
        #10 s = 3'b010; i = 1;
        #10 s = 3'b011; i = 1;
        #10 s = 3'b100; i = 1;
        #10 s = 3'b101; i = 1;
        #10 s = 3'b110; i = 1;
        #10 s = 3'b111; i = 1;
        #100 $finish; // End the simulation
    end

endmodule
