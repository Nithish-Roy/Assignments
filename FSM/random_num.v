// Code your design here
module tester;

  integer num;
  integer i;

  initial begin
    repeat (10) begin
      #10;
      num = ($random % 201) - 100;
      $display("Random number: %0d", num);
    end
  end

endmodule
