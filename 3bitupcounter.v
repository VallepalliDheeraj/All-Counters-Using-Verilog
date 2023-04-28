module name(clk,reset,count);
 input clk,reset;
 output reg [2:0]count;

 always @(negedge clk)
 begin 
    if(reset==1'b1)
    begin 
        count<=3'b000;
    end
    else
    begin
        count<=count+1;
    end
 end
endmodule