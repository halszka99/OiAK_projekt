module dot (Gh, Ph, Gl, Pl, Ghl, Phl);

input Gh;
input Ph;
input Gl;
input Pl;
output Ghl;
output Phl;

INVX1 INVX1_1 ( .A(Gh), .Y(_0_) );
NAND2X1 NAND2X1_1 ( .A(Gl), .B(Ph), .Y(_1_) );
NAND2X1 NAND2X1_2 ( .A(_0_), .B(_1_), .Y(_2_) );
AND2X2 AND2X2_1 ( .A(Ph), .B(Pl), .Y(_3_) );
BUFX2 BUFX2_1 ( .A(_2_), .Y(Ghl) );
BUFX2 BUFX2_2 ( .A(_3_), .Y(Phl) );
endmodule
