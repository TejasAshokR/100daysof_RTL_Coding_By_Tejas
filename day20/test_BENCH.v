module test_BENCH;
  reg reset;
  reg clk;
  reg d;
  wire q;
  wire q0;

  dflip_flop uut (.reset(reset),.clk(clk),.d(d),.q(q),.q0(q0) );
initial begin
    clk = 0;
    forever #5 clk = ~clk; 
  end

  initial begin
    
    reset = 1;
    d = 0;
    #10 reset = 1;
    #10 reset = 0;

    #10 d = 1;
    #20;

    #10 d = 0;
    #20;

    #10 reset = 1;
    #10 reset = 0;

  
    #20 $finish;
  end
initial begin
    $monitor("At time %t: reset = %b, clk = %b, d = %b, q = %b, q0 = %b",
             $time, reset, clk, d, q, q0);
  end
endmodule

