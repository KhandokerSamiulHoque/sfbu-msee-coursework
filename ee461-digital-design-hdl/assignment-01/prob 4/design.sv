module triduladevicevariablee;
   tri tri_var;
   assign tri_var = 1'b1;
      wire device2 = 1'bz;
  assign tri_var= device2;
      initial begin
      $monitor("At time %0t, tri_variable = %b", $time, tri_var);
       #10;
      $finish;
   end
endmodule
