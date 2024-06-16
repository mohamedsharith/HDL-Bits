module top_module( 
    input a, 
    input b, 
    output out );
    xnor (out,a,b);
		//assign out = ~(a^b); using bitwise or and not operator
endmodule

