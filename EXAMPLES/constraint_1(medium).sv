// Write a SystemVerilog class named test to generate an array of size 10 (arr[10]) with the following specifications:

// The array should consist of randomized values that meet the following criteria:

// All elements must be divisible by 5.

// All elements must be within the range of 50 to 100.

// The first 5 elements of the array should be in strictly increasing order.

// The last 5 elements of the array should be in strictly decreasing order.


class test;

  rand byte unsigned arr[10];

  constraint for_arr {
    foreach(arr[i]) {
      arr[i] inside {[50:100]};
      arr[i] % 5 == 0;

      if (i < 4) {
        arr[i] < arr[i+1];
      }

      if (i >= 5 && i < 9) {
        arr[i] > arr[i+1];
      }
    }
  }

endclass

module tester;

  test tst;

  initial begin
    tst = new();
    repeat(10) begin
      if (tst.randomize()) begin
        $display("Generated Array: %p", tst.arr);
      end else begin
        $display("Randomization failed!");
      end
    end
  end

endmodule
