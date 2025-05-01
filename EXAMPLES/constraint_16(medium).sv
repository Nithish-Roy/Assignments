// Factorial of first 5 even numbers using constraints

// Write a function to calculate factorial

class test;
  
   rand int a;
  
      int fact;
  
  constraint for_even { a inside {[1:10]};}
  
  constraint for_evn { a %2 == 0;}
    
    function void factorial();
      
    fact = 1; 
      
    for (int i = a; i >= 1; i--) begin
      
      fact *= i;
      
    end
      
    $display("a = %0d, factorial = %0d", a, fact);
      
  endfunction
  
endclass

module tester;
  
  test tst;
  
initial begin
  
  tst = new();
  
  repeat(10)begin
    
    tst.randomize() ;
    
    tst.factorial ();
    
  end
  
end
  
endmodule

//          10
// a = 10, factorial = 3628800
//           8
// a = 8, factorial = 40320
//           4
// a = 4, factorial = 24
//           4
// a = 4, factorial = 24
//           6
// a = 6, factorial = 720
//           4
// a = 4, factorial = 24
//           8
// a = 8, factorial = 40320
//           8
// a = 8, factorial = 40320
//           6
// a = 6, factorial = 720
//           4
// a = 4, factorial = 24
