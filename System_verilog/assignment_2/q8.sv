module q8;
    string str = "12345"; 
    int num = 0;
    int len;
    int digit; 
    initial begin
        len = str.len();         
        for (int i = 0; i < len; i++) begin
            digit = str.getc(i) - "0"; 
            num = num * 10 + digit; 
        end
        
        $display("Converted Integer: %d", num);
        $display(num + 100);
    end
endmodule
