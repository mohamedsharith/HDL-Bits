module top_module( 
    input a, 
    input b, 
    output out );
    nor (out,a,b);
                              //assign out = ~(a|b); //NOR gate using bitwise OR  and NOT operators
endmodule
