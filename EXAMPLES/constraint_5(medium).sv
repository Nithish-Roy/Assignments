// Write constraint for randomly generating an array of numbers with size 20, sort in ascending order without using inbuilt sort method, and sum of all array elements should be 300.

class test;
  
  rand int a [20];
  
  constraint for_a_element{ 
   
    a.sum() == 300;
    
  }
  
  constraint for_range {
    
    foreach(a[i])
  
      a[i] inside {[0:200]};
  
  }
  
  
  constraint sort {
  
  
    foreach(a[i])
      
      if(i >=0  && i < $size(a) - 1)
        
        a[i] < a[i+1];
  
  }
  
endclass

module tester;
  
  test tst;
  
  initial begin
    
    tst = new();
    
    repeat(20) begin
      
      void'(tst.randomize());
      
      $display("a = %p", tst.a,);
      
    end
    
  end
  
  endmodule


// a = '{0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 32, 33, 34, 35, 37, 38} 
// a = '{2, 3, 5, 6, 7, 8, 9, 10, 11, 13, 14, 15, 16, 17, 18, 19, 23, 33, 34, 37} 
// a = '{0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 15, 32, 33, 34, 35, 36, 37} 
// a = '{0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 11, 23, 24, 25, 26, 27, 28, 29, 30, 32} 
// a = '{1, 4, 6, 8, 9, 10, 11, 12, 13, 14, 15, 16, 18, 19, 21, 22, 23, 24, 25, 29} 
// a = '{0, 1, 3, 5, 6, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26} 
// a = '{0, 1, 3, 4, 9, 10, 11, 12, 13, 14, 15, 16, 17, 19, 20, 22, 27, 28, 29, 30} 
// a = '{5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 34} 
// a = '{0, 3, 6, 7, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 23, 24, 25, 26} 
// a = '{0, 2, 3, 4, 5, 6, 7, 8, 9, 10, 12, 22, 23, 24, 25, 26, 27, 28, 29, 30} 
// a = '{0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30} 
// a = '{0, 3, 4, 6, 7, 8, 9, 10, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 66} 
// a = '{0, 1, 2, 3, 4, 5, 6, 7, 8, 17, 18, 19, 20, 21, 22, 23, 28, 30, 32, 34} 
// a = '{0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 13, 28, 29, 30, 31, 33, 34, 36} 
// a = '{0, 1, 2, 3, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 24, 42, 48, 54} 
// a = '{0, 1, 2, 3, 4, 5, 6, 7, 8, 10, 11, 23, 24, 25, 26, 27, 28, 29, 30, 31} 
// a = '{0, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 57} 
// a = '{0, 1, 2, 3, 4, 5, 9, 10, 11, 12, 13, 14, 15, 21, 22, 23, 25, 26, 27, 57} 
// a = '{2, 3, 4, 5, 6, 7, 8, 9, 13, 14, 15, 16, 17, 18, 19, 23, 25, 26, 30, 40} 
// a = '{0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 15, 16, 18, 23, 36, 101} 
