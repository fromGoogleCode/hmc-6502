// cpu.sv
// chip module for hmc-6502 CPU
// 5mar08
// tbarr at cs hmc edu

`timescale 1 ns / 1 ps

module cpu(output logic [15:0] address,
           inout [7:0] data,
           input logic ph1, ph2, reset,
           output logic read_en);
           
           logic [7:0] data_in, data_out;
           
           assign data = (read_en) ? 8'bz : data_out;
           assign data_in = (read_en) ? data : 8'bz;
           
           core core(address, data_in, data_out, ph1, ph2, reset, read_en);
endmodule