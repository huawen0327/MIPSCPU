module SymEx(clk, sinal, data_in, data_out);


input                  clk, sinal;
input    [15:0]        data_in;
output   [31:0]        data_out;

reg      [31:0]        data_reg;

always @(posedge clk) begin
    if (!sinal) begin
        data_reg [15:0] = data_in;
        data_reg [31:16] = {16{data_in[15]}};
    end
    else begin
        data_reg [15:0] = data_in;
        data_reg [31:16] = 16'b0000000000000000;
    end
end

assign  data_out = data_reg;

endmodule
