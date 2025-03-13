module q1();
    int queue[$];
    int size;
    int value;
    initial begin
        queue = '{10, 9, 8, 7, 6, 5, 4, 3, 2, 1};
            $display(queue.size);
            size = queue.size();

            queue.insert(size/2,11);
            $display("= %p",queue);
            queue.insert(size,33);
            $display("= %p",queue);
            queue.delete(size-1);
            $display("= %p",queue);
                
                value = queue.pop_front();
                $display(value);
                value = queue.pop_back();
                $display(value);
                queue.push_front(34);
                $display("= %p",queue);
                queue.push_back(55);
                $display("= %p",queue);
    end
endmodule
