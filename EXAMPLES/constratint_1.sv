
// if the value of a is less than 20 then b must be in the range of 10 to 30 and if a > 50
// the value of b must be in the range of 30 to 50


class test;
  
  rand bit [6:0]  a;
  
  rand bit [6:0]  b;
  
  constraint for_all {if(a<20) 
  					  {b inside {[10:30]};}
    else if(a>50)
                      {b inside {[30:50]};}}
  
endclass

module tester;
  
  test tst;
  
  initial begin
    
    tst = new();
    
    repeat(20) begin
      
      void'(tst.randomize());
      
      $display("a = %d b = %d", tst.a,tst.b);
      
    end
    
  end
  
  endmodule
                      
// # KERNEL: a = 112 b =  43
// # KERNEL: a =   0 b =  28
// # KERNEL: a =  29 b =  17
// # KERNEL: a =  21 b =  60
// # KERNEL: a = 122 b =  39
// # KERNEL: a =  37 b =  76
// # KERNEL: a =  30 b =  99
// # KERNEL: a =  23 b =  23
// # KERNEL: a =  40 b =  22
// # KERNEL: a =  44 b =  38
// # KERNEL: a =   2 b =  20
// # KERNEL: a =  29 b = 105
// # KERNEL: a =  20 b =  35
// # KERNEL: a =  86 b =  30
// # KERNEL: a =  68 b =  37
// # KERNEL: a =  35 b =  45
// # KERNEL: a =  10 b =  21
// # KERNEL: a =   2 b =  27
// # KERNEL: a =  24 b = 104
// # KERNEL: a =   3 b =  22



























