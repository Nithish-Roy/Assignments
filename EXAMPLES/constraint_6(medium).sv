// write the constraint to gen. this seq. 0 1 0 2 0 3 0 4 0 5 0  6  0  7  0  8  0  9  0 1 0 2 0 3 0 4 0 5 … in array t
class test;
  
  rand int unsigned a [30];
  
  constraint sort {
  
    foreach(a[i])
      
      if(i % 2 == 0)
        
        a[i] <= 0;
    
    else 
      
      a[i] == ((i / 2) % 9) + 1
;
  
  }
  
endclass

module tester;
  
  test tst;
  
  initial begin
    
    tst = new();
    
    repeat(20) begin
      
      void'(tst.randomize());
      
      $display("a = %p", tst.a,);
      
    end
    
  end
  
  endmodule

// # KERNEL: a = '{0, 1, 0, 2, 0, 3, 0, 4, 0, 5, 0, 6, 0, 7, 0, 8, 0, 9, 0, 1, 0, 2, 0, 3, 0, 4, 0, 5, 0, 6}
