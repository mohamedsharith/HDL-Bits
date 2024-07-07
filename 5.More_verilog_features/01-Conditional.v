module top_module (
    input [7:0] a, b, c, d,
    output [7:0] min);//
    wire [7:0]q1,q2,q3;
    assign q1=(a<b)?a:b;
    assign q2=(c<q1)?c:q1;
    assign q3=(d<q2)?d:q2;
    assign min=q3;
    

    // assign intermediate_result1 = compare? true: false;

endmodule
