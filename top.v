module top(in1, in2, alu_mode, out);
​
input [3:0] in1, in2, alu_mode;
output reg [7:0] out;
​
always @(*) 
begin 
	case(alu_mode)
		4'b0000:
			out = in1 + in2;
	        4'b0001:
			out = in1 - in2;
		4'b0010:
			out = in1>>2;
		4'b0011:
			out = in1 ^ in2;
		4'b0100:
			out = in1 * in2;
		default:
			out = 0;
	endcase
end
​
endmodule
