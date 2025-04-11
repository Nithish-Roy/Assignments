// Multi bit vector, generate value with only one bit in vector being ‘1

class test #(parameter N = 32);
  
  rand int index;
  
  rand bit[N-1:0] data;
  
  constraint for_index {index inside {[0:N]};}
  
  constraint for_data {data == 1 << index; }
       
endclass

module tester;
  
  test tst;
  
  initial begin
  
    tst = new();
    
    repeat(10) begin
      
      void'(tst.randomize());
      
      $display("a = %b", tst.data);
      
    end

  end
  
  endmodule
