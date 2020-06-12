module dot (Gh, Ph, Gl, Pl, Ghl, Phl);

input Gh;
input Ph;
input Gl;
input Pl;
output Ghl;
output Phl;

wire vdd = 1'b1;
wire gnd = 1'b0;

INVX1 INVX1_1 ( .A(Gh), .Y(_0_) );
NAND2X1 NAND2X1_1 ( .A(Gl), .B(Ph), .Y(_1_) );
NAND2X1 NAND2X1_2 ( .A(_0_), .B(_1_), .Y(_2_) );
AND2X2 AND2X2_1 ( .A(Ph), .B(Pl), .Y(_3_) );
BUFX2 BUFX2_1 ( .A(_2_), .Y(Ghl) );
BUFX2 BUFX2_2 ( .A(_3_), .Y(Phl) );
FILL FILL_0_0_0 ( );
FILL FILL_0_0_1 ( );
FILL FILL_0_0_2 ( );
FILL FILL_0_1_0 ( );
FILL FILL_0_1_1 ( );
FILL FILL_0_1_2 ( );
endmodule
