class Base;
    rand int A;

    constraint c_ab {
        A inside {[10:20]};
    }
endclass

class Derived extends Base;
    constraint c_new {
        A inside {11,12,13,15,17};
    }
endclass

module q6;
    initial begin
        Derived der = new();

        for (int i = 0; i < 10; i++) begin
            if (der.randomize()) begin
                $display("Iteration %0d: A = %0d", i, der.A);
            end else begin
                $display("Randomization failed.");
            end
        end
    end
endmodule
Iteration 0: A = 11
Iteration 1: A = 15
Iteration 2: A = 15
Iteration 3: A = 13
Iteration 4: A = 12
Iteration 5: A = 11
Iteration 6: A = 17
Iteration 7: A = 15
Iteration 8: A = 13
Iteration 9: A = 13
