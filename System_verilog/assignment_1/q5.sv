//Predict the output for the below code
module q5;
int num1;
int num2;
initial
begin
num1 = int'(10.0 - 1.8); // Case 1
  $display("The integer value is : %d",num1);
num2 = int'(5/3); // Case 2
  $display("The integer value is : %d",num2);
end
endmodule

// # KERNEL: The integer value is :           8
// # KERNEL: The integer value is :           1
