module not_gate(input x, output y);
  reg y;
  always@*begin
  y=~x;
  end
endmodule
