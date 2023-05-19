`include "Q4.v"
module seg7display (p,q,r,s,a,b,c,d,e,f,g); 
input p;
input q;
input r;
input s;
output a;
output b;
output c;
output d;
output e;
output f;
output g;
mux4to1 m1(a,p,q,(r|~s),(r|s),1'b1,1'bx);
mux4to1 m2(b,p,q,1'b1,((r&s)|(~r&~s)),1'b1,1'bx);
mux4to1 m3(c,p,q,(~r|s),1'b1,1'b1,1'bx);
mux4to1 m4(d,p,q,(r|~s),((~r&s)|(r&~s)),1'b1,1'bx);
mux4to1 m5(e,p,q,(~s),(r&~s),(~s),1'bx);
mux4to1 m6(f,p,q,(~(r|s)),(~(r&s)),1'b1,1'bx);
mux4to1 m7(g,p,q,r,(~(r&s)),1'b1,1'bx);
    
endmodule