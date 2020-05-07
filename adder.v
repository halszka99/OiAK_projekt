module adder(s0,s1,s2,s3,s4,s5,ov,x0,x1,x2,x3,x4,x5,y0,y1,y2,y3,y4,y5);
	
	output s0,s1,s2,s3,s4,s5,ov;
	input x0,x1,x2,x3,x4,x5,y0,y1,y2,y3,y4,y5;
	wire g[5:0],p[5:0],h[4:0],l[5:0],l2[1:0],l3[1:0];
	

	in in0(.g(g[0]),.p(p[0]),.h(s0),.x(x0),.y(y0));
	in in1(.g(g[1]),.p(p[1]),.h(h[0]),.x(x1),.y(y1));
	in in2(.g(g[2]),.p(p[2]),.h(h[1]),.x(x2),.y(y2));
	in in3(.g(g[3]),.p(p[3]),.h(h[2]),.x(x3),.y(y3));
	in in4(.g(g[4]),.p(p[4]),.h(h[3]),.x(x4),.y(y4));
	in in5(.g(g[5]),.p(p[5]),.h(h[4]),.x(x5),.y(y5));

	dot dot0(.Ghl(l[0]),.Phl(l[1]),.Gh(g[1]),.Ph(p[1]),.Gl(g[0]),.Pl(p[0]));
	dot dot1(.Ghl(l[2]),.Phl(l[3]),.Gh(g[3]),.Ph(p[3]),.Gl(g[2]),.Pl(p[2]));
	dot dot2(.Ghl(l[4]),.Phl(l[5]),.Gh(g[5]),.Ph(p[5]),.Gl(g[4]),.Pl(p[4]));

	dot dot3(.Ghl(l2[0]),.Phl(l2[1]),.Gh(l[2]),.Ph(l[3]),.Gl(l[0]),.Pl(l[1]));

	dot dot4(.Ghl(ov),.Phl(),.Gh(l[4]),.Ph(l[5]),.Gl(l2[0]),.Pl(l2[1]));

	dot dot5(.Ghl(l3[0]),.Phl(),.Gh(g[2]),.Ph(p[2]),.Gl(l[0]),.Pl(l[1]));
	dot dot6(.Ghl(l3[1]),.Phl(),.Gh(g[4]),.Ph(p[4]),.Gl(l2[0]),.Pl(l2[1]));
	
	xor o0(s1,g[0],h[0]);
	xor o1(s2,l[0],h[1]);
	xor o2(s3,l3[0],h[2]);
	xor o3(s4,l2[0],h[3]);
	xor o4(s5,l3[1],h[4]);

endmodule
