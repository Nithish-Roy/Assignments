// Write a constraint for 16-bit addr which should contain 9th bit as 1 and no consicutive 1's

class test;
  
  rand bit [15:0] a;
  
  constraint for_a{ 
  
    foreach(a[i])
 
      if(i == 9)
        
        a[i] == 1;
  }
  
  constraint for_all { foreach(a[i])
    
    if(i <  $size(a)-1)
                     	
      !(a[i] == 1 && a[i+1] == 1);}
  
endclass

module tester;
  
  test tst;
  
  initial begin
    
    tst = new();
    
    repeat(20) begin
      
      void'(tst.randomize());
      
      $display("a = %b", tst.a,);
      
    end
    
  end
  
  endmodule


// # a = 1010101000010010 
// # a = 0000101010100101 
// # a = 0001001001010010 
// # a = 0100101000010010 
// # a = 1001001001000010 
// # a = 1001001010100101 
// # a = 0010001000010100 
// # a = 1000101010010010 
// # a = 0000101001001010 
// # a = 1010101010101000 
// # a = 0101001000101000 
// # a = 1010101010001000 
// # a = 0010101010100100 
// # a = 0100101010001000 
// # a = 0000101010010001 
// # a = 1010101001000010 
// # a = 0101001010101001 
// # a = 0100101000101001 
// # a = 0101001000101001 
// # a = 1001001001010010 
