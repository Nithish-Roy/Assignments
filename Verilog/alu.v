module alu(input [3:0] a, input [3:0] b, input [2:0] op, output reg [3:0] result);
  always @(*)
    case (op)
      3'b000: result = a + b;
      3'b001: result = a - b;
      3'b010: result = a & b;
      3'b011: result = a | b;
      3'b100: result = a ^ b;
      3'b101: result = ~a;
      3'b110: result = a << 1;
      3'b111: result = a >> 1;
    endcase
endmodule

module multiplier(input [3:0] a, input [3:0] b, output [7:0] product);
  assign product = a * b;
endmodule

module divider(input [3:0] a, input [3:0] b, output [3:0] quotient, output [3:0] remainder);
  assign quotient = a / b;
  assign remainder = a % b;
endmodule
