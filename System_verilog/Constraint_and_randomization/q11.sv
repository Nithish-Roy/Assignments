//11. Inside the class two random variables are there A &amp; B that A should be
//greater than B externally you have to write a condition for this
class q11;
  rand  bit [7:0] a;
  rand  bit [7:0] b;

extern constraint for_ab;
endclass

constraint q11::for_ab {a > b;}

module q11_tester;

q11 test;

initial begin 
test = new();
repeat(20) begin
test.randomize();
$display("values of a and b are %0d , %0d", test.a, test.b);
end
end
endmodule
// # KERNEL: values of a and b are 234 , 215
// # KERNEL: values of a and b are 209 , 143
// # KERNEL: values of a and b are 227 , 0
// # KERNEL: values of a and b are 244 , 117
// # KERNEL: values of a and b are 148 , 34
// # KERNEL: values of a and b are 232 , 12
// # KERNEL: values of a and b are 199 , 10
// # KERNEL: values of a and b are 237 , 45
// # KERNEL: values of a and b are 250 , 229
// # KERNEL: values of a and b are 188 , 65
// # KERNEL: values of a and b are 62 , 44
// # KERNEL: values of a and b are 11 , 8
// # KERNEL: values of a and b are 155 , 121
// # KERNEL: values of a and b are 221 , 159
// # KERNEL: values of a and b are 218 , 38
// # KERNEL: values of a and b are 244 , 136
// # KERNEL: values of a and b are 237 , 53
// # KERNEL: values of a and b are 72 , 39
// # KERNEL: values of a and b are 210 , 13
// # KERNEL: values of a and b are 221 , 125
