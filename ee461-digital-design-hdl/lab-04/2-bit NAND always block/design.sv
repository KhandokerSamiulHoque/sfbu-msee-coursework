module nand_gate(input x, y, output z);
  reg z;
  always@*begin
    z=x~&y;
  end
endmodule