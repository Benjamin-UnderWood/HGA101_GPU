/*********************************************
Logical Right Shifer 16bit



*********************************************/
module LRS16
(
    input [15:0]din,
    input [3:0]shift,
    output [15:0]dout
);
wire [15:0]s0,s1,s2;

assign s0   =shift[0]?{1'b0,din[15:1]}:din;
assign s1   =shift[1]?{2'b00,s0[15:2]}:s0;
assign s2   =shift[2]?{4'b0000,s1[15:4]}:s1;
assign dout =shift[3]?{8'b000000,s2[15:8]}:s2;

endmodule