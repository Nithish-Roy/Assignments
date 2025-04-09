// Write a constraint for 16bit addr to generate power of 2.
class test;
  
  rand bit [15:0] a;
  
  constraint for_a {
    
    (a != 0) && ((a & (a - 1)) == 0);
    
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
