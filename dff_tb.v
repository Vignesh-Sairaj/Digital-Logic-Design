`include "dff.v"

module dff_tb;
    wire q;
    reg d, clk, reset;
    
    dff dff_0(q, d, clk, reset);
    
    initial
    begin
        reset = 1'b1;
        clk = 1'b0;
        d = 1'b0;
        
        #4 reset = 1'b0; d = 1'b1;
        
        #2 d = 1'b1;
        
        #2 d = 1'b0;
        
        #4 d = 1'b1;
        
        #8
        
        $finish;
    end
    
    always
        #2 clk = ~clk;
        
    initial
        $monitor($time, ") clk = %b, reset = %b, d = %b, q = %b", clk, reset, d, q);
        
    initial
    begin
        $dumpfile("dff_test.vcd");
        $dumpvars;
    end
endmodule
