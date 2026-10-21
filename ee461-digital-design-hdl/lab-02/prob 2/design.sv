// Code your design here
`include "addbit.v"
module adder_hier(
	   result_o, 
	   carry_o, 	
		r1_i, 	
		r2_i, 	
		ci_i		
);
     
 input    [3:0]   r1_i;
 input    [3:0]   r2_i;         
 input            ci_i;         

     output   [3:0]  result_o;
	 output          carry_o;

	
  wire     [3:0]    r1_i        ;
  wire     [3:0]    r2_i        ;
  wire              ci_i        ;
  wire     [3:0]    result_o    ;
  wire              carry_o     ;  
  
  wire              c1_w        ;
  wire              c2_w        ;
  wire              c3_w        ;  

addbit u0 (r1_i[0],r2_i[0],ci_i,result_o[0],c1_w);
addbit u1 (r1_i[1],r2_i[1],c1_w,result_o[1],c2_w);
addbit u2 (r1_i[2],r2_i[2],c2_w,result_o[2],c3_w);
addbit u3 (r1_i[3],r2_i[3],c3_w,result_o[3],carry_o);
  
endmodule