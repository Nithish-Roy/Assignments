module mux2to1 (
    input  A,  
    input  B,  
    input  S,  
    output  Y   
);
    assign Y = S ? B : A; 
endmodule

module demux1to2 (
    input  I,   
    input  S,   
    output  Y0, 
    output  Y1  
);
    assign Y0 = (~S) ? I : 0; 
    assign Y1 = S ? I : 0;    
endmodule

module encoder4to2 (
    input  [3:0] I,  
    output  [1:0] Y  
);
    assign Y[0] = I[1] | I[3];
    assign Y[1] = I[2] | I[3];
endmodule

module decoder2to4 (
    input  [1:0] S, 
    output  [3:0] Y 
);
    assign Y[0] = (S == 2'b00);
    assign Y[1] = (S == 2'b01);
    assign Y[2] = (S == 2'b10);
    assign Y[3] = (S == 2'b11);
endmodule

