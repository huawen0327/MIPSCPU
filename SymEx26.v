module SymEx26(clk, data_in, data_out);

// parameter              data_bits = 4;
input                  clk;
input    [15:0]        data_in;
output   [31:0]        data_out;

reg      [31:0]        data_reg;

always @(posedge clk) begin

    data_reg [25:0] = data_in;
    data_reg [31:26] = 6'b000000;

end

assign  data_out = data_reg;

endmodule
