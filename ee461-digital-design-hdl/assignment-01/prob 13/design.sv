module display_formats;
  reg [7:0] a = 8'hF0;
  reg [3:0] b = 4'h3;
  integer c = 65;
  real d = 3.14159265358979323846;

  initial begin
    $display("a in binary: %b", a);
    $display("a in character: %c", a);
    $display("b in decimal: %d", b);
    $display("b in decimal with zero padding: %0d", b);
    $display("c in ASCII: %c", c);
    $display("d in scientific notation: %e", d);
    $display("d in floating-point: %f", d);
    $display("d with 6 total digits, 2 after the decimal point: %6.2f", d);
    $display("d in shortest representation: %g", d);
    $display("a in hexadecimal: %h", a);
    $display("a in octal: %o", a);
    $display("b in binary: %b", b);
    $display("b in decimal: %d", b);
    $display("b in hexadecimal: %h", b);
    $display("b in binary, with a width of 8 bits: %08b", b);
    $display("b in binary, with a width of 4 bits: %04b", b);
  end
endmodule