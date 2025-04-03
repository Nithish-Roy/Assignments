
// generate three values uniquely without using unique keyword

class test;
  
  rand bit [6:0]  a;
  
  rand bit [6:0]  b;

  rand bit [6:0]  c;

  //   constraint for_all {
  //   unique {a, b, c};
  // }

  constraint for_all {
    
  						a != b;
  						
  						b != c;
  
  						a != c;
  }
  
endclass

module tester;
  
  test tst;
  
  initial begin
    
    tst = new();
    
    repeat(5) begin
      
      void'(tst.randomize());
      
      $display("a = %d b = %d c = %d", tst.a,tst.b, tst.c);
      
    end
    
  end
  
  endmodule
                      

// # KERNEL: a =  29 b =  80 c =  81
// # KERNEL: a =  44 b =  85 c =  32
// # KERNEL: a =  70 b =  61 c =  27
// # KERNEL: a =  10 b =  32 c =  76
// # KERNEL: a =  14 b =  11 c =   4

