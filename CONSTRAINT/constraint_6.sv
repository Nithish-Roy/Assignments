// Write a constraint to generate a pattern
// 100100100100

class tester;
  
  rand int array[12];
  
  constraint for_array_val {foreach(array[i])
                           
    if(i %3 == 0)
      
      array[i] == 1;
	
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
