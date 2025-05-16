// Generate a random string whose name is between “pkt1” to “pkt20”

class tester ;
  
  rand int a;
  
  constraint array_element {
    
    a inside {[1:20]};}

  function void display();
    
    $display("pkt%0d",a);
    
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
