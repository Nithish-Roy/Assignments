//constraint to generate unique even numbers in even locations and unique odd numbers oin odd location

class test;
  
  rand byte unsigned a [20];
  
  constraint for_all{ 
  
    foreach(a[i])
     
      if(i % 2 == 0)
        
        a[i] % 2 == 0;
    
    else if (i % 2 != 0)
      
      a[i] % 2 != 0;
  }
                    
  constraint for_arr {unique { a };  }
  
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
  
