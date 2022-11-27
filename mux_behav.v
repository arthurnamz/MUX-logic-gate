module mux_behav
(
 input a,
 input b,
 input s,
 output out
);

assign out = (~s & a) | (s & b);

endmodule
