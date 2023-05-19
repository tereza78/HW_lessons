`timescale 1 ns/1 ps
module tb;
reg [3:0] in1, in2, alu_mode;
wire [7:0] out;

top t( in1, in2, alu_mode, out);

initial begin
	$dumpfile("v.vcd");
	$dumpvars();
end

initial begin 
	in1  = 4'b0;
	in2  = 4'b0;
	alu_mode = 4'b1111;
end

always @(*) begin 
        $display ("time=%0t in1=%b in2=%b out=%b ", $time, in1, in2, out);
	in1  = 4'b0010;
	in2  = 4'b0011;
	alu_mode = 4'b0000;
        $display ("time=%0t in1=%b in2=%b out=%b ", $time, in1, in2, out);
	#15;
	in1  = 4'b0011;
	in2  = 4'b0100;
	alu_mode = 4'b0001;
        $display ("time=%0t in1=%b in2=%b out=%b ", $time, in1, in2, out);
	#50;
	$finish;
end

endmodule
