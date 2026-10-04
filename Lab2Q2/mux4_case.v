`timescale 1ns/1ps 

module mux4_case
(
   input wire [3:0] d, 
   input wire [1:0] sel,
   output reg y_case
);

always @(*) begin 
    case(sel)
      2'b00:   y_case = d[0];
      2'b01:   y_case = d[1];
      2'b10:   y_case = d[2];
      default: y_case = d[3];
    endcase
end

endmodule 