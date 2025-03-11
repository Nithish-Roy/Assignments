//1. Sort the contents of a dynamic array which contains 10 elements in it.
module q1();
    int da [];
        initial begin
          da = new[10];            
                da = '{10,9,8,7,5,6,4,3,1,2};
                    foreach(da[i]) begin
                        $display("da[%0d]= %0d",i,da[i]);
                    end
          da.sort();
                     foreach(da[i]) begin
                         $display("da[%0d]= %0d",i,da[i]);
                     end
        end
endmodule
