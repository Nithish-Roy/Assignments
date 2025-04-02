module example;
  
  int num = 1111222254;
  
  int digit;
  
  int temp;

  
  int queue [$];
  
  initial begin
    
    for (int i = 0; i < 10; i++) begin
      
      digit = num % 10;
      
      num = num / 10;
      
      queue.push_back(digit);
      
    end
    
    queue.rsort();
    
    $display(queue[0]);
    
    $display(queue[1]);
    
  end
  
endmodule
// to display the maximum number in the given set of integers using queue
