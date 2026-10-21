module comparison_Real_Display();
  time real_time, display_time;
  initial begin
               real_time = $realtime;
               #2.71828 display_time = $time;
    $display("Real time: %t", real_time);
    $display("Display time: %t", display_time);
               $finish;
  end
endmodule