// // Write a constraint to generate a pattern 01020304050
// Declare an array
// For even index of array, fill 0’s
// Odd index use the i+1/2 relation in foreach loop
class test;
  
  rand int eth_pkt [];
  
  constraint for_len { soft eth_pkt.size() inside {[0:20]};}
  
  constraint for_data { foreach(eth_pkt[i])
    
    if(i%2 == 0)
                                
      eth_pkt[i] == 0 ;
                     
	else 
      
      eth_pkt[i] == ( ((i+1)/2 - 1) % 5 ) + 1 ;

                                
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

// the array '{0, 1, 0, 2, 0, 3, 0, 4, 0, 5, 0, 1, 0, 2, 0, 3, 0, 4, 0, 5}
