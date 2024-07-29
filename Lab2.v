module Lab2(input [1:0]A,B, output [3:0]Z, output reg[6:0]Y );
		assign Z = A * B;
 //Sw8 = PIN_B14 SW9 = Pin_F15  input A
 //Input B SW0= Pin_C10 Sw1 = Pin_C11
 //Leds R0 PIN_A8 R1 PIN_A1 R2 PIN_A10 R3 PIN_B10
 always @ (Z) begin
	case({Z})
 4'b0000 : Y = 7'b1000000; //0 All except 6
 4'b0001 : Y = 7'b1111001; //1 
 4'b0010 : Y = 7'b0100100; //2 0 1 6 4 3
 4'b0011 : Y = 7'b0110000; //3 0 1 2 3 6
 4'b0100 : Y = 7'b0011001; //4 5 6 1 2
 4'b0101 : Y = 7'b0010010; //5 0 5 6 2 3
 4'b0110 : Y = 7'b0000011;	//6 (5) (4) (3) (6) (2)
 4'b0111 : Y =	7'b1111000;	//7 (0) (1) (2) 
 4'b1000	: Y = 7'b0000000;	//8 (0) (1) (2) (3) (4) (5) (6)
 4'b1001 : Y = 7'b0011000;	//9 0 5 1 6 2
  endcase
end
endmodule
