module mux_tb;

reg a1,b1, s1;
wire out1;
reg[3:0] i;

mux_behav DUT1( .a(a1), .b(b1), .s(s1), .out(out1));

initial
begin
 for(i=0; i<8; i =i +1)
 begin
  a1= i[2];
  b1= i[1];
  s1= i[0];

  #2 $display($time," a1 =%b  b1= %b  s1= %b  out1 = %b",a1,b1,s1,out1);
 end
end
initial
begin
  // $monitor( "###### time=%0d i = %b \n", $time, i);
  #100 $finish;
end

endmodule
