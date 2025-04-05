// Write a constraint for 16-bit addr which should contain 9th bit as 1

class test;
  
  rand bit [15:0] a;
  
  constraint for_a{ 
  
    foreach(a[i])
 
      if(i == 9)
        
        a[i] == 1;
  }
  
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


// # a = 0011011001101010 
// # a = 0100011100000111 
// # a = 0110011001001110 
// # a = 0111011111110010 
// # a = 0110001111001010 
// # a = 1000111001011010 
// # a = 0011101110000000 
// # a = 1100001110000011 
// # a = 0001101111100110 
// # a = 0111111011110110 
// # a = 0111101110001011 
// # a = 1110101011101101 
// # a = 1101011111011001 
// # a = 0010111111111101 
// # a = 1010011010101011 
// # a = 1010101011110101 
// # a = 1111101001100100 
// # a = 1101001100010110 
// # a = 0000101100101010 
// # a = 1110101110011100 
