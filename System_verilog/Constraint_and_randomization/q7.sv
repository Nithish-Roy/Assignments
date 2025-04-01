// Without using rand keyword how can we randomize?

module randomizer;
  
  int a;
  
  initial begin
  
  repeat(10) begin 
    
    a = $urandom % 100;
    
    $display("the number a = %d", a);
    
  end
    
  end
  
endmodule
    
    
