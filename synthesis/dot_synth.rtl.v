module dot ( gnd, vdd, Gh, Ph, Gl, Pl, Ghl, Phl);

input gnd, vdd;
input Gh;
input Ph;
input Gl;
input Pl;
output Ghl;
output Phl;

INVX1 INVX1_1 ( .gnd(gnd), .vdd(vdd), .A(Gh), .Y(_0_) );
NAND2X1 NAND2X1_1 ( .gnd(gnd), .vdd(vdd), .A(Gl), .B(Ph), .Y(_1_) );
NAND2X1 NAND2X1_2 ( .gnd(gnd), .vdd(vdd), .A(_0_), .B(_1_), .Y(_2_) );
AND2X2 AND2X2_1 ( .gnd(gnd), .vdd(vdd), .A(Ph), .B(Pl), .Y(_3_) );
BUFX2 BUFX2_1 ( .gnd(gnd), .vdd(vdd), .A(_2_), .Y(Ghl) );
BUFX2 BUFX2_2 ( .gnd(gnd), .vdd(vdd), .A(_3_), .Y(Phl) );
endmodule
