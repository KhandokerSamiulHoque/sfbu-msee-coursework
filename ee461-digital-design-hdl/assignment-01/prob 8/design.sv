module testInteger();
      wire pwrGood, pwrOn, pwrStable;
     
      integer i;
      
      time t;
      
      real r;
      
      assign pwrStable = 1'b1;
    
      assign pwrOn = 1;  // 1 or 1'b1
      assign pwrGood = pwrOn & pwrStable;
      initial begin
      i=123.456;
      r=123456e-3;
      t=123456e-3;
      $display("i=%0g",i," t=%6.2f",t," r=%f",r);
        
     // #2 $display("TIME=%0d",$time," ON=",pwrOn," STABLE=",pwrStable,“ GOOD=",pwrGood);
                  
      #10 $finish();
                  
      end
endmodule


