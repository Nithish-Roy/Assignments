// Write a constraint to generate a pattern
// 001002003004005

class tester;
  
  rand int array[15];
  
  constraint for_array_val {foreach(array[i])
                           
    if(i %3 == 2)
      
      array[i] == i/3 + 1;
	
    else
                              
      array[i] == 0;
                           }
  
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
