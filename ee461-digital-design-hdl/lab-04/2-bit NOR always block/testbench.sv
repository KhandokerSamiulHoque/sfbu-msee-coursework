module tb();
  reg x,y;
  wire z;
  
  nor_gate NOR_always_block(.x(x),.y(y),.z(z));
  
  initial begin
    $dumpfile("dump.vcd");
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
    
    $display("x=%b y=%b z=%b", x,y,z);
    #5 $finish();
  end
  
  always @(posedge z) begin
      $monitor("At time= %0t, x=%b, y=%b, z=%b", $time, x, y, z);
    end
endmodule