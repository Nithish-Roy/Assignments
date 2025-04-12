// Write constraint on an array such that even indexed elements are even values, odd indexed are odd values.

class test;
    
  rand bit [7:0] array [10];
  
  constraint fordata {
    foreach(array[i])
      if(i % 2 == 0)
        array[i]%2 == 0;
    else
      array[i]%2 != 0;
  }
  
  
endclass

module tester;

  test tst;
  
  initial begin
  
    tst = new();
    
    repeat(5) begin

      tst.randomize();
      
      $display("%p", tst.array);
      
    end

  end
  
  endmodule

