`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:21:34 06/14/2015 
// Design Name: 
// Module Name:    D_flipflop 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module D_flipflop(
	Qbar,Q,clk,D,Rd,Sd
    );

output Qbar,Q;
input clk,D,Rd,Sd;

nand
	g1(Qbar,f1,Rd,q),
	g2(q,Qbar,f2,Sd),
	g3(f1,clk,f3,f2),
	g4(f2,Rd,f4,clk),
	g5(f3,f1,Rd,D),
	g6(f4,f3,Sd,f2);
and #17
	ua(Q,q,1);

endmodule
