// Generate a,b,c,d in such a way that all of them take unique values, but all of them inside 10 to 20 only.  
class test;
    
   rand int a;
   rand int b;
   rand int c;
   rand int d;

  constraint for_val { a <= 13;
                       a >= 10;
                       b <= 13;
                       b >= 10;
                       c <= 13;
                       c >= 10;
                       d <= 13;
                       d >= 10;}
  constraint for_not {unique {a,b,c,d};}
    
endclass

module tester;

  test tst;
  
  initial begin
  
    tst = new();
    
    repeat(5) begin
      tst.randomize();
      
      $display(tst.a,tst.b,tst.c,tst.d);
    end

  end
  
  endmodule

