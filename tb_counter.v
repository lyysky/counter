
module tb_counter;
    
    reg clk;
    reg rst_n;

    initial
        begin
        rst_n <=0;
        clk <=0;
        #300 rst_n <=1;
        #30000 $finish;
        end
    
    always #50 clk <= ~clk; 

    initial
        begin
        $fsdbDumpfile("tb_counter.fsdb");
        $fsdbDumpvars(0,tb_counter,"+mda");
        end

    wire [3:0] q;
    counter u_counter(
        .q  (q),
        .clk (clk),
        .rst_n (rst_n)
                       );

endmodule
