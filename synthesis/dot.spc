*SPICE netlist created from BLIF module dot by blif2BSpice
.include /usr/share/qflow/tech/osu050/osu050_stdcells.sp
.subckt dot vdd gnd Gh Ph Gl Pl Ghl Phl 
XINVX1_1 Gh _0_ vdd gnd INVX1
XNAND2X1_1 vdd _1_ gnd Gl Ph NAND2X1
XNAND2X1_2 vdd _2_ gnd _0_ _1_ NAND2X1
XAND2X2_1 vdd gnd Ph Pl _3_ AND2X2
XBUFX2_1 vdd gnd _2_ Ghl BUFX2
XBUFX2_2 vdd gnd _3_ Phl BUFX2
XFILL_0_0_0 vdd gnd FILL
XFILL_0_0_1 vdd gnd FILL
XFILL_0_0_2 vdd gnd FILL
XFILL_0_1_0 vdd gnd FILL
XFILL_0_1_1 vdd gnd FILL
XFILL_0_1_2 vdd gnd FILL
.ends dot
 
