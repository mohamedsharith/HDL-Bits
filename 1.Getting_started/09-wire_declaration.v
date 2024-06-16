`default_nettype none
module top_module(
    input a,
    input b,
    input c,
    input d,
    output wire out,
    output out_n); 
    wire k,l;
    and (k,a,b);
    and (l,c,d);
    or (out,k,l);
    not (out_n,out);   

    /*assign k = a&b;
    assign l = c&d;
    assign out = k|l;
    assign out_n = ~out;
      */ 

endmodule
