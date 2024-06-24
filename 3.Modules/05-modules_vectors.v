module top_module ( 
    input clk, 
    input [7:0] d, 
    input [1:0] sel, 
    output [7:0] q
);
    wire [7:0]l,m,n;
    
    my_dff8 d_flop1(.clk(clk), .d(d), .q(l));
    my_dff8 d_flop2(.clk(clk), .d(l), .q(m) );
    my_dff8 d_flop3(.clk(clk), .d(m), .q(n));
    
    always @ (*) begin
        case(sel)
            0 : q = d ;
            1 : q = l;
            2 : q = m;
            3 : q = n;
        endcase
    end
     /*if(sel==2'b00)
            q=d;
        else if( sel == 2'b01)
      		q = con1;
        else if( sel == 2'b10)
      		q = con2;
        else if( sel == 2'b11)
      		q = con3;
 		*/

endmodule
 







 



