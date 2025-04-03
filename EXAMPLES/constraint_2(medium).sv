// randomize such that odd address have even values and even addresses have odd values
class test;

  rand bit [2:0] data [7:0]; 
  
  constraint addr_constraint {
    foreach(data[i]) {
      if ((i % 2) == 0) 
        data[i] % 2 != 0;
      else 
        data[i] % 2 == 0;  
    }
  }

endclass

module tester;

  test tst;

  initial begin
    tst = new();
    repeat(10) begin
      tst.randomize();
        $display("Data Array = %p", tst.data);
    end
  end

endmodule
