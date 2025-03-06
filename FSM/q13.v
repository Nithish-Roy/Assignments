module design_(
    input   clk ,
    input   rst ,
    output reg y   ,
    input   x   
       );

    parameter [1:0] IDLE    =   1   ,
                    STATE_1 =   2   ,
                    STATE_0 =   3   ;    
    
    reg [1:0]   ps  ,   ns;

        always  @(posedge clk)begin
            if (rst)
                ps <= IDLE;
            else
                ps <= ns;
        end

        always@ (*)
           begin
              // y = 1'b0;
            case(ps)
                IDLE    : 
                    begin   if (x) 
                                ns = STATE_1;
                            else
                                ns = STATE_0;
                    end
                STATE_0 :
                    begin    if(x) begin
                                ns = STATE_1;
                               // y = 1'b1;
                    end
                            else
                                ns = STATE_0;
                    end
                STATE_1 :
                        begin   if(x)
                                ns = STATE_1;
                                    else begin
                                ns = STATE_0;
                             //   y = 1'b1;
                                    end
                        end
                 default :  
                        begin ns = IDLE;
                           
                        end
            endcase
           end
            
        always @(posedge clk)
            begin 
                if(ps == STATE_1 && x == 0)
                    y = 1'b1;
                else if(ps == STATE_0 && x == 1)
                    y = 1'b1;
                 else 
                     y = 1'b0;
            end
 endmodule
