//1. For a variable rand bit [31:0] addr,write a constraint to generate the address
//range between 0-20 and 4020-4075?

class q1;
rand bit [31:0] addr;

constraint for_addr {addr inside {[0:20],[4020:4075]};}
endclass

module q1_tester;
q1 test;
initial begin 
test = new();
repeat(30) begin
  test.randomize();
  $display("value of addr = %0d ",test.addr);
$display("randomization called");
end
end
endmodule

//# KERNEL: value of addr = 4073 
//# KERNEL: randomization called
//# KERNEL: value of addr = 4040 
//# KERNEL: randomization called
//# KERNEL: value of addr = 20 
//# KERNEL: randomization called
//# KERNEL: value of addr = 1 
//# KERNEL: randomization called
//# KERNEL: value of addr = 4071 
//# KERNEL: randomization called
//# KERNEL: value of addr = 4072 
//# KERNEL: randomization called
//# KERNEL: value of addr = 4074 
//# KERNEL: randomization called
//# KERNEL: value of addr = 4039 
//# KERNEL: randomization called
//# KERNEL: value of addr = 15 
//# KERNEL: randomization called
//# KERNEL: value of addr = 4057 
//# KERNEL: randomization called
//# KERNEL: value of addr = 4036 
//# KERNEL: randomization called
//# KERNEL: value of addr = 11 
//# KERNEL: randomization called
//# KERNEL: value of addr = 4033 
//# KERNEL: randomization called
//# KERNEL: value of addr = 18 
//# KERNEL: randomization called
//# KERNEL: value of addr = 4038 
//# KERNEL: randomization called
//# KERNEL: value of addr = 4053 
//# KERNEL: randomization called
//# KERNEL: value of addr = 15 
//# KERNEL: randomization called
//# KERNEL: value of addr = 4049 
//# KERNEL: randomization called
//# KERNEL: value of addr = 4062 
//# KERNEL: randomization called
//# KERNEL: value of addr = 16 
//# KERNEL: randomization called
//# KERNEL: value of addr = 4023 
//# KERNEL: randomization called
//# KERNEL: value of addr = 16 
//# KERNEL: randomization called
//# KERNEL: value of addr = 9 
//# KERNEL: randomization called
//# KERNEL: value of addr = 9 
//# KERNEL: randomization called
//# KERNEL: value of addr = 4037 
//# KERNEL: randomization called
//# KERNEL: value of addr = 4023 
//# KERNEL: randomization called
//# KERNEL: value of addr = 4048 
//# KERNEL: randomization called
//# KERNEL: value of addr = 4065 
//# KERNEL: randomization called
//# KERNEL: value of addr = 4045 
//# KERNEL: randomization called
//# KERNEL: value of addr = 4061 
//# KERNEL: randomization called

