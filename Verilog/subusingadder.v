module subtractor_4bit(input [3:0] a, input [3:0] b, output [3:0] diff);
  assign diff = a + (~b + 1);
endmodule
