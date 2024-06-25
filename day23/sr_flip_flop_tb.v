`timescale 1ns / 1ps

module sr_flip_flop_tb;

    
    reg S;
    reg R;
    reg clk;
    reg reset;

    
    wire Q;
    wire Qn;

    
    sr_flip_flop uut (
        .S(S), 
        .R(R), 
        .clk(clk), 
        .reset(reset), 
        .Q(Q), 
        .Qn(Qn)
    );

    
    always #5 clk = ~clk;

    initial begin
        
        S = 0;
        R = 0;
        clk = 0;
        reset = 1;

        
        #10;
        reset = 0;

       
        S = 1; R = 0;
        #10;
        
       
        S = 0; R = 1;
        #10;

        S = 0; R = 0;
        #10;

        S = 1; R = 1;
        #10;

        S = 0; R = 0;
        #10;

    
        reset = 1;
        #10;
        reset = 0;

      
        S = 1; R = 0;
        #10;

        $stop; 
    end
      
endmodule
