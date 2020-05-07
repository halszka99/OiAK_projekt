module dot(Ghl,Phl,Gh,Ph,Gl,Pl);

	output Ghl,Phl;
	input Gh,Ph,Gl,Pl; 
	wire wire1; 

	or or1(Ghl,Gh,wire1);
	and and1(wire1,Ph,Gl);
	and and2(Phl,Ph,Pl);

endmodule
