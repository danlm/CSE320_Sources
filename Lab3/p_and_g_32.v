`timescale 1ns / 1ps
module p_and_g_32
	#(parameter WIDTH = 32)
	(input wire [WIDTH - 1:0] A,
	input wire [WIDTH - 1:0] B,
	output wire [WIDTH - 1:0] P,
	output wire [WIDTH - 1:0] G);
	
	genvar i;
	generate for(i = 0; i < WIDTH; i = i+1) begin: p_and_g_32
			p_and_g 
				i_p_and_g_b32(
				.A(A[i]),
				.B(B[i]),
				.P(P[i]),
				.G(G[i]));
		end
	endgenerate
	
endmodule
