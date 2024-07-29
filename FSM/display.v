module display(input [3:0]ind,output reg [6:0]outd);
always @ (outd) begin
case({ind})

4'b0000 : outd = 7'b1000000; //0
4'b0001 : outd = 7'b1111001; //1
4'b0010 : outd = 7'b0110000; //2
4'b0011 : outd = 7'b0011001; //3
4'b0100 : outd = 7'b0011001;	//4
4'b0101 : outd = 7'b0010010;	//5
4'b0110 : outd = 7'b0000010;	//6
4'b0111 : outd = 7'b1111000;	//7
4'b1000 : outd = 7'b0000000;	//8
4'b1001 : outd = 7'b0011000;	//9
4'b1010 : outd = 7'b0001000;	//A
4'b1011 : outd = 7'b0000011;	//B
4'b1100 : outd = 7'b1000110;	//C
4'b1101 : outd = 7'b0100001;	//D
4'b1110 : outd = 7'b0000110;	//E
4'b1111 : outd = 7'b0001110;	//F
default : outd = 7'b1111111;
endcase
end
endmodule
