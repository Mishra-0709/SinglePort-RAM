module single_port_ram
  #(parameter addr_width=6,
    parameter data_width=8,
    parameter depth=64)
  (input[data_width-1:0]data,
   input[addr_width-1:0]addr,
   input we,clk,
   output[data_width-1:0]q);
  reg[data_width-1:0]ram[depth-1:0];
  reg[addr_width-1:0]addr_reg;
  always@(posedge clk)
    begin
      if(we)
        ram[addr]<=data;
      else
        addr_reg<=addr;
    end
  assign q=ram[addr_reg];
endmodule
