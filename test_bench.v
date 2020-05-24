module test();

	wire[0:6] s;
 	
	reg[0:5] x;
	reg[0:5] y;
	integer i,j,errornum; 

	adder prefix_adder(	.s0(s[6]),
				.s1(s[5]),
				.s2(s[4]),
				.s3(s[3]),
				.s4(s[2]),
				.s5(s[1]),
				.ov(s[0]),
				.x0(x[5]),
				.x1(x[4]),
				.x2(x[3]),
				.x3(x[2]),
				.x4(x[1]),
				.x5(x[0]),
				.y0(y[5]),
				.y1(y[4]),
				.y2(y[3]),
				.y3(y[2]),
				.y4(y[1]),
				.y5(y[0])
			   );
	initial 
		begin
			{x[0:5]}=0;
			{y[0:5]}=0;
			errornum=0; 
					
			for(i=0;i<64; i=i+1) 
				begin
					{x[0:5]}=i;
					#1
					for(j=0;j<64; j=j+1) 
						begin
							{y[0:5]}=j; 
							#1
							$display("%d%d%d%d%d%d + %d%d%d%d%d%d = %d%d%d%d%d%d%d",x[0],x[1],x[2],x[3],x[4],x[5],y[0],y[1],y[2],y[3],y[4],y[5],s[0],s[1],s[2],s[3],s[4],s[5],s[6]);
							if({s[0:6]}!={x[0:5]}+{y[0:5]})
								begin
									errornum=errornum+1; 								
									$display("error");
									
								end
							
						end
					 
				end
			
			$display("\nErrors: %d",errornum);
					
		end

endmodule

