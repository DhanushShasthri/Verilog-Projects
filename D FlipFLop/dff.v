module dff(c,r,d, q,qb);
    input c,r,d;
    output q,qb;
	 reg q;
	 wire qb;
	 always@(posedge c)
	 begin
	 if(r)
	 q<=1'b0;
	 else
	 q<=d;
	 end
	 assign qb=~q;

endmodule
