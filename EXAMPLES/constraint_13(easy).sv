// Generate a,b,c,d in such a way that all of them take unique values, but all of them inside 10 to 20 only.

class test;
  
  rand int a;
  
  rand int b;
  
  rand int c;
  
  rand int d;
  
  constraint for_a { a inside {[10 : 20]};}
 
  constraint for_b { b inside {[10 : 20]};}

  constraint for_c { c inside {[10 : 20]};}

  constraint for_d { d inside {[10 : 20]};}

  
  constraint for_uq { unique {a , b , c , d};}
  
endclass

module tester;
  
  test tst;
  
initial begin
  
  tst = new();
  
  repeat(10) begin
    
    tst.randomize();
    
    $display("a = %d b = %d c = %d d = %d" , tst.a, tst.b,tst.c,tst.d);
    
  end
  
end
  
endmodule
