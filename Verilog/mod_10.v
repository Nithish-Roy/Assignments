module mod10_counter(
    input clk, reset,
    output reg [3:0] count
);
    always @(posedge clk or posedge reset) begin
        if (reset)
            count <= 0;
        else if (count == 9)
            count <= 0;
        else
            count <= count + 1;
    end
endmodule
