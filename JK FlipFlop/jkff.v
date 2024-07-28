module jkff(c,j,k, q,qb);
    input c,j,k;
    output q,qb;
	 reg q;
	 reg qb;
	 always@(posedge c)
	 begin
	 if(j&&~k)
	 begin
	 q<=1'b1;qb<=1'b0;
	 end
	 else
	 begin
	 if(~j&&k)
	 begin
	 q<=1'b0;
	 qb<=1'b1;
	 end
	 else begin
	 if(~j&&~k)
	 begin
	 q<=~q;
	 qb<=~qb;
	 end 
	 else
	 begin if(j&&k)
	 begin
	 q<=q;
	 qb<=qb;
	 end
end
end
end
end
