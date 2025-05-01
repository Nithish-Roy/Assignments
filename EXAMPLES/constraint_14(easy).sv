// Soft constraint using eth_pkt where constraint len is 42 to 1500 and inline constraint with 2000 len.

class test;
  
  rand int eth_pkt [];
  
  constraint for_len { soft eth_pkt.size() inside {[42:1500]};}
  
  constraint for_data { foreach(eth_pkt[i])
                                
                                eth_pkt[i] == i * 2;
                                
                                }
endclass

module tester;
  
  test tst;
  
initial begin
  
  tst = new();
  
  repeat(1) begin
    
    tst.randomize() with { eth_pkt.size() == 20 ;} ;
    
    $display("the array %p", tst.eth_pkt);
    
  end
  
end
  
endmodule

// the array '{0, 2, 4, 6, 8, 10, 12, 14, 16, 18, 20, 22, 24, 26, 28, 30, 32, 34, 36, 38}
