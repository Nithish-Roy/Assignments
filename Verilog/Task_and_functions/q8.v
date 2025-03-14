module q8;

    integer shifted_data;
    integer data_in = 5;
    function  integer shifter;
    input integer data;
    begin
        shifter = data >> 1;
    end
    endfunction

    initial begin
        shifted_data =shifter(data_in);
        $display("the shifted value = %0d",shifted_data);
    end
endmodule
