
// Generate an array of random real random number

class test;
  
  rand int array [];
  
  constraint size {array.size() inside {[1:10]};}
  
  constraint value {foreach(array[i])
                   	
    array[i] inside {[10:100]};}
  
  function void display();
    
    $display("%p", array);
    
  endfunction
  
endclass

module tester;
  
  initial begin 
    
    test tst;
    
    tst = new();
    
    repeat(3) begin 
      
      tst.randomize();
      
      tst.display();
      
    end
    
  end
  
endmodule
  

