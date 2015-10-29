`include "dff.v"

module lift(grn, red, cmd, clk, reset);
    input cmd, clk, reset;
    output grn, red;
    wire state;
    

    dff dff0(state, cmd, clk, reset);
    
    assign grn = state;
    assign red = ~state;
        
endmodule
