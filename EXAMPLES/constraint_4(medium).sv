// Write a constraint for an array of numbers such that the size of array ranges from 16 to 32 elements, and even index locations should have odd numbers and odd index locations should have even numbers, numbers rage is between 16 to 127

class test;
  
  rand byte unsigned a [];
  
  constraint for_size{ a.size() inside {[16:32]};}
  
  constraint for_all{ 
  
    foreach(a[i])
     
      if(i % 2 == 0)
        
        a[i] % 2 != 0;
    
    else if (i % 2 != 0)
      
      a[i] % 2 == 0;
  }
                    
  constraint for_arr {
    foreach(a[i])
    a[i] inside {[16:127]};  }
  
endclass

module tester;
  
  test tst;
  
  initial begin
    
    tst = new();
    
    repeat(5) begin
      
      void'(tst.randomize());
      
      $display("a = %p", tst.a,);
      
    end
    
  end
  
  endmodule
  
