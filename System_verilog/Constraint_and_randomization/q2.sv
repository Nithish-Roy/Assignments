class array_abc;
  rand int unsigned myarray[];
  
  constraint c_abc_val {
    myarray.size() inside { [10:15] };
foreach (myarray[i])
  if (i> 0) myarray[i] < myarray[i-1];
}
  
endclass

module q2;
  array_abc abc;
  initial begin

    abc = new ();
    repeat(1) begin
      abc.randomize();
      foreach(abc.myarray[i])
        begin
          $display("myarray[%0d] = %0d ", i, abc.myarray[i]);
    end
    end
  end
    endmodule

// the array generates the value such that the array is in a sorted manned such that the next element is lesser than the previous one.
// myarray[0] = 4294921425 
// myarray[1] = 4294868788 
// myarray[2] = 4279290397 
// myarray[3] = 4278950910 
// myarray[4] = 4273819498 
// myarray[5] = 4014375145 
// myarray[6] = 3804229596 
// myarray[7] = 3763282279 
// myarray[8] = 3723690750 
// myarray[9] = 3337289746 
// myarray[10] = 3010015650 
