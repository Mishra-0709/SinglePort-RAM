module single_port_ram_tb;
  parameter addr_width=6;
  parameter data_width=8;
  parameter depth=64;
  reg[data_width-1:0]data;
  reg[addr_width-1:0]addr;
  reg we;
  reg clk;
  wire[data_width-1:0]q;
  single_port_ram dut(.data(data),.addr(addr),.we(we),.clk(clk),.q(q));
  initial begin
    clk=0;
    forever #5 clk=~clk;
  end
  initial begin
    data=8'h01;
    addr=5'd0;
    we=1'b1;
    #10
    data=8'h02;
    addr=5'd1;
    #10
    data=8'h03;
    addr=5'd2;
    #10
    addr=5'd0;
    we=1'b0;
    #10
    addr=5'd1;
    #10
    addr=5'd2;
    #10;
  end
endmodule
