// Generate unique elements in an array without using the keyword unique.

class test;
    
  rand bit [3:0] array [10];
  
  constraint for_unique {foreach(array[i])
    foreach(array[j])
      if(i != j)
        array[j] != array[i];}
  
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

