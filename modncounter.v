module counter(clk,reset,n,count);
 input clk,reset;
 input [3:0]n;
 output reg [3:0]count;

 always @(negedge clk)
 begin
    if(reset==1'b1)
        count<=4'b0000;
    else if(count==n)
        count<=4'b0000;
    else
        count<=count+1;
 end

endmodule