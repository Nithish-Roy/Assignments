// Randomize a value with even and odd values alternatively.

class test ;
  
  rand int unsigned data;
  
  constraint for_data {data inside {[0:100]};}
  
  function void generator();
    
     static int count = 0;
    
    int val;
    
    if(count % 2 == 0) begin
      
      val =  2*data;
    
      $display("even = %d",val);
      
      count++;
      
    end
    
    else begin

      val = 2*data + 1;
    
      $display("odd = %d" ,val);
      
      count ++;
    end
    
  endfunction
    
endclass

module tester;

  test tst;
  
  initial begin
  
    tst = new();
    
    repeat(20) begin
      
      void'(tst.randomize());
      
      tst.generator();
      
    end

  end
  
  endmodule

