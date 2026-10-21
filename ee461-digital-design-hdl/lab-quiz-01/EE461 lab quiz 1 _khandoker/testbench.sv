module tb();
reg a, b, c;
wire o;
  cmospmos cmospmos_tb( .a(a), .b(b), .c(c), .z(z) );
initial begin
  $dumpfile("dump.vcd");
  $dumpvars (0,tb);
a = 1'b0;
b = 1'b0;
c = 1'b0; 
#5
a = 1'b0;
b =1'b0;
c = 1'b1; 
#5
a = 1'b0;
b = 1'b1;
c = 1'b0;
#5 
a = 1'b0;
b = 1'b1;
c = 1'b1;
#5 
a = 1'b1;
b = 1'b0;
c = 1'b0;
#5
a = 1'b1;
b =1'b0;
c = 1'b1;
#5
a = 1'b1;
b =1'b1;
c = 1'b0;
#5
a = 1'b1;
b =1'b1;
c = 1'b1;
#5
$finish();
end
endmodule