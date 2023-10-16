module dipSwitch (
        input clk, 
        input [7:0] switch,
        output reg [3:0] ctrl,
	output reg [7:0] segment
);
  
always @(posedge clk) begin
  ctrl = 4'b0111;    //7-segment control (cathode)
	case (switch)
		8'b00000001: segment = 8'b01100000;  //1
		8'b00000010: segment = 8'b11011010;  //2
		8'b00000100: segment = 8'b11110010;  //3
		8'b00001000: segment = 8'b01100110;  //4
		8'b00010000: segment = 8'b10110110;  //5
		8'b00100000: segment = 8'b10111110;  //6
		8'b01000000: segment = 8'b11100000;  //7
		8'b10000000: segment = 8'b11111110;  //8
		default: segment = 8'b00000010;      //-
	endcase
end
  
endmodule
