module testTrireg (); 
   trireg[7:0] data; 
   reg[1:0] flag; 
  
   assign data =   (flag==1)? 10 : 
                   (flag==0)? 8’bzz:
                   (flag==3)? 30 : 255; 
initial begin
             flag = 1;
             #200 flag=0;
             #200 flag=3;
             #200 flag=0;
             #200 flag=2;
             #200 flag=0;
$monitor(“Time=%g, data=%d”, $time, data); 
#10 $finish;
end 
endmodule