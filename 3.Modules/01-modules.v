module top_module ( input a, input b, output out );
    mod_a instance_1(
        .in1(a),
        .in2(b),
        .out(out)
	// mod_q instance_2 (a,b,out);
    );
endmodule
