// 25. write a constraint to generate a variable with 0-31 bits should be 1 and
// 32-61 bits should be 0.

class q25;
  rand bit[61:0] variable;
  
  constraint for_variable { foreach(variable[i])
    if(i >= 32)
      variable[i]== 1;
    else 
      variable[i] ==0;
     }
  
endclass

module q25_tester;
  q25 test;
  initial begin 
    test = new();
    test.randomize();
    $display("%b",test.variable);
  end
endmodule
// Contains Synopsys proprietary information.
// Compiler version U-2023.03-SP2_Full64; Runtime version U-2023.03-SP2_Full64;  Mar 20 10:28 2025
// 11111111111111111111111111111100000000000000000000000000000000
