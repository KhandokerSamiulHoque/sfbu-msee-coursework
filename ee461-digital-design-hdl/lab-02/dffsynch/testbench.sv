// Code your testbench here
// or browse Examples
module dff_synch;
reg d_i,clk_i,rst_i;
wire q_o;
  
  dffsynch dff_synch(d_i, clk_i, rst_i, q_o);
  
initial begin
  d_i = 0;
  clk_i = 0;
  rst_i = 0;
  
$dumpfile("test.vcd");
$dumpvars(1);
 #100 $finish; 
    
end
  always #2 d_i=~d_i;
  always #4 clk_i=~clk_i;
  always #6 rst_i=~rst_i;
endmodule