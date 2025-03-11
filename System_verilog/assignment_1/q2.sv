// 2. Write a snippet in SV to insert one queue into another queue. (Do it with
// & without using array methods)
module q2(); 
    int q1 [$] = '{1,2,3};
    int q2 [$] = '{4,5,6};
        initial begin
            int insert_index = 1;
                for (int i = 0; i < q2.size; i ++) begin
                  q1.insert(insert_index+i ,q2[i]);
                end
            $display( "=%p",q1);
        end
endmodule
