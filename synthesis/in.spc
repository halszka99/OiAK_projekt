*SPICE netlist created from BLIF module in by blif2BSpice
.include /usr/share/qflow/tech/osu050/osu050_stdcells.sp
.subckt in vdd gnd x y g p h 
XBUFX2_1 vdd gnd _2_ g BUFX2
XBUFX2_2 vdd gnd _3_ h BUFX2
XBUFX2_3 vdd gnd _4_ p BUFX2
XINVX1_1 y _0_ vdd gnd INVX1
XINVX1_2 x _1_ vdd gnd INVX1
XNOR2X1_1 vdd _1_ gnd _2_ _0_ NOR2X1
XNAND2X1_1 vdd _4_ gnd _0_ _1_ NAND2X1
XXOR2X1_1 _3_ vdd x y gnd XOR2X1
.ends in
 