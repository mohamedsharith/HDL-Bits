module top_module( 
    input a, 
    input b, 
    output out );
    and (out,a,b);
            /*assign out = a & b;	
            & : Bit-wise and operator */
endmodule
