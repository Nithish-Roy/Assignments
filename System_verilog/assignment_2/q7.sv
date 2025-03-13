module q7;
  typedef enum logic[3:0] {ADD=4'd2,
                    SUB=4'd3, 
                    JE =4'd10, 
                    JNE=4'd11, 
                    LD =4'd12,
                    ST =4'd13} opcodes;

                        initial begin
                            opcodes opcode_1;
                                opcode_1 = SUB;
                            $display(opcode_1.next);
                        end
endmodule
