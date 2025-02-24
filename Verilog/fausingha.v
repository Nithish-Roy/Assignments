module half_adder(input a, input b, output sum, output carry);
  assign sum = a ^ b;
  assign carry = a & b;
endmodule

module full_adder(input a, input b, input cin, output sum, output carry);
  wire s1, c1, c2;
  half_adder ha1(a, b, s1, c1);
  half_adder ha2(s1, cin, sum, c2);
  assign carry = c1 | c2;
endmodule
