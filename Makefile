VERILOG = iverilog
TARGET = hw_1.vcd
TEMP = decoder.vpp
$(TARGET) : decoder.vvp
	vvp decoder.vvp

decoder.vvp: hw_1_tb.v hw_1.v
	$(VERILOG) -o decoder.vvp hw_1_tb.v hw_1.v
clean:
	-del $(TARGET)
	-del $(TEMP)
