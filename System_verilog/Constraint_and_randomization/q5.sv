class packet;
rand bit [3:0] addr;
  constraint addr_range { soft addr > 6; } //soft constratint
endclass

module soft_constr;
initial begin
packet pkt;
pkt = new();
repeat(2) begin
  pkt.randomize() with { addr < 6;}; //overriding constraint
  $display("addr = %0d",pkt.addr);
end
end
endmodule

// addr = 2
// addr = 3
