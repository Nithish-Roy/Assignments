// Write a test bench to test string data type and its predefined methods by
// using the following statements
// a. declare a string data type and assign it to“SystemVerilog”
// b. use the getc() method to display the ASCII value of the first
// character of this string
// c. use toupper() method to display the string in capital letter
// d. concatenate the string with string “3.1a” and display
// e. replace the last character in the string with character ‘b’ using
// len() method and display
// f. use substr() method to display substring from 2nd to 5th
// character

module q10;
    string str1 = "SystemVerilog";
        int length;
        initial begin
            $display(str1.getc(0));
                str1 = str1.toupper();
                    $display(str1);
                str1 = {str1,"3.la"};
                    $display(str1);
                length  =    str1.len();
                str1.putc(length - 1 ,"b");
                    $display(str1);
                $display(str1.substr(2,5));


        end
endmodule

