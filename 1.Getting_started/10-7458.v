module top_module ( 
    input p1a, p1b, p1c, p1d, p1e, p1f,
    output p1y,
    input p2a, p2b, p2c, p2d,
    output p2y );
    wire l,m,n,o;
    assign l = (p1a & p1b & p1c);
    assign m = (p1d & p1e & p1f);
    assign n = (p2a & p2b);
    assign o = (p2c & p2d);
    assign p1y = (l | m);
    assign p2y = (n | o);
/* and (l,p1a,p1b,p1c);
   and (m,p1d,p1e,p1f);
   and (n,p2a,p2b);
   and (o,p2c,p2d);
   or  (p1y,l,m);
   or  (p2y,n,o);  */

endmodule
