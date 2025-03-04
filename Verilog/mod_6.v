module mod6_counter(
    input clk, reset,
    output reg [2:0] count
);
    always @(posedge clk or posedge reset) begin
        if (reset)
            count <= 0;
        else if (count == 5)
            count <= 0;
        else
            count <= count + 1;
    end
endmodule
