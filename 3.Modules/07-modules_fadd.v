module top_module (
    input [31:0] a,
    input [31:0] b,
    output [31:0] sum
);
    wire l,k,p;
    wire [15:0] m,n;
    add16 instance1(
        .a(a[15:0]),
        .b(b[15:0]),
        .cin(0),
        .cout(k),
        .sum(m)
    );
    add16 v2instance2(
        .a(a[31:16]),
        .b(b[31:16]),
        .cin(k),
        .cout(p),
        .sum(n)
    );
    assign sum = {n,m};
    
endmodule

module add1 ( input a, input b, input cin,   output sum, output cout );
	assign sum=a^b^cin;
    assign cout=a&b | a&cin | b&cin;
// Full adder module here

endmodule
