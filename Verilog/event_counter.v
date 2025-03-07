module event_counter (
    input wire clk,       
    input wire rst_n,    
    input wire enable,   
    input wire event,    
    output reg [7:0] count 
);

    always @(posedge clk or negedge rst_n) begin
        if (!rst_n)
            count <= 8'b0;  
        else if (enable && event)
            count <= count + 1;
    end

endmodule
