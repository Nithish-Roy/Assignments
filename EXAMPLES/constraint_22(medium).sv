
// Declare 2 array(queue) elements each of size 10, randomize in such a way that 2nd array values are 1st array value added with 5 for each element.

class tester;
  
  rand int queue_1 [$];
  
  int queue_2 [$];
  
  constraint for_size {queue_1.size() == 10;}
  
  constraint for_val {foreach(queue_1[i])
                     	
    queue_1[i] inside {[10:100]};}

  function void q_2();
    
    foreach(queue_1[i])
      
      queue_2[i] = queue_1[i] + 5;
    
  endfunction 
  
  
  function void display();
    
    $display(" queue_1 %p", queue_1);
    
    $display("queue_2 %p", queue_2);
  
  endfunction 
  
endclass

module test;
  
  initial begin 
    
    tester tst;
    
    tst = new();
    
    repeat(10) begin 
      
      tst.randomize();
      
      tst.q_2();    
      
      tst.display();
      
    end
    
  end
  
endmodule
