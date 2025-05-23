// Write a constraint to generate a pattern
// 1221122112211…

class tester;
  
  rand int array[15];
  
  constraint for_array_val {foreach(array[i])
                           
    if(i %4 == 0 || i%4 == 3)
      array[i] == 1;
	
    else
                              
      array[i] == 2;
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
