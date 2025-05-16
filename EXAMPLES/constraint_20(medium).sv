
// Write constraints to randomize only specific bit of a bit vector, others are all 0’s

class tester ;
  
  rand bit [7:0] value ;
  
  rand bit [2:0] to_rand;
  
  rand bit changer;
  
  constraint array_element {
    
    value == (8'b1 << to_rand) * changer;
  
  }
  
  function void display();
    
    $display("%d %b %b", changer, to_rand , value);
    
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

