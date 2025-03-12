//    11. Declare a 5 by 31 multi-dimensional unpacked array, my_array1. Each
//    element of the unpacked array holds a 4-state value.
//    a. Which of the following assignments are legal and not
//    out-of-bounds?
//    i. my_array1[4][30] = 1'b1;
//    ii. my_array1[29][4] = 1'b1;
//    iii. my_array1[4] = 31'b1;
//    b. Draw my_array1 after the legal assignments are
//    complete.

module q11;
    logic [30:0] my_array1 [5];
        initial begin
            my_array1[4][30] = 1'b1;
                $display( my_array1[4][30] );
            my_array1[29][4] = 1'b1; //illegal assignment
            my_array1[4] = 31'b1;
                 $display( my_array1[29][4] );
                 $display( my_array1[4] );
        end
endmodule
