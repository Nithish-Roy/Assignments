`timescale 1ns/1ps

module design_tb;
    reg clk;
    reg rst;
    reg x;
    wire y;

    design_ uut (
        .clk(clk),
        .rst(rst),
        .x(x),
        .y(y)
    );
  
    always #10 clk = ~clk;

    initial begin
        clk = 0;
        rst = 1;
        x = 0;
        
        $dumpfile("design_tb.vcd");
        $dumpvars(0, design_tb);

        // Apply reset for 50 ns
        #50 rst = 0;


        repeat (100) begin
            #20 x = $random % 2;
        end

        #200 $finish;
    end

endmodule
