// Write constraint on an array to generate values in ascending order.

class test;
    
  rand bit [7:0] array [10];
  
  constraint fordata {
    foreach(array[i])
      if(i>=0 && i<$size(array)-1)
        array[i+1] > array[i];}
  
  
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

