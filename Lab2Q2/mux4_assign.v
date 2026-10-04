`timescale 1ns/1ps 

module mux4_assign
(
   input wire [3:0] d, 
   input wire [1:0] sel,
   output wire y_assign
);

assign y_assign = d[sel];

endmodule