module tester;
    reg      clk; 
    reg      rst; 
    reg      x ;  
    wire     y;

    fsm_all isnt(
        .clk( clk      ) ,
        .rst( rst      ) ,
        .x  ( x        ) ,
        .y  ( y        )
        );

    initial begin 
        clk = 0;
        forever #5 clk = ~clk ;
    end

    initial begin 
        #5;
        rst = 1;
        #10;
        rst = 0;
       end

    initial begin

        repeat(100) begin 
            #10;
                x = $random;
        end

           end

  initial begin 
    $dumpfile("dump.vcd");
    $dumpvars;
  end
  
    initial begin 
        $monitor("x = %b y = %b ", x , y);
        #1000;
         $finish;
    end

endmodule
                
