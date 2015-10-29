`include "tff.v"

module tff_tb;
    wire q;
    reg t, clk, reset;
    
    tff tff_0(q, t, clk, reset);
    
    initial
    begin
        reset = 1'b1;
        clk = 1'b0;
        t = 1'b1;
        #1 reset = 1'b0;
        
        #4 reset = 1'b0; t = 1'b1;

        $finish;
    end
    
    always
        #1 clk = ~clk;
        
    initial
        $monitor($time, ") clk = %b, reset = %b, t = %b, q = %b", clk, reset, t, q);
        
    initial
    begin
        $dumpfile("tff_test.vcd");
        $dumpvars;
    end
endmodule
