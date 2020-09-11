module MUX(clk, sinal, in_data1, in_data2, out_data);

parameter                    data_bits = 31;
input                        clk, sinal;
input    [data_bits:0]       in_data1;
input    [data_bits:0]       in_data2;
output   [data_bits:0]       out_data;
reg      [data_bits:0]       out_data;

always @(posedge clk)
begin
	if (sinal==0)
		out_data = in_data1;
	else
		out_data = in_data2;
end

endmodule