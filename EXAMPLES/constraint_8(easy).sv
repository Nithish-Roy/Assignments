// Write a constraint without an inside function to generate variable value within the range of 34 to 43?

class test;
  
  rand bit [15:0] a;
  
  constraint for_a {
    
    a >= 34;
    
    a <= 43;
    
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
