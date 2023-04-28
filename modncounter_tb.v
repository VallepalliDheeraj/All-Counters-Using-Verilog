module testbench;
 reg clk,reset;
 reg [3:0]n;
 wire [3:0]count;

 counter DUT(clk,reset,n,count);
 initial begin
    clk=1'b0;
    reset=1'b1;
    n=4'b1010;
 end

always
#1 clk=~clk;

always
#10 reset=1'b0;

 initial
 begin
    $dumpfile("code1.vcd");
    $dumpvars(0,testbench);
    $monitor($time," count=%b",count);
    #54 $finish;
 end
endmodule