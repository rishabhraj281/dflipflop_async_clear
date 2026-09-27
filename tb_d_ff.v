module tb_d_ff;
    reg  d, clk, clear;
    wire q;

   d_ff dut (.d(d),.clk(clk),.clear(clear),.q(q));

    initial clk = 0;
    always #5 clk = ~clk;

    initial begin
        d = 0;
       	clear = 1;
        #12 clear = 0;  

        d = 1; #10;
        d = 0; #10;
        d = 1; #10;
        $finish;
end 
    initial begin
        $monitor("Time=%0t | clk=%b clear=%b d=%b q=%b", $time, clk, clear, d, q);
end 
endmodule
