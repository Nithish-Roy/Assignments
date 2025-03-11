//3. Why can’t we use a foreach loop for popping all the elements in a queue?
module q3();
    int q[$];
    int val;
    int size;
    initial begin
        q = '{10,11,12,13};
            $display("= %p", q);
       //     foreach(q[i]) //foreach cannot be used because the size of the queue keeps changing
       //     begin
       //         q.pop_back();
       //     end
       //     $display("= %p", q);
            size = q.size();
            for (int i = 0; i < size; i++) begin
               val =   q.pop_back();
                 $display(val);
            end
            $display("= %p", q);
    end
endmodule
