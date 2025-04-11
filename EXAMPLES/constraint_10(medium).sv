// Without using randomization or rand keyword, generates array of random values.

class test ;
  
  int unsigned data [10];
  
  function void generator();
 
    for(int i = 0; i < ($size(data)); i++) begin
      data[i] = $urandom_range(50,100);
    end
    
    $display("%p", data);
    
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

