// Code your testbench here
// or browse Examples
module tb();
  reg[3:0] a_r,b_r;
  reg c_r;
  wire [3:0] sum_w;
  wire co_w;
  
adder_hier uAdder_hier0(
  .result_o(sum_w),
  .carry_o(co_w),
  .r1_i(a_r),
  .r2_i(b_r),
  .ci_i(c_r)
    );
  
initial begin

      a_r[3:0]=4'b0000; b_r[3:0]=4'b0000;c_r=1'b0;
     #1 a_r[3:0]=4'b0011; b_r[3:0]=4'b0010; c_r=1'b0;
    

    
#1 $finish();
    
end 
    
initial begin
      
$monitor("%g: a_r=%d, b_r=%d, c_r=%d, sum_w=%d,co_w=%d ", $time, a_r,b_r,c_r,sum_w,co_w); 
  
  $dumpfile("test.vcd");
$dumpvars(1);
                
end
endmodule
        