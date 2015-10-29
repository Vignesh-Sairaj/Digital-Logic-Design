`include "dff.v"

module JohnCount( n0, n1, n2, n3, clk, reset);

    input clk, reset;
    output n0, n1, n2, n3;
    
    
    
   // assign n3Bar = ~n3;
        
    dff dff_0(n0, (~n3), clk, reset);
    
    dff dff_1(n1, n0, clk, reset);
     
    dff dff_2(n2, n1, clk, reset);
    
    dff dff_3(n3, n2, clk, reset);

endmodule
