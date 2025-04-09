// Write a constraint for 10101010.. sequence 

class test #(parameter N = 32);
  
  rand bit [N-1:0] a;
  
  constraint for_a {foreach(a[i])
    if (i %2 ==0)
      a[i] == 1;
    else 
      a[i] == 0;
               }
         
endclass

module tester;
  
  test tst;
  
  initial begin
  
    tst = new();
    
    repeat(1) begin
      
      void'(tst.randomize());
      
      $display("a = %b", tst.a);
      
    end
    
    $write("a (LSB to MSB) = ");
    for (int i = 0; i < 32; i++) begin
  $write("%0b", tst.a[i]);
end
$display("");

    
  end
  
  endmodule

