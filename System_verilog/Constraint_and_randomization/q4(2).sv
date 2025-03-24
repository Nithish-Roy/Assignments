class ABSolveBefore;
    rand bit A;
    rand bit [1:0] B;

    constraint c_ab {
        (A == 0) -> (B == 2'b00);
        solve B before A;
    }
endclass
module tb_ABSolveBefore;
    initial begin
        ABSolveBefore ABC = new();

        for (int i = 0; i < 11; i++) begin
          if (ABC.randomize()) begin
            $display("Iteration %0d: A = %0b, B = %02b", i, ABC.A, ABC.B);
            end else begin
                $display("Randomization failed.");
            end
        end
    end
endmodule

Iteration 0: A = 1, B = 01
Iteration 1: A = 1, B = 00
Iteration 2: A = 1, B = 10
Iteration 3: A = 1, B = 10
Iteration 4: A = 1, B = 01
Iteration 5: A = 1, B = 00
Iteration 6: A = 1, B = 01
Iteration 7: A = 1, B = 10
Iteration 8: A = 1, B = 10
Iteration 9: A = 1, B = 10
Iteration 10: A = 1, B = 00
Iteration 11: A = 1, B = 01
Iteration 12: A = 1, B = 11
Iteration 13: A = 0, B = 00
Iteration 14: A = 1, B = 10
Iteration 15: A = 1, B = 10
Iteration 16: A = 1, B = 01
Iteration 17: A = 1, B = 10
Iteration 18: A = 1, B = 01
Iteration 19: A = 1, B = 11
Iteration 20: A = 1, B = 11
