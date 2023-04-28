module testbench;
 reg clk,reset;
 reg [3:0]q;
 wire [3:0]count;

 name DUT(clk,reset,q,count);
 initial begin
    clk=1'b0;
    reset=1'b1;
 end

always
#1 clk=~clk;
always
#2 reset=1'b0;

 initial
 begin
    $dumpfile("code1.vcd");
    $dumpvars(0,testbench);
    $monitor($time," q =%b, count=%b",q,count);
    #2 q=4'b0001;
    #2 q=4'b0010;
    #2 q=4'b0100;
    #2 q=4'b1000;
    #100 $finish;
 end
endmodule