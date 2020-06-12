module in (x, y, g, p, h);

input x;
input y;
output g;
output p;
output h;

wire vdd = 1'b1;
wire gnd = 1'b0;

BUFX2 BUFX2_1 ( .A(_2_), .Y(g) );
BUFX2 BUFX2_2 ( .A(_3_), .Y(h) );
BUFX2 BUFX2_3 ( .A(_4_), .Y(p) );
INVX1 INVX1_1 ( .A(y), .Y(_0_) );
INVX1 INVX1_2 ( .A(x), .Y(_1_) );
NOR2X1 NOR2X1_1 ( .A(_0_), .B(_1_), .Y(_2_) );
NAND2X1 NAND2X1_1 ( .A(_0_), .B(_1_), .Y(_4_) );
XOR2X1 XOR2X1_1 ( .A(y), .B(x), .Y(_3_) );
endmodule
