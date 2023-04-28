module testbench;
 reg clk,reset;
 wire [2:0]count;

 name DUT(clk,reset,count);
 initial begin
    clk=1'b0;
    reset=1'b1;
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
    #20 $finish;
 end
endmodule