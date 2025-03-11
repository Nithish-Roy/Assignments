// 4. What happens when an enum variable is assigned with the last valid
// value and the next method is used to do the next assignment?
module q4();
    enum { RED, BLUE , GREEN} color;
    int num;
    initial begin
        color = GREEN;
        color = color.next();
        $display(color.name);
    end
endmodule
//moves to the first value
