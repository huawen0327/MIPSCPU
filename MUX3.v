module MUX3(clk, sinal, in_data1, in_data2, out_data);

parameter                    data_bits = 4;
input                        clk;
input                        sinal;
input    [data_bits:0]       in_data1;
input    [data_bits:0]       in_data2;
output   [data_bits:0]       out_data;
reg      [data_bits:0]       out_data;

always @(posedge clk)
begin
    case (sinal)
        2'b00    : out_data = in_data1;
        2'b01    : out_data = in_data2;
        default  : out_data = 5'd31;
    endcase
end

endmodule