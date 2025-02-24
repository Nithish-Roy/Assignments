module barrel_shifter(input [3:0] d, input [1:0] shift, input dir, output reg [3:0] y);
  always @(*)
    if (dir) y = d << shift;
    else y = d >> shift;
endmodule
