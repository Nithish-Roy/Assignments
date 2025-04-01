// 14. Write constraints to generate elements of a dynamic array (abc as
// shown in code below) such that each element of the array is less than 10
// and the array size is less than 10.
// class dynamic_array;
// rand unsigned int abc[];
// endclass


class dynamic_array;

  rand int unsigned abc[];
  
  constraint for_size{ abc.size() < 10;}

  constraint for_element {foreach(abc[i])
    abc[i] < 10;}
  
endclass

module dyn_Arr;
  
  dynamic_array da;
  
  initial begin
    
    da = new();
    
    repeat(10) begin
      
      da.randomize();
      
      $display("%p", da.abc);
      
    end
    
  end
  
endmodule


// '{'h9, 'h0, 'h9} 
// '{'h2, 'h9, 'h1, 'h2, 'h4, 'h3, 'h5, 'h4} 
// '{'h5, 'h3, 'h9} 
// '{'h6, 'h2, 'h7, 'h6, 'h9, 'h8, 'h7} 
// '{'h4, 'h7, 'h0, 'h1, 'h4, 'h3, 'h4} 
// '{'h4, 'h9, 'h5, 'h1, 'h5, 'h7, 'h5, 'h9, 'h3} 
// '{'h7, 'h2, 'h4, 'h0, 'h0} 
// '{'h0, 'h1, 'h2, 'h3, 'h9, 'h5, 'h5, 'h6, 'h1} 
// '{'h6, 'h1, 'h4, 'h9, 'h5, 'h9} 
// '{'h9} 

