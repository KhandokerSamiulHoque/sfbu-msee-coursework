// Code your testbench here
// or browse Examples
module full_adder_tb;
  reg a3_1,b3_1,cin3_1;
  wire sum3_1;
  wire cout3_1;
  
  oneBitFA1 prob3_1(
    .a_i(a3_1),.b_i(b3_1),.ci_i(cin3_1),.sum_o(sum3_1),.co_o(cout3_1));
 
  initial begin
    $dumpfile("dump.vcd");
  $dumpvars;
  end
  
  initial begin
    a3_1=1'b0;
    b3_1=1'b0;
    cin3_1=1'b0;
    
    #10
    a3_1=1'b0;
    b3_1=1'b0;
    cin3_1=1'b1;
    
    #10
    a3_1=1'b0;
    b3_1=1'b1;
    cin3_1=1'b0;
    
    #10
    a3_1=1'b0;
    b3_1=1'b1;
    cin3_1=1'b1;
    
    #10
    a3_1=1'b1;
    b3_1=1'b0;
    cin3_1=1'b0;
    
    #10
    a3_1=1'b1;
    b3_1=1'b0;
    cin3_1=1'b1;
    
    #10
    a3_1=1'b1;
    b3_1=1'b1;
    cin3_1=1'b0;
    
    #10
    a3_1=1'b1;
    b3_1=1'b1;
    cin3_1=1'b1;
    
    #10 $finish();
    
  end
endmodule
