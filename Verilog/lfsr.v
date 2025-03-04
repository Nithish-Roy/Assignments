module lfsr(
    input clk, reset,
    output reg [3:0] out
);
    always @(posedge clk or posedge reset) begin
        if (reset)
            out <= 4'b1001;
        else
            out <= {out[2:0], out[3] ^ out[2]};
    end
endmodule
