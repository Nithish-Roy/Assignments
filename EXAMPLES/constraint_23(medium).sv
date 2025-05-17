 // Add “size” number of entries to a queue. The entry of queue is randomized between 0 to “size”

`define SIZE 10

class tester;
  
  rand int queue_1 [$];
  
  constraint for_size {queue_1.size() inside {[0:`SIZE]};}
  
  constraint for_val {foreach(queue_1[i])
                     	
    queue_1[i] inside {[10:100]};}
  
  function void display();
    
    $display(" queue_1 %p", queue_1);
    
  endfunction 
  
endclass

module test;
  
  initial begin 
    
    tester tst;
    
    tst = new();
    
    repeat(10) begin 
      
      tst.randomize();
      
      tst.display();
      
    end
    
  end
  
endmodule

