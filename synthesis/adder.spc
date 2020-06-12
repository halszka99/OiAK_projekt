*SPICE netlist created from BLIF module adder by blif2BSpice
.include /usr/share/qflow/tech/osu050/osu050_stdcells.sp
.subckt adder vdd gnd x0 x1 x2 x3 x4 x5 y0 y1 y2 y3 y4 y5 s0 s1 s2 s3 s4 s5 ov 
XXOR2X1_1 _1_ vdd dot0.Gl h[0] gnd XOR2X1
XXOR2X1_2 _2_ vdd dot0.Ghl h[1] gnd XOR2X1
XXOR2X1_3 _3_ vdd dot5.Ghl h[2] gnd XOR2X1
XXOR2X1_4 _4_ vdd dot3.Ghl h[3] gnd XOR2X1
XXOR2X1_5 _5_ vdd dot6.Ghl h[4] gnd XOR2X1
XBUFX2_1 vdd gnd _0_ s0 BUFX2
XBUFX2_2 vdd gnd _1_ s1 BUFX2
XBUFX2_3 vdd gnd _2_ s2 BUFX2
XBUFX2_4 vdd gnd _3_ s3 BUFX2
XBUFX2_5 vdd gnd _4_ s4 BUFX2
XBUFX2_6 vdd gnd _5_ s5 BUFX2
XBUFX2_7 vdd gnd _6_ ov BUFX2
XINVX1_1 dot0.Gh _7_ vdd gnd INVX1
XNAND2X1_1 vdd _8_ gnd dot0.Gl dot0.Ph NAND2X1
XNAND2X1_2 vdd dot0.Ghl gnd _7_ _8_ NAND2X1
XINVX1_2 dot1.Gh _9_ vdd gnd INVX1
XNAND2X1_3 vdd _10_ gnd dot1.Gl dot1.Ph NAND2X1
XNAND2X1_4 vdd dot1.Ghl gnd _9_ _10_ NAND2X1
XAND2X2_1 vdd gnd dot1.Ph dot1.Pl dot1.Phl AND2X2
XINVX1_3 dot2.Gh _11_ vdd gnd INVX1
XNAND2X1_5 vdd _12_ gnd dot2.Gl dot2.Ph NAND2X1
XNAND2X1_6 vdd dot2.Ghl gnd _11_ _12_ NAND2X1
XAND2X2_2 vdd gnd dot2.Ph dot2.Pl dot2.Phl AND2X2
XINVX1_4 dot1.Ghl _13_ vdd gnd INVX1
XNAND2X1_7 vdd _14_ gnd dot0.Ghl dot1.Phl NAND2X1
XNAND2X1_8 vdd dot3.Ghl gnd _13_ _14_ NAND2X1
XINVX1_5 dot2.Ghl _15_ vdd gnd INVX1
XNAND2X1_9 vdd _16_ gnd dot3.Ghl dot2.Phl NAND2X1
XNAND2X1_10 vdd _6_ gnd _15_ _16_ NAND2X1
XINVX1_6 dot1.Gl _17_ vdd gnd INVX1
XNAND2X1_11 vdd _18_ gnd dot0.Ghl dot1.Pl NAND2X1
XNAND2X1_12 vdd dot5.Ghl gnd _17_ _18_ NAND2X1
XINVX1_7 dot2.Gl _19_ vdd gnd INVX1
XNAND2X1_13 vdd _20_ gnd dot3.Ghl dot2.Pl NAND2X1
XNAND2X1_14 vdd dot6.Ghl gnd _19_ _20_ NAND2X1
XINVX1_8 y0 _21_ vdd gnd INVX1
XINVX1_9 x0 _22_ vdd gnd INVX1
XNOR2X1_1 vdd _22_ gnd dot0.Gl _21_ NOR2X1
XXOR2X1_6 _0_ vdd x0 y0 gnd XOR2X1
XINVX1_10 y1 _23_ vdd gnd INVX1
XINVX1_11 x1 _24_ vdd gnd INVX1
XNOR2X1_2 vdd _24_ gnd dot0.Gh _23_ NOR2X1
XNAND2X1_15 vdd dot0.Ph gnd _23_ _24_ NAND2X1
XXOR2X1_7 h[0] vdd x1 y1 gnd XOR2X1
XINVX1_12 y2 _25_ vdd gnd INVX1
XINVX1_13 x2 _26_ vdd gnd INVX1
XNOR2X1_3 vdd _26_ gnd dot1.Gl _25_ NOR2X1
XNAND2X1_16 vdd dot1.Pl gnd _25_ _26_ NAND2X1
XXOR2X1_8 h[1] vdd x2 y2 gnd XOR2X1
XINVX1_14 y3 _27_ vdd gnd INVX1
XINVX1_15 x3 _28_ vdd gnd INVX1
XNOR2X1_4 vdd _28_ gnd dot1.Gh _27_ NOR2X1
XNAND2X1_17 vdd dot1.Ph gnd _27_ _28_ NAND2X1
XXOR2X1_9 h[2] vdd x3 y3 gnd XOR2X1
XINVX1_16 y4 _29_ vdd gnd INVX1
XINVX1_17 x4 _30_ vdd gnd INVX1
XNOR2X1_5 vdd _30_ gnd dot2.Gl _29_ NOR2X1
XNAND2X1_18 vdd dot2.Pl gnd _29_ _30_ NAND2X1
XXOR2X1_10 h[3] vdd x4 y4 gnd XOR2X1
XINVX1_18 y5 _31_ vdd gnd INVX1
XINVX1_19 x5 _32_ vdd gnd INVX1
XNOR2X1_6 vdd _32_ gnd dot2.Gh _31_ NOR2X1
XNAND2X1_19 vdd dot2.Ph gnd _31_ _32_ NAND2X1
XXOR2X1_11 h[4] vdd x5 y5 gnd XOR2X1
XFILL_0_0_0 vdd gnd FILL
XFILL_0_0_1 vdd gnd FILL
XFILL_0_0_2 vdd gnd FILL
XFILL_0_1_0 vdd gnd FILL
XFILL_0_1_1 vdd gnd FILL
XFILL_0_1_2 vdd gnd FILL
XFILL_1_1 vdd gnd FILL
XFILL_1_2 vdd gnd FILL
XFILL_1_0_0 vdd gnd FILL
XFILL_1_0_1 vdd gnd FILL
XFILL_1_0_2 vdd gnd FILL
XFILL_1_1_0 vdd gnd FILL
XFILL_1_1_1 vdd gnd FILL
XFILL_1_1_2 vdd gnd FILL
XFILL_2_1 vdd gnd FILL
XFILL_2_0_0 vdd gnd FILL
XFILL_2_0_1 vdd gnd FILL
XFILL_2_0_2 vdd gnd FILL
XFILL_2_1_0 vdd gnd FILL
XFILL_2_1_1 vdd gnd FILL
XFILL_2_1_2 vdd gnd FILL
.ends adder
 
