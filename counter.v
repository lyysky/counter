
 module counter(
                output [3:0]  q,
                input clk,
                input rst_n 
            );
    reg [3:0] q_r;

    always @(negedge rst_n or posedge clk)
    begin
        if(rst_n==1'b0) 
            q_r<=4'd0;
        else if(q_r==4'd13) 
            q_r<=4'd0; 
        else q_r<=(q_r+1);
    end

    assign q=q_r;

endmodule
