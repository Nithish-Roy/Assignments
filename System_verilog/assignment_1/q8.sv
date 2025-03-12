// 8. Write a test bench to test the Associative array data type and its predefined
// methods by using the following statements
// a. declare a 64-bit integer type sparse array assoc & an index idx
// b. initialize idx to 1
// c. fill array assoc by 1-bit left shift of idx value in a loop
// which runs 64 times so that the array is filled as a
// sparse array
// d. use first, next, last, prev methods to get the values of
// these elements

module q8;
    longint arr [int];
    longint idx,key;

    initial begin
        idx = 1;
            for (int i = 0; i < 64; i++) begin
            arr[i] = idx;
            idx = idx << 1;
        end
            $display("%p",arr);
        
        arr.last(key);
        $display(arr[key]);
       
        arr.prev(key);
        $display(arr[key]);

        arr.first(key);
        $display(arr[key]);
        
        arr.next(key);
        $display(arr[key]);
    end
endmodule
