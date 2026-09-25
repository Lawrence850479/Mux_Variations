`timescale 1ns/1ps
`include "2_1_mux.v"

module tb_mux2;

   reg a_tb, b_tb, sel_tb;
   wire y_tb;

   mux2 dut (.a(a_tb), .b(b_tb), .sel(sel_tb), .y(y_tb));

   initial begin 
    $monitor("%t, %b, %b, %b, | %b", $time, a_tb, b_tb, sel_tb, y_tb);

    sel_tb = 0; a_tb = 0; b_tb = 0; #10
    sel_tb = 0; a_tb = 0; b_tb = 1; #10
    sel_tb = 0; a_tb = 1; b_tb = 0; #10
    sel_tb = 0; a_tb = 1; b_tb = 1; #10
    sel_tb = 1; a_tb = 0; b_tb = 0; #10
    sel_tb = 1; a_tb = 0; b_tb = 1; #10
    sel_tb = 1; a_tb = 1; b_tb = 0; #10
    sel_tb = 1; a_tb = 1; b_tb = 1; #10
    $finish;

   end
endmodule

