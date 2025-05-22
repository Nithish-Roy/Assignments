// Write a constraint that generates odd numbers
// within 0 to 30.
class test;
  
  rand int number;
  
  constraint for_number {number inside {[0:30]};}
  
  function void display();
    
    $display("number = %0d", number);
    
  endfunction
  
endclass

module tester;
  
  initial begin 
    
    test tst;
    
    tst = new();
    
    repeat(10) begin 
      
      tst.randomize();
      
      tst.display();
      
    end
    
  end
  
endmodule
