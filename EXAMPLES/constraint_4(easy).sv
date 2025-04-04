//create a array with the size of 5 to 10 and the values in the array must be unique

class test;
  
  rand byte unsigned a [];
  
  constraint for_size {
    a.size() inside {[5:10]};
  }
  
  constraint for_value { 
      unique { a };
  }
  
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
  
