// Write a constraint to generate a pattern
// 1122334455.

class test;
  
  rand bit [2:0]number[10];
  
  constraint for_number {foreach(number[i])

    number[i] == ( (i+2) / 2);}
  
  function void display();
   
    foreach(number[i])
      
      $display("number = %0d", number[i]);
    
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
