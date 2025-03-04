module programmable_counter(
    input clk, reset,
    input [3:0] max_count,
    output reg [3:0] count
);
    always @(posedge clk or posedge reset) begin
        if (reset)
            count <= 0;
        else if (count == max_count)
            count <= 0;
        else
            count <= count + 1;
    end
endmodule
