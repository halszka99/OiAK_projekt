module in(g,p,h,x,y);

	output g,p,h;
	input x,y;

	and and_g(g,x,y);
	or or_p(p,x,y);
	xor xor_h(h,x,y);

endmodule

