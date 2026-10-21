module tb;

  reg x;

  wire y;

  not_gate NOTGate_assign_block ( .x(x), .y(y) );

  initial begin
    $dumpfile("dump.vcd");
    $dumpvars;
    x = 0;
    #5
    x=1;

    #5 $display("x = %b, y = %b", x, y);
  $finish();
  end 
endmodule
