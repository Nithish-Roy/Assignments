module q4;
    integer datas [0:19];
    reg odd_even_sel =  1'b1; //1 for odd and 0 for even    
        function integer odd_even (input integer signal, input integer index);
        begin
            if (signal)
                odd_even = 2 * index + 1    ;
             else
                odd_even = 2 * index    ;
        end
        endfunction

        initial begin :loop
                integer i;
                for(i = 0; i< 20; i = i + 1) begin :generator
                    datas[i] = odd_even(odd_even_sel, i );
                    $display("datas [%d] = %d", i , datas[i]);
                end
        end
endmodule
