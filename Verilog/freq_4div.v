module freq_div_4(
    input clk, reset,
    output reg out
);
    reg [1:0] count;

    always @(posedge clk or posedge reset) begin
        if (reset) begin
            count <= 0;
            out <= 0;
        end else if (count == 3) begin
            count <= 0;
            out <= ~out;
        end else begin
            count <= count + 1;
        end
    end
endmodule
