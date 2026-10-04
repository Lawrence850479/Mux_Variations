`timescale 1ns/1ps 

module tb_mux4_all;

   reg[3:0] tb_d;
   reg[1:0] tb_sel;
   wire tb_y_assign; 
   wire tb_y_case;
   wire tb_y_ifelse;

   integer i, j;
   reg fail;

mux4_assign dut_assign (.d(tb_d), .sel(tb_sel), .y_assign(tb_y_assign));

mux4_case   dut_case (.d(tb_d), .sel(tb_sel), .y_case(tb_y_case));

mux4_ifelse dut_ifelse (.d(tb_d), .sel(tb_sel), .y_ifelse(tb_y_ifelse));

initial begin
    fail = 1'b0;
    for (i = 0; i < 16; i = i + 1) begin
        for (j = 0; j < 4; j = j + 1) begin
            tb_d   = i[3:0];
            tb_sel = j[1:0];
            #5;
            if ((tb_y_assign !== tb_d[tb_sel]) || (tb_y_case   !== tb_d[tb_sel]) || (tb_y_ifelse !== tb_d[tb_sel])) begin
                $display("ERROR: d=%b sel=%b expected=%b assign=%b case=%b ifelse=%b", tb_d, tb_sel, tb_d[tb_sel], tb_y_assign, tb_y_case, tb_y_ifelse);
                fail = 1'b1;
            end
        end
    end
    if (fail) $display("RESULT: FAIL");
    else      $display("RESULT: PASS");
    $finish;

end

endmodule
