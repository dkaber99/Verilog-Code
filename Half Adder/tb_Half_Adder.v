module tb_Half_Adder;
//Need A*~C + BC
	reg A,B;//,C;
	wire cout,sum;
	Half_Adder Half_Adder(A,B,cout,sum);
	initial begin
		$monitor(A,"+",B,"=",sum,",Carry out =",cout);
	end
	
	initial begin
			A=1'b0; B=1'b0;// C=1'b0; //Setting A and B
			#5 A=1'b0; B=1'b1;// C=1'b1; //at time = 5ns, A=0,B=1
			#5 A=1'b1; B=1'b1;// C=1'b0; //at time = 10ns, A=1, B=1
	end //end of initial block
endmodule