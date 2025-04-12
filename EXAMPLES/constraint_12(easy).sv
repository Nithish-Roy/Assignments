// Generate a random number between -5 to -15 using system tasks.
class test;
    
  function generator();
    
    int num;
    
    num = $urandom_range(5,15);
    
    num = num * (-1) ;
    
    $display("number = %d", num);
    
  endfunction
  
endclass

module tester;

  test tst;
  
  initial begin
  
    tst = new();
    
    repeat(5) begin

      tst.generator();
      
    end

  end
  
  endmodule

