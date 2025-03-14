module q2;
    integer x ;
    integer y ;
    integer result;
    function integer sum;
       input integer a ;
       input integer b ;
    begin 
        sum = a + b;
        $display("sum is = %d", sum);
    end
    endfunction
    

    initial begin
        x = 12;
        y = 13;
      result = sum (x , y);
    end
endmodule
