// 9. What is wrong with the below code? What is the correct process to write
// the constraint?
// Class const;
// rand bit [7:0] low, mid, high;
// constraint Const_1 {low &lt;mid&lt;high;}
// end class

class consta;
rand bit [7:0] low, mid, high;
  constraint Const_1 {low < mid;
                    mid < high;}
endclass

module test;
  
  consta c; 
  
  initial begin 
    
    c = new();
    
    repeat (10) begin
      
    c.randomize();

      $display("the values are %d and %d  and %d",c.low,c.mid,c.high);
      
    end
    
  end
  
endmodule

// the values are  68 and 122  and 250
// the values are  45 and  74  and  94
// the values are   4 and 150  and 241
// the values are  99 and 132  and 154
// the values are   2 and  88  and 186
// the values are   8 and 111  and 115
// the values are  32 and  47  and 224
// the values are   6 and  37  and  49
// the values are  62 and 135  and 197
// the values are   2 and 124  and 185
