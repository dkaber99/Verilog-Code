module Lab1(input A/*, B*//*,C*/, output Z);
//assign Z = ((A || B) & ~C); //LED R0 will be ON if switches SW0 or SW1 are high and button key0 is pressed. Otherwise LED R8 is OFF
//assign Z = A & B; //LED R8 will be ON if switches SW9 and SW8 are HIGH, otherwise it will be OFF
assign Z = A; //Switch 9 is high then ledR8 is on
endmodule 