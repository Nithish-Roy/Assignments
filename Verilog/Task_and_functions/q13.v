module q13;

    function integer square(input integer x);
        begin
            square = x * x;
        end
    endfunction
    function integer compute_sum_square(input integer a, b);
        begin
            compute_sum_square = square(a) + square(b);
        end
    endfunction

    initial begin
        integer result;
        integer num1 = 3, num2 = 4;
        
        result = compute_sum_square(num1, num2);
        
        $display("The sum of squares of %0d and %0d is: %0d", num1, num2, result);
    end
endmodule
