module name(clk,reset,count);
 input clk,reset;
 output reg [3:0]count;

 always @(negedge clk)
 begin 
    if(reset==1'b1)
    begin 
        count<=4'b0000;
    end
    else
    begin
        count<=count+1;
    end
 end
endmodule