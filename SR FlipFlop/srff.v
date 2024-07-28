module srff(sr,c,r, q,qb);
    input [1:0]sr;
	 input c,r;
    output q,qb;
	 reg q,qb;
	 initial
	 begin
	 q=1'b0;qb=1'b1;
	 end
	 always@(posedge c	)
	 begin
	 if (r==1'b1)
	 q=1'b0;
	 else begin
	 case(sr)
	 2'b00:q=q;
	 2'b01:q=1'd0;
	 2'b10:q=1'd1;
	 2'b11:q=1'dZ;
	 endcase
	 end
	 qb=~q;
	 end 
endmodule
