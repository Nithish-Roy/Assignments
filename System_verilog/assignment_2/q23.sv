module q13;
byte my_byte;
integer my_integer;
int my_int;
bit [15:0] my_bit;
shortint my_short_int1;
shortint my_short_int2;
    initial begin
my_integer = 32'b000_1111_xxxx_zzzz;
my_int = my_integer;
    $display("%h",my_int);
my_bit = 16'h8000;
    $display("%d",my_bit);
my_short_int1= my_bit;
    $display("%d",my_short_int1);
my_short_int2 = my_short_int1-1'b1;
    $display("%d",my_short_int2);
    end
endmodule
