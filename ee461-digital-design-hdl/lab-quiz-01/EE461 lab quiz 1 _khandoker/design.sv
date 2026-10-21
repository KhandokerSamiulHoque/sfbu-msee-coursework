module cmospmos (input a, b, c, output z);
supply1 vdd; supply0 gnd;
    wire x1;
    wire x2;
    wire x3;
  pmos (x3, vdd, a); pmos (x1, vdd, b); pmos (x3, x1, c);
  nmos (x3, x2, a);
  nmos (x2, gnd, b);
  nmos (x2, gnd, c);
  not (z, x3);
endmodule