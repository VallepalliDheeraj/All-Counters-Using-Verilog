module name(clk,reset,q,count);
input clk,reset;
input [3:0]q;
output reg [3:0]count;

always @(posedge clk)
begin
    if(reset==1'b1)
        count<=4'b0000;
    else 
        begin
            case({q})
            4'b0001: count<=4'b0010;
            4'b0010: count<=4'b0100;
            4'b0100: count<=4'b1000;
            4'b1000: count<=4'b0001;
            endcase
        end 
end
endmodule