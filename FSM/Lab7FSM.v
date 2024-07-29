module Lab7FSM(input [3:0]in,input clk,input button,output [6:0]hex0,output [6:0]hex2,output [6:0]hex3,output reg [3:0]Q1,output reg [3:0]Q2,output reg [3:0]Q3,output reg [3:0]Q4,output [6:0]hex4,output [6:0]hex5,output reg [3:0]out);
reg new_clk;
parameter max_count = 150000000; //Multiplied by 3 for 3 seconds
//Clock setup
reg [27:0] count = 0; //Setting up the number of bits needed for the 
display d0(in,hex0); //user's input going int the hex0 display
display d1(Q2,hex2);//Calling the display function for each register
display d2(Q3,hex3); //Their respective register is displayed to its 7-segment display
display d3(Q4,hex4);
display d4(out,hex5);

//Press button //button inverted make module for 7 segment

always @ (posedge new_clk) begin //Loops off the posedge of the new clock made above
if(~button) begin //Activates if the button is pressed 
Q1 <= in; //Nonblocking assignment of inputs
Q2 <= Q1; //The user's input going from the Q1 to the Q2 register

Q3 <= Q2;//The user's input going from the Q2 to the Q3 register

Q4 <= Q3;//The user's input Q4 register

out <= Q4;
end
end

//MAX10_CLK1_50 PIN_P11
always @ (posedge clk) begin //Setting up the new clock 
if(count <= max_count) begin
count = count + 1; //Counts up clock until it reaches the max. The clock rate and max ensures it takes 3 seconds
end
else begin
count = 0;
new_clk = ~new_clk; //resets clock if it has reached the maximum
end
end

endmodule
