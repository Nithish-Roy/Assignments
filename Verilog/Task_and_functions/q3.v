module q3;
    integer x;
    integer y;
    integer result;
    task int sum;
    input integer a;
    input integer b;
    begin
         sum = a + b;
    end
    endtask

    initial begin
        x = 10;
        y = 77;
        result = sum(x  , y);
       $display(result);
    end
endmodule
