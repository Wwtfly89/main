module decoder(E , In , Out);
input E;
input [2:0] In;
output[7:0] Out;
wire [7:0]  Out;
assign Out  =E ? (8'b1 << In) : 8'h0;

endmodule
