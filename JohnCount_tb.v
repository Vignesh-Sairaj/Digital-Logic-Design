`include "JohnCount.v"


module JohnCount_tb;
    wire n0, n1, n2, n3;
    reg clk, reset;
    
    JohnCount JC_0(n0, n1, n2, n3, clk, reset);
    
    
    initial
    begin
        reset = 1'b1;
        clk = 1'b0;
        
        #3 reset = 1'b0;

        #64
        $finish;
    end
    
    always
        #2 clk = ~clk;
        
    initial
        $monitor($time, ") clk = %b :: %b %b %b %b", clk, n0, n1, n2, n3);
        
    initial
    begin
        $dumpfile("JohnCount_test.vcd");
        $dumpvars;
    end
    

endmodule
