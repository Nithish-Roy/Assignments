module q9;
    string str = "SystemVerilog";
    string rstr ;
    
    int size;
    
    initial begin
        size = str.len();
        for (int i = size- 1; i >= 0; i--)
            begin
                 rstr = {rstr ,str.getc(i)};
            end
        $display("%s",rstr);
    end
endmodule
