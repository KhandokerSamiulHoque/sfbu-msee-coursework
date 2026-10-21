module triOR (input x, y, u, output z);
  assign z = x | y | u;
endmodule
module triAND (input x, y, u, output z);
  assign z = x & y & u;
endmodule

module testbench;
  reg x, y, u;
  wire z1, z2;

  triOR dut1 (x, y, u, z1);
  triAND dut2 (x, y, u, z2);

initial begin
    for (x=0; x<2; x=x+1)
    for (y=0; y<2; y=y+1)
    for (u=0; u<2; u=u+1)
   begin
     #10 $display("x=%b y=%b u=%b z1=%b z2=%b", x, y, u, z1, z2);
 
end
endmodule
