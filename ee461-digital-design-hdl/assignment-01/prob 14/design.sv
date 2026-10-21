module compare;
  reg [7:0] m = 8'hF0;
  reg [3:0] n = 4'h3;

initial begin
            $display("$display system task: m = %h, n = %d", m, n);
            $write("$write system task: m = %h, n = %d", m, n);
            $monitor("$monitor system task: m = %h, n = %d", m, n);
end

  always @(m or n) begin
          $display("m = %h and n = %d", m, n);
 end
endmodule