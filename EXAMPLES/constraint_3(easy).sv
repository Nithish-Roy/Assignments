// write a constraint for a 8 bit variable whose values are in the range [1:54],127,[137:166],[196:209],[231:262]

class test;
  
  rand bit [7:0]  a;
  
  constraint for_all {
    a inside {[1:54],127,[137:166],[196:209],[231:262]};
  }
  
endclass

module tester;
  
  test tst;
  
  initial begin
    
    tst = new();
    
    repeat(5) begin
      
      void'(tst.randomize());
      
      $display("a = %d", tst.a,);
      
    end
    
  end
  
  endmodule
  
// # KERNEL: a = 165 
// # KERNEL: a = 243 
// # KERNEL: a =  42 
// # KERNEL: a = 150 
// # KERNEL: a = 205 

