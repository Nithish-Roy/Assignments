
// generate three values uniquely without using unique keyword

class test;
  
  rand bit [6:0]  a;
  
  rand bit [6:0]  b;

  rand bit [6:0]  c;

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
// # KERNEL: a =  91 b =  84 c =   7
// # KERNEL: a =  50 b =   7 c =   9
// # KERNEL: a =   1 b =  24 c =  87
// # KERNEL: a =  14 b =  48 c =  62
// # KERNEL: a = 125 b =  81 c =  51
// # KERNEL: a =  19 b =  20 c =  99
// # KERNEL: a =  36 b =  51 c =  24
// # KERNEL: a = 104 b = 106 c =  46
// # KERNEL: a = 102 b =  37 c = 112
// # KERNEL: a =   6 b =  18 c =  93
// # KERNEL: a =  91 b =   6 c =   4
// # KERNEL: a = 105 b =  40 c =  71
// # KERNEL: a = 102 b =  96 c =  79
// # KERNEL: a = 122 b =  61 c =  12
// # KERNEL: a =  33 b =  25 c =  38
