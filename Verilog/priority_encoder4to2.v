module priority_encoder4to2(input [3:0] d, output reg [1:0] y, output reg valid);
  always @(*)
    if (d[3]) {valid, y} = 3'b11;
    else if (d[2]) {valid, y} = 3'b10;
    else if (d[1]) {valid, y} = 3'b01;
    else if (d[0]) {valid, y} = 3'b00;
    else {valid, y} = 3'b00;
endmodule
