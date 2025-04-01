// 17. Write a constraint for count 0 to 40 [ skip 10,20,30,40]

class counter;
  rand byte unsigned count;

  // Fixed constraint using `!inside`
  constraint for_count1 { !{count inside {10, 20, 30, 40}}; }

endclass

module test;
  counter c;

  initial begin
    c = new();
    
    repeat(10) begin
      c.randomize();
      $display("The count value is = %d", c.count);
    end
  end
endmodule

// # 
// # run -all
// # The count value is = 212
// # The count value is = 105
// # The count value is =  62
// # The count value is = 125
// # The count value is =  39
// # The count value is =  66
// # The count value is = 157
// # The count value is = 181
// # The count value is = 135
// # The count value is = 209
// # exit
