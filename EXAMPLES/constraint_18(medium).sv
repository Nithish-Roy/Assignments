// Write constraint to generate pattern 9-7-5-3-1-8-6-4-2-0

class test ;

  rand int array [10];

  constraint for_val {foreach(array[i])
    	
    if (i == 0) 
      
      array[i] == 9 ;
                      
	else if (i<5)
      
      array[i] == array[0] - (i*2)	;
    
	else if (i >=5) 
           
      array[i] == array[0] - array[9-i] ;
    
                              }
  
  function void display();
    
    $display("%p", array);
    
  endfunction
  
endclass


module tester;
  
  initial begin 
    
    test tst ;
    
    tst = new();
    
    repeat(10) begin 
      
      tst.randomize();
      
      tst.display();
      
    end
    
  end
  
endmodule
