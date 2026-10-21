// Code your design here
module dffsynch(
 d_i, 
 rst_i, 
 clk_i,
 q_o
);
 input d_i,rst_i,clk_i;
 output q_o;
 reg q_o;
 always @(posedge clk_i)begin
 if(rst_i) q_o <= 0;
 else q_o <= d_i;
 end
endmodule
