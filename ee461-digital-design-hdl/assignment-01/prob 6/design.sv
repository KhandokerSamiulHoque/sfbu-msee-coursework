// Code your design here
module tri_4_val();
tri0 x;
tri1 y;
reg [3:0] input_data;

initial begin

input_data = 4'b0000;
#1;
input_data = 4'b0001;
#1;
input_data = 4'bxzx;
#1;
input_data = 4'bzzz;
#1;
$finish;
end

assign x = input_data[0];
assign y = input_data[1];

initial begin
  $monitor("%g x = %b y = %b", $time, x, y);
end
endmodule