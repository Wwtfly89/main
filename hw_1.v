module decoder(E , In , Out); //創造模具
input E;
input [2:0] In; //宣告2位元輸入腳
output[7:0] Out;//宣告8位元輸出腳
wire [7:0]  Out;//宣告腳位資料類型
assign Out  =E ? (8'b1 << In) : 8'h0;//“如果E = 1  （-->In個位元）”,“E = 0 out all為0”。

endmodule
