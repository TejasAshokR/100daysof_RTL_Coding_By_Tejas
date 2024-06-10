module testbench;
    reg [3:0] i;       // 4-bit input
    reg [1:0] sel;     // 2-bit select input
    wire y;            // Output

    // Instantiate the 4:1 multiplexer
    mux4to1 uut (
        .i(i),
        .sel(sel),
        .y(y)
    );

    initial begin
        // Apply test vectors
        $monitor("At time %0d: i = %b, sel = %b, y = %b", $time, i, sel, y);
        
        // Test case 1
        i = 4'b0001; sel = 2'b00; #10; // Expect y = 1 (i[0])
        i = 4'b0001; sel = 2'b01; #10; // Expect y = 0 (i[1])
        i = 4'b0001; sel = 2'b10; #10; // Expect y = 0 (i[2])
        i = 4'b0001; sel = 2'b11; #10; // Expect y = 0 (i[3])
        
        // Test case 2
        i = 4'b1010; sel = 2'b00; #10; // Expect y = 0 (i[0])
        i = 4'b1010; sel = 2'b01; #10; // Expect y = 1 (i[1])
        i = 4'b1010; sel = 2'b10; #10; // Expect y = 0 (i[2])
        i = 4'b1010; sel = 2'b11; #10; // Expect y = 1 (i[3])

        // Test case 3
        i = 4'b1100; sel = 2'b00; #10; // Expect y = 0 (i[0])
        i = 4'b1100; sel = 2'b01; #10; // Expect y = 0 (i[1])
        i = 4'b1100; sel = 2'b10; #10; // Expect y = 1 (i[2])
        i = 4'b1100; sel = 2'b11; #10; // Expect y = 1 (i[3])

        $finish;
    end
endmodule
