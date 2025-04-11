// Declare a Queue, Fill with 20 random values between 200 to 300, no repetition

class test ;
  
  rand int queue [$:20];
 
  constraint for_size {queue.size() == 20;}
  
  constraint for_data {foreach(queue[i])
    queue[i] inside {[200:300]};}
  
  constraint for_norep { unique {queue};}
       
endclass

module tester;
  
  test tst;
  
  initial begin
  
    tst = new();
    
    repeat(1) begin
      
      void'(tst.randomize());
      
      $display("a = %p", tst.queue);
      
    end

  end
  
  endmodule

