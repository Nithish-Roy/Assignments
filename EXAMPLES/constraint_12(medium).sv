// Constraint to generate 1’bx and 1’bz randomly
// Use post randomize to assign x and z based on other variable.
class test;
    
	rand bit a;
  
  	reg out;
  
  function void post_randomize();
    
    if(a)
      
      out = 1'bx;
    
    else
  		
      out = 1'bz;
    
  endfunction
  
endclass

module tester;

  test tst;
  
  initial begin
  
    tst = new();
    
    repeat(20) begin

      tst.randomize();
      
      $display("%p", tst.out);
      
    end

  end
  
  endmodule

