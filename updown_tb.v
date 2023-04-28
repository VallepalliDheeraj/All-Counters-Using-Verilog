module testbench;
 reg clk,reset,mode;
 wire [3:0]count;

 name DUT(clk,reset,mode,count);
 initial begin
    clk=1'b0;
    reset=1'b1;
    mode=1'b1;
 end

always
#1 clk=~clk;
always
#50 mode=~mode;
always
#10 reset=1'b0;

 initial
 begin
    $dumpfile("code1.vcd");
    $dumpvars(0,testbench);
    $monitor($time,"count=%b",count);
    #100 $finish;
 end
endmodule