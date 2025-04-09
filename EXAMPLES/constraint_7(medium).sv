// Write a constraint to generate Real numbers from 3.5 to 5.5
class test;
  
  rand integer a;
    
  constraint for_a {
    
    a inside {[35:55]};
        
  }
 
endclass

module tester;
  
  test tst;
  
    real b;

  initial begin
    
    tst = new();
    
    repeat(20) begin
      
      void'(tst.randomize());
      
      b = tst.a / 10.0 ;
      
      $display("b = %0.1f", b);
      
    end
    
  end
  
  endmodule


// // Write a constraint to generate Real numbers from 3.5 to 5.5
// class test;
  
//  real b;
  
//   function void post_randomize();
  
//     b = $urandom_range(0, 2000) / 1000.0 + 3.5;
 
//   endfunction
    
// endclass

// module tester;
  
//   test tst;
  
//   initial begin
    
//     tst = new();
    
//     repeat(20) begin
      
//       void'(tst.randomize());
      
//       $display("b = %0.1f", tst.b);
      
//     end
    
//   end
  
//   endmodule
