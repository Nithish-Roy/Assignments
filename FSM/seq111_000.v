//sequence_detector 111 or 000

module fsm_all(    
                   input        wire        clk ,
                   input        wire        rst ,
                   input        wire        x   ,
                   output       wire        y   


    );

    parameter [2:0] IDLE        =   3'B000  ,
                    ONE_ONE     =   3'B001  ,
                    TWO_ONE     =   3'B010  ,
                    THREE_ONE   =   3'B011  ,
                    ONE_ZERO    =   3'B100  ,
                    TWO_ZERO    =   3'B101  ,
                    THREE_ZERO  =   3'B110  ;

    reg [2:0]  ps, ns;

  always @(posedge clk) begin 
                            if(rst)
                                ps <= IDLE;
                            else
                                ps <= ns;
                        end


                        always @(*) begin 
                          case(ps)
                            	IDLE:  		if(x) begin
                                               ns <= ONE_ONE   ;
                            				end
                                            else begin
                                               ns <= ONE_ZERO  ;
                                            end
                                ONE_ONE:    if(x) begin 
                                                ns  <= TWO_ONE  ;
                                            end
                                            else begin 
                                                ns <= ONE_ZERO  ;
                                            end
                                TWO_ONE:    if(x) begin 
                                                ns  <=  THREE_ONE   ;
                                            end
                                            else begin
                                                ns  <=  ONE_ZERO	;
                                            end
                                THREE_ONE:  if(x) begin 
                                                ns  <=  THREE_ONE   ;
                                            end
                                            else begin 
                                                ns  <=  ONE_ZERO    ;
                                            end
                                ONE_ZERO:   if(!x) begin 
                                                ns  <=  TWO_ZERO    ;
                                            end
                                            else begin 
                                                ns  <=  ONE_ONE     ;
                                            end
                                TWO_ZERO:   if(!x) begin 
                                                ns <= THREE_ZERO    ;
                                            end
                                            else begin
                                                ns  <=  ONE_ONE     ;
                                            end
                                THREE_ZERO: if(!x) begin 
                                                ns <= THREE_ZERO    ;
                                            end
                                            else begin 
                                                ns  <= ONE_ONE      ;
                                            end
                                default :   ns <= IDLE;
                        endcase
                        end
                            assign y = ((ps == THREE_ZERO)||(ps == THREE_ONE));

endmodule
