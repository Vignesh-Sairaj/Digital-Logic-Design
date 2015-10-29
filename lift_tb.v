`include "lift.v"


module lift_tb;
    wire grn, red;
    reg cmd, clk, reset;
    
    lift lift0(grn, red, cmd, clk, reset);
    
    
    initial
    begin
        reset = 1'b1;
        clk = 1'b0;
        cmd = 1'b0;
        
        #1 reset = 1'b0;
        
        #3 cmd = 1'b0;
        
        #2 cmd = 1'b1;
        
        #2 cmd = 1'b1;
        
        #4 cmd = 1'b0;
        
        #8
        
        $finish;
    end
    
    always
        #2 clk = ~clk;
        
    initial
        $monitor($time, ") clk = %b, reset = %b, cmd = %b, green = %b, red = %b", clk, reset, cmd, grn, red);
        
    initial
    begin
        $dumpfile("lift_test.vcd");
        $dumpvars;
    end
    

endmodule
