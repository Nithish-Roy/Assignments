
// Write constraint to fill array with value in ascending order

class tester ;
  
  rand int array[10] ;
  
  constraint for_val { foreach(array[i])
    array[i] inside {[10:100]};}
  
  constraint array_element {foreach(array[i])
  
    if(i<=8)
    
    array[i] < array[i+1];}
  
  function void display();
    
    $display("%p", array);
    
  endfunction 
  
endclass

module tester;
  
  initial begin 
    
    tester tst;
    
    tst = new();
    
    repeat (10) begin 
      
      tst.randomize();
      
      tst.display();
      
    end
    
  end
  
endmodule
