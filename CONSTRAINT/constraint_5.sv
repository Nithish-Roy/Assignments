//  Write a constraint to generate a pattern
// 123123123123

class tester;
  
  rand int array[12];
  
  constraint for_array_val {foreach(array[i])
                           
    array[i]  == ((i % 5) + 1);}
  
  function void display();
    
    $display("%p", array);
    
  endfunction 
  
endclass


module test;
  
  initial begin
    
    tester tst;
    
    tst = new();
    
    repeat(1) begin 
      
      tst.randomize();
      
      tst.display();
      
    end
    
  end
  
endmodule
