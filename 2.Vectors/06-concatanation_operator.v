module top_module (
    input [4:0] a, b, c, d, e, f,
    output [7:0] w, x, y, z );
    reg [31:0] conc_reg;
    assign conc_reg = {a[4:0],b[4:0],c[4:0],d[4:0],e[4:0],f[4:0],2'b11};
    assign w = conc_reg[31:24];
    assign x = conc_reg[23:16];
    assign y = conc_reg[15:8];
    assign z = conc_reg[7:0];
endmodule
