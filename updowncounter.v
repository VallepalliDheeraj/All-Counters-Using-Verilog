module name(clk,reset,mode,count);
input clk,reset,mode;
output reg [3:0]count;

always @(negedge clk)
begin
    case({reset,mode})
    2'b10: count<=4'b0000;
    2'b11: count<=4'b1111;
    2'b01: count<=count+1;
    2'b00: count<=count-1;
    endcase
end
endmodule
