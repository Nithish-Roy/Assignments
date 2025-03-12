module q9;
    int q   [$]     ;
    int d   []      ;
    int f   [5:0]   ;
    int size;
    int sum;

    int sum_m = 0;
    initial begin
        q = '{1,3,5,7};
        d = new[6];
        d =  {9,1,8,3,4,4};
        f = {1,6,2,6,8,6};
             
        
            $display("THE QUEUE Q ");
            $display("the sum : ",q.sum);
            $display("the product : ",q.product);
            $display("the minimum value :" ,q.min);
            $display("the max value :",q.max);

            $display("THE ARRAY F ");
            $display("the unique : ",f.unique);

            foreach (d[i]) begin
                if(d[i] < 3) begin
                    $display("the elements less than 3 :",d[i]);
                    $display("the index of the values : ",i); 
            end
            end
            
            foreach (d[i]) begin
                if(d[i] > 99) begin
                    $display("the elements greater than 99 :",d[i]);
                    $display("the index of the values : ",i); 
                 end
            end

            size = d.size();
            for(int i = 0; i< size; i++)begin
                if(d[i] == 8)begin
                    $display("the index of 8 : ", i);
                    break;
                end
                   else
                       continue;
                end

            for(int j = size-1; j >= 0 ; j--)begin
                if(d[j] == 4)begin
                    $display("the index of 4 : ", j);
                    break;
                end
                else
                    continue;
            end
            
            foreach(d[i])begin
                if(d[i]> 7) begin
                    sum = sum + d[i];
                end
                else
                    continue;
            end
                $display("the sum of greater than 7 is = ",sum);

             foreach(d[i])begin
                if(d[i]< 8) begin
                    sum = sum + d[i];
                end
                else
                    continue;
            end
                $display("the sum of lesser than 8 is = ",sum);


            foreach (d[i]) begin
                sum_m += (d[i] > 7) * d[i]; 
            end

           $display("the sum of greater than 7 is = ",sum_m);
            
           foreach (d[i]) begin
                sum_m += (d[i] < 8) ? d[i]: 0; 
           end
            
           $display("the sum of lesser than 8 is = ",sum_m);



    end
endmodule 
