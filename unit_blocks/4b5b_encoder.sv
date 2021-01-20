module encoder_4b5b(in,out,clk);
input [3:0] in;
output [4:0] out;
input clk;
reg out_r;
assign out = out_r;

always @(posedge clk)
begin
	case (in)
		4'b0000: out_r<=5'b11110;
		4'b0001: out_r<=5'b01001;
		4'b0010: out_r<=5'b10100;
		4'b0011: out_r<=5'b10101;
		4'b0100: out_r<=5'b01010;
		4'b0101: out_r<=5'b01011;
		4'b0110: out_r<=5'b01110;
		4'b0111: out_r<=5'b01111; 
		4'b1000: out_r<=5'b10010;
		4'b1001: out_r<=5'b10011;
		4'b1010: out_r<=5'b10110;
		4'b1011: out_r<=5'b10111;
		4'b1100: out_r<=5'b11010;
		4'b1101: out_r<=5'b11011;
		4'b1110: out_r<=5'b11100;
		4'b1111: out_r<=5'b11101;
	endcase
end

endmodule
