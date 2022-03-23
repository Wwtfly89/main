module decoder_3_8_tb;
reg       E_tb; //創建致能E
reg   [2:0]   In_tb; //創建輸入2位元In_tb
wire  [7:0]   out_tb; //創建輸入8位元out_tb
decoder decoder_1(.E(E_tb), .In(In_tb), .Out(Out_tb)); //把所有參數丟入


initial begin
  #0  E_tb = 0 ; In_tb = 3'b000;
  #10  E_tb = 1 ; In_tb = 3'b000;
  #10  E_tb = 1 ; In_tb = 3'b001;
  #10  E_tb = 1 ; In_tb = 3'b010;
  #10  E_tb = 1 ; In_tb = 3'b011;
  #10  E_tb = 1 ; In_tb = 3'b100;
  #10  E_tb = 1 ; In_tb = 3'b101;
  #10  E_tb = 1 ; In_tb = 3'b110;
  #10  E_tb = 1 ; In_tb = 3'b111;
  #10  $finish;
end
initial begin
    $dumpfile("decoder.vcd");
    $dumpvars(0, decoder_1);
    end
    endmodule
