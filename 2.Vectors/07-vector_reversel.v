module top_module( 
    input [7:0] in,
    output [7:0] out
);
   generate
       genvar i;
       for (i=0; i<8; i = i+1) begin: top_module
       assign out[i] = in[8-i-1];
       end
   endgenerate
endmodule

//assign {out[0],out[1],out[2],out[3],out[4],out[5],out[6],out[7]} = in;
//assign out = {in[0],in[1],in[2],in[3],in[4],in[5],in[6],in[7]};
/* always @(*) begin	
		for (int i=0; i<8; i++)	// int is a SystemVerilog type. Use integer for pure Verilog.
			out[i] = in[8-i-1];
	end   */


