module mux8to1(input [2:0] sel, input [7:0] d, output y);
  wire y1, y2;
  mux4to1 m1(sel[1:0], d[3:0], y1);
  mux4to1 m2(sel[1:0], d[7:4], y2);
  assign y = sel[2] ? y2 : y1;
endmodule
