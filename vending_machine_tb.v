`include "vending_machine.v"

module vending_machine_tb;
reg clk,reset, coin5,coin10;
wire dispense;

vending_machine dut(.clk(clk),.reset(reset),.coin5(coin5),.coin10(coin10),.dispense(dispense));
initial begin
    $dumpfile("vending_machine.vcd");
    $dumpvars(0,vending_machine_tb);
    reset = 1;
    clk = 0;
    coin5 = 0;
    coin10 = 0;

    #10 reset = 0;
    #12 coin5 = 1;
    #12 coin5 = 0;

    #15 coin5 = 1;
    #15 coin5 = 0;

    #20;

    #20 coin10 = 1;
    #20 coin10 = 0;
    #40 $finish;

end

always #5 clk = ~clk;
always@(*)
    $monitor("TIME=%0t I/P:coin5=%b,coin10=%b O/P:Dispense=%b",$time,coin5,coin10,dispense);

endmodule