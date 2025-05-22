//fibonacci series

class test;
  
  rand int num[20];
  
  constraint for_number {foreach(num[i])

    if(i < 2)
       
      num[i] == 0;
	
                         else  if(i== 2)
                           
                           num[i] == 1;
      
                         else 
                           
                           num[i] == num[i-1] + num[i-2];
                        }
    
    
  function void display();
   
    foreach(num[i])
      
      $display("number = %0d", num[i]);
    
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

