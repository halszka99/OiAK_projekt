module in ( gnd, vdd, x, y, g, p, h);

input gnd, vdd;
input x;
input y;
output g;
output p;
output h;

BUFX2 BUFX2_1 ( .gnd(gnd), .vdd(vdd), .A(_2_), .Y(g) );
BUFX2 BUFX2_2 ( .gnd(gnd), .vdd(vdd), .A(_3_), .Y(h) );
BUFX2 BUFX2_3 ( .gnd(gnd), .vdd(vdd), .A(_4_), .Y(p) );
INVX1 INVX1_1 ( .gnd(gnd), .vdd(vdd), .A(y), .Y(_0_) );
INVX1 INVX1_2 ( .gnd(gnd), .vdd(vdd), .A(x), .Y(_1_) );
NOR2X1 NOR2X1_1 ( .gnd(gnd), .vdd(vdd), .A(_0_), .B(_1_), .Y(_2_) );
NAND2X1 NAND2X1_1 ( .gnd(gnd), .vdd(vdd), .A(_0_), .B(_1_), .Y(_4_) );
XOR2X1 XOR2X1_1 ( .gnd(gnd), .vdd(vdd), .A(y), .B(x), .Y(_3_) );
endmodule
