module test();

	wire s0,s1,s2,s3,s4,s5,ov; 	
	reg x0,x1,x2,x3,x4,x5,y0,y1,y2,y3,y4,y5;
	reg clk,reset;
	reg s0_expected,s1_expected,s2_expected,s3_expected,s4_expected,s5_expected,ov_expected;
	reg[31:0] vectornum, errors; 
	reg[3:0]  datavectors[10000:0];

	adder prefix_adder(	.s0(s0),
				.s1(s1),
				.s2(s2),
				.s3(s3),
				.s4(s4),
				.s5(s5),
				.ov(ov),
				.x0(x0),
				.x1(x1),
				.x2(x2),
				.x3(x3),
				.x4(x4),
				.x5(x5),
				.y0(y0),
				.y1(y1),
				.y2(y2),
				.y3(y3),
				.y4(y4),
				.y5(y5)
			   );

always
	begin
		clk=1; #5; clk=0; #5;
	end

initial            
	begin
		$readmemb("data.tv", datavectors); 
		vectornum= 0; 
		errors = 0;
		reset = 1; #27; reset = 0;

	end

always @(posedge clk)
	begin
		#1; 
		{x0,x1,x2,x3,x4,x5,y0,y1,y2,y3,y4,y5, s0_expected, s1_expected, s2_expected, s3_expected, s4_expected, s5_expected, ov_expected} = datavectors[vectornum];
	end

always @(negedge clk)
	if (~reset)          
		begin 
			if (s0!==s0_expected || s1!==s1_expected || s2!==s2_expected || s3!==s3_expected || s4!==s4_expected || s5!==s5_expected || ov!==ov_expected) 
				begin  
					errors = errors + 1;
				end
			vectornum= vectornum + 1;
		end

initial
	begin
		if(errors!==0)
			$display("ERRORS");
	end


endmodule

