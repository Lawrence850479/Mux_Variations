`timescale 1ns/1ps 

module mux4_ifelse
(
   input wire [3:0] d, 
   input wire [1:0] sel,
   output reg y_ifelse
);

always @(*) begin 
   if      (sel == 2'b00) y_ifelse = d[0];
   else if (sel == 2'b01) y_ifelse = d[1];
   else if (sel == 2'b10) y_ifelse = d[2];
   else                   y_ifelse = d[3];
end


endmodule 