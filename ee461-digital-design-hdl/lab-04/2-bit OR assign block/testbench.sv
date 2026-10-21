module tb();
   reg x;
   reg y;
   wire z;

  OR_gate OR_assign_block (.x(x),.y(y),.z(z));
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
    #10
    $finish();
  end
endmodule

    