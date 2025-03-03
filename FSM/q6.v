module design_(	input clk	,
		input rst	,
		input 	x	,
		output 	y	
		);


parameter [2:0] 	IDLE 		= 	0	,
			STATE_1		=	1	,
			STATE_2		=	2	,
			STATE_3		=	3	,
			STATE_4		=	4	,
			STATE_5 	= 	5	,
			STATE_6		=	6	;
reg [2:0] 		present		,	next	;	


				always @(posedge clk)	begin
					if(rst)
						present <= IDLE;
					else
						present <= next;
				end


				always @(*)	begin
					case (present)
						
						IDLE	:	next	= 	(x) ? STATE_1 : IDLE;
						STATE_1 : 	next	= 	(x) ? STATE_3 : STATE_2;
						STATE_2	:	next	= 	(x) ? STATE_4 : IDLE;
						STATE_3	:  	next	= 	(x) ? STATE_6 : STATE_5;
						STATE_4 :	next 	= 	(x) ? STATE_3 : IDLE;
			       STATE_5 : 	next 	=	(x) ? STATE_4 : IDLE;
						STATE_6	:	next	=	(x) ? STATE_6 : STATE_5;
						default :	next	= 	IDLE			;

					endcase
				end

				assign y = (present == STATE_5) || (present == STATE_6) || (present == STATE_4) || (present == STATE_3);

endmodule



