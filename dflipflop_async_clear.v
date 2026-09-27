module d_ff(
    input  d,
    input  clk,
    input  clear,
    output reg q);

    always @(posedge clk or posedge clear) begin
        if (clear)
            q <= 1'b0;  
        else
            q <= d;   
    end
endmodule
