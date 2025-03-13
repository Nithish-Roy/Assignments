module q10;
    string str,rstr;
    int size;
    initial begin
        str = "RACECAR";
        size = str.len();
        for (int i = size -1; i  >= 0; i--) begin
            rstr = {rstr , str.getc(i)};
        end
            
            $display(rstr);
        if (str == rstr)
            $display("it is palindrome");
        else
           $display("it is not a palindrome");
    end
endmodule
        
