// Code your testbench here
// or browse Examples
class ABC;
rand int length;
rand byte SA;
  constraint c_length { length inside {[1:64]};}
  constraint c_sa {SA inside {[1:16]};}
endclass

module q3;
  initial begin

	ABC abc = new();
    abc.c_length.constraint_mode(0)   ;
    repeat(10) begin
    abc.randomize();
      $display("length = %0d sa = %0d", abc.length, abc.SA);
  end
    end
    endmodule

// length = 2 sa = 2
// length = 11 sa = 15
// length = 10 sa = 6
// length = 47 sa = 3
// length = 33 sa = 8
// length = 4 sa = 4
// length = 47 sa = 13
// length = 19 sa = 14
// length = 61 sa = 2
// length = 46 sa = 7
