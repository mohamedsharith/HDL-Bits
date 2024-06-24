module top_module ( input clk, input d, output q );
    wire k,l;
    my_dff dff1(.clk(clk),.d(d),.q(k));
    my_dff dff2(.clk(clk),.d(k),.q(l));
    my_dff dff3(.clk(clk),.d(l),.q(q));
    //connects by position
       /* my_dff d1 ( clk, d, k );
	my_dff d2 ( clk, k, l );
	my_dff d3 ( clk, l, q ); */
endmodule
