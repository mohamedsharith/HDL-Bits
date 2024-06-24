module top_module(
    input [31:0] a,
    input [31:0] b,
    output [31:0] sum
);
    wire cout1,cout2,cout3;
    wire [15:0] sum1,sum2,sum3,sum_mux;
    add16 instance1(.a(a[15:0]),.b(b[15:0]),.cin(0),
                   .cout(cout1),.sum(sum1));
    add16 instance2(.a(a[31:16]),.b(b[31:16]),.cin(0),
                  .cout(cout2),.sum(sum2));
    add16 instance3(.a(a[31:16]),.b(b[31:16]),.cin(1),.cout(cout3),.sum(sum3));
    
    always @ (*) begin
        case(cout1)
            0: sum_mux = sum2;
            1: sum_mux = sum3;
        endcase
    end
    assign sum={sum_mux,sum1};

endmodule

