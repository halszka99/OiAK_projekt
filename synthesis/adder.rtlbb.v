module adder (x0, x1, x2, x3, x4, x5, y0, y1, y2, y3, y4, y5, s0, s1, s2, s3, s4, s5, ov);

input x0;
input x1;
input x2;
input x3;
input x4;
input x5;
input y0;
input y1;
input y2;
input y3;
input y4;
input y5;
output s0;
output s1;
output s2;
output s3;
output s4;
output s5;
output ov;

XOR2X1 XOR2X1_1 ( .A(h_0_), .B(dot0_Gl), .Y(_1_) );
XOR2X1 XOR2X1_2 ( .A(h_1_), .B(dot0_Ghl), .Y(_2_) );
XOR2X1 XOR2X1_3 ( .A(h_2_), .B(dot5_Ghl), .Y(_3_) );
XOR2X1 XOR2X1_4 ( .A(h_3_), .B(dot3_Ghl), .Y(_4_) );
XOR2X1 XOR2X1_5 ( .A(h_4_), .B(dot6_Ghl), .Y(_5_) );
BUFX2 BUFX2_1 ( .A(_0_), .Y(s0) );
BUFX2 BUFX2_2 ( .A(_1_), .Y(s1) );
BUFX2 BUFX2_3 ( .A(_2_), .Y(s2) );
BUFX2 BUFX2_4 ( .A(_3_), .Y(s3) );
BUFX2 BUFX2_5 ( .A(_4_), .Y(s4) );
BUFX2 BUFX2_6 ( .A(_5_), .Y(s5) );
BUFX2 BUFX2_7 ( .A(_6_), .Y(ov) );
INVX1 INVX1_1 ( .A(dot0_Gh), .Y(_7_) );
NAND2X1 NAND2X1_1 ( .A(dot0_Gl), .B(dot0_Ph), .Y(_8_) );
NAND2X1 NAND2X1_2 ( .A(_7_), .B(_8_), .Y(dot0_Ghl) );
INVX1 INVX1_2 ( .A(dot1_Gh), .Y(_9_) );
NAND2X1 NAND2X1_3 ( .A(dot1_Gl), .B(dot1_Ph), .Y(_10_) );
NAND2X1 NAND2X1_4 ( .A(_9_), .B(_10_), .Y(dot1_Ghl) );
AND2X2 AND2X2_1 ( .A(dot1_Ph), .B(dot1_Pl), .Y(dot1_Phl) );
INVX1 INVX1_3 ( .A(dot2_Gh), .Y(_11_) );
NAND2X1 NAND2X1_5 ( .A(dot2_Gl), .B(dot2_Ph), .Y(_12_) );
NAND2X1 NAND2X1_6 ( .A(_11_), .B(_12_), .Y(dot2_Ghl) );
AND2X2 AND2X2_2 ( .A(dot2_Ph), .B(dot2_Pl), .Y(dot2_Phl) );
INVX1 INVX1_4 ( .A(dot1_Ghl), .Y(_13_) );
NAND2X1 NAND2X1_7 ( .A(dot0_Ghl), .B(dot1_Phl), .Y(_14_) );
NAND2X1 NAND2X1_8 ( .A(_13_), .B(_14_), .Y(dot3_Ghl) );
INVX1 INVX1_5 ( .A(dot2_Ghl), .Y(_15_) );
NAND2X1 NAND2X1_9 ( .A(dot3_Ghl), .B(dot2_Phl), .Y(_16_) );
NAND2X1 NAND2X1_10 ( .A(_15_), .B(_16_), .Y(_6_) );
INVX1 INVX1_6 ( .A(dot1_Gl), .Y(_17_) );
NAND2X1 NAND2X1_11 ( .A(dot0_Ghl), .B(dot1_Pl), .Y(_18_) );
NAND2X1 NAND2X1_12 ( .A(_17_), .B(_18_), .Y(dot5_Ghl) );
INVX1 INVX1_7 ( .A(dot2_Gl), .Y(_19_) );
NAND2X1 NAND2X1_13 ( .A(dot3_Ghl), .B(dot2_Pl), .Y(_20_) );
NAND2X1 NAND2X1_14 ( .A(_19_), .B(_20_), .Y(dot6_Ghl) );
INVX1 INVX1_8 ( .A(y0), .Y(_21_) );
INVX1 INVX1_9 ( .A(x0), .Y(_22_) );
NOR2X1 NOR2X1_1 ( .A(_21_), .B(_22_), .Y(dot0_Gl) );
XOR2X1 XOR2X1_6 ( .A(y0), .B(x0), .Y(_0_) );
INVX1 INVX1_10 ( .A(y1), .Y(_23_) );
INVX1 INVX1_11 ( .A(x1), .Y(_24_) );
NOR2X1 NOR2X1_2 ( .A(_23_), .B(_24_), .Y(dot0_Gh) );
NAND2X1 NAND2X1_15 ( .A(_23_), .B(_24_), .Y(dot0_Ph) );
XOR2X1 XOR2X1_7 ( .A(y1), .B(x1), .Y(h_0_) );
INVX1 INVX1_12 ( .A(y2), .Y(_25_) );
INVX1 INVX1_13 ( .A(x2), .Y(_26_) );
NOR2X1 NOR2X1_3 ( .A(_25_), .B(_26_), .Y(dot1_Gl) );
NAND2X1 NAND2X1_16 ( .A(_25_), .B(_26_), .Y(dot1_Pl) );
XOR2X1 XOR2X1_8 ( .A(y2), .B(x2), .Y(h_1_) );
INVX1 INVX1_14 ( .A(y3), .Y(_27_) );
INVX1 INVX1_15 ( .A(x3), .Y(_28_) );
NOR2X1 NOR2X1_4 ( .A(_27_), .B(_28_), .Y(dot1_Gh) );
NAND2X1 NAND2X1_17 ( .A(_27_), .B(_28_), .Y(dot1_Ph) );
XOR2X1 XOR2X1_9 ( .A(y3), .B(x3), .Y(h_2_) );
INVX1 INVX1_16 ( .A(y4), .Y(_29_) );
INVX1 INVX1_17 ( .A(x4), .Y(_30_) );
NOR2X1 NOR2X1_5 ( .A(_29_), .B(_30_), .Y(dot2_Gl) );
NAND2X1 NAND2X1_18 ( .A(_29_), .B(_30_), .Y(dot2_Pl) );
XOR2X1 XOR2X1_10 ( .A(y4), .B(x4), .Y(h_3_) );
INVX1 INVX1_18 ( .A(y5), .Y(_31_) );
INVX1 INVX1_19 ( .A(x5), .Y(_32_) );
NOR2X1 NOR2X1_6 ( .A(_31_), .B(_32_), .Y(dot2_Gh) );
NAND2X1 NAND2X1_19 ( .A(_31_), .B(_32_), .Y(dot2_Ph) );
XOR2X1 XOR2X1_11 ( .A(y5), .B(x5), .Y(h_4_) );
FILL FILL_0_0_0 ( );
FILL FILL_0_0_1 ( );
FILL FILL_0_0_2 ( );
FILL FILL_0_1_0 ( );
FILL FILL_0_1_1 ( );
FILL FILL_0_1_2 ( );
FILL FILL_1_1 ( );
FILL FILL_1_2 ( );
FILL FILL_1_0_0 ( );
FILL FILL_1_0_1 ( );
FILL FILL_1_0_2 ( );
FILL FILL_1_1_0 ( );
FILL FILL_1_1_1 ( );
FILL FILL_1_1_2 ( );
FILL FILL_2_1 ( );
FILL FILL_2_0_0 ( );
FILL FILL_2_0_1 ( );
FILL FILL_2_0_2 ( );
FILL FILL_2_1_0 ( );
FILL FILL_2_1_1 ( );
FILL FILL_2_1_2 ( );
endmodule
