
module tb_fifo_sync;

  reg clk;
  reg rst_n;
  reg cs;
  reg wr_en;
  reg rd_en;
  reg [31:0] data_in;

  wire [31:0] data_out;
  wire empty;
  wire full;

  // DUT
  fifo_sync dut (
    .clk(clk),
    .rst_n(rst_n),
    .cs(cs),
    .wr_en(wr_en),
    .rd_en(rd_en),
    .data_in(data_in),
    .data_out(data_out),
    .empty(empty),
    .full(full)
  );

  // Clock
  always #5 clk = ~clk;

  initial begin

    clk = 0;
    rst_n = 0;
    cs = 1;
    wr_en = 0;
    rd_en = 0;
    data_in = 0;

    // Reset
    #10;
    rst_n = 1;

    // Write data
    #10;
    wr_en = 1;
    data_in = 32'd10;

    #10;
    data_in = 32'd20;

    #10;
    data_in = 32'd30;

    #10;
    wr_en = 0;

    // Read data
    #10;
    rd_en = 1;

    #30;
    rd_en = 0;

    // Finish
    #20;
    $finish;

  end

  // Monitor
  initial begin
    $monitor("time=%0t wr=%0b rd=%0b data_in=%0d data_out=%0d empty=%0b full=%0b",
              $time, wr_en, rd_en, data_in, data_out, empty, full);
  end

endmodule
