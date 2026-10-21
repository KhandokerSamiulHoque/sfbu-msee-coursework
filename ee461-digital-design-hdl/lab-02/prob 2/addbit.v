module addbit( input a,b,c, output sum,co);
  assign {co, sum}=a+b+c;
endmodule