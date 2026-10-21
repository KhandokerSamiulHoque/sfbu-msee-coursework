module tb();
  reg x,y;
  wire z;
  
  nand_gate NAND_always_block(.x(x), .y(y), .z(z));
  
  initial begin
    $dumpfile("tb.vcd");
    $dumpvars;
    x=0;
    y=0;
    #5
    x=0;
    y=1;
    #5
    x=1;
    y=0;
    #5
    x=1;
    y=1;
    $display("x = %b y = %b c= %b",x, y, z);
    #5
    $finish();
  end 
endmodule