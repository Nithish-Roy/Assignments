module q5;
    integer pro_result , div_result;

    function  integer div;
    input integer a;
    input integer b;
    begin
        div = a / b;
        $display("division = %d", div );
    end
    endfunction

    function integer product;
    input integer a;
    input integer b;
    begin 
        product = a *  b;
        $display("product = %d", product );
    end
    endfunction

    initial begin
        pro_result = product(10 , 20);
        div_result = div(15 , 5);
    end
endmodule
