// 6. Write a test bench to test the dynamic array data type and its predefined
// methods by using the following statements
// a. declare two dynamic arrays d1, d of type int
// b. initialize d array elements with (9,1,8,3,4,4)
// c. allocate six elements in array d1
// d. initialize array d1 with index as its value
// e. display d1 and its size
// f. delete array d1
// g. reverse, sort, reverse sort, and shuffle the array d

module q6;
    int d1[];
    int d [];
        initial begin
            d = new[5];
            d = '{9,1,8,3,4,4};
            $display("%p",d);
                d1 = new[6];
                foreach(d1[i]) begin
                    d1[i] = i;
                end
                foreach(d1[i])begin
                    $display("d1[%0d] = %0d",i,d1[i]);
                end
                $display(d1.size());
                d1.delete();    
          d.sort();
             foreach(d[i])begin
                $display("d[%0d] = %0d",i,d[i]);
             end
             
          d.rsort();
             foreach(d[i])begin
                $display("d[%0d] = %0d",i,d[i]);
             end
          
          d.shuffle();
             foreach(d[i])begin
                $display("d[%0d] = %0d",i,d[i]);
             end
        end
endmodule


