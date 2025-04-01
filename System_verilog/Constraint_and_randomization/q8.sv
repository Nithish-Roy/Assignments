class Packet;
  rand bit[31:0] addr;
  constraint c_addr { addr inside{ [0:100]};}
endclass

module test;
  Packet p = new();

initial begin
p.c_addr.constraint_mode(0);
  repeat(10) begin
  p.randomize with {addr < 200;};
    $display("the randomized values are = %d", p.addr);
  end
end
endmodule

// the randomized values are =         26
// the randomized values are =        122
// the randomized values are =         51
// the randomized values are =         53
// the randomized values are =        128
// the randomized values are =        114
// the randomized values are =        144
// the randomized values are =         15
// the randomized values are =         29
// the randomized values are =        117
