module tb;
  reg  x;
  reg  y;
  wire z;
  
  and_gate AND_always_block(.x(x), .y(y), .z(z));

  
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars;

    x = 1'b0;
    y = 1'b0; 
    #1 
    x = 1'b1;
    y = 1'b0; 
    #1
    x = 1'b1;
    y = 1'b0;
    #1
    x = 1'b1;
    y = 1'b1;
    
    $display("x = %b y = %b z= %b",x, y, z); #1
    $finish();
    
    
  end
  
endmodule