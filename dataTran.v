`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:40:08 06/14/2015 
// Design Name: 
// Module Name:    dataTran 
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
module dataTran(
	INPUT,CLK,OUT,reset,set,Q1,D2
    );

output OUT,Q1,D2;
input CLK,reset,set,INPUT;

not #12
	un(D2,Q1);

D_flipflop
	 uut1 (
			.Qbar(Q1bar), 
			.Q(Q1), 
			.clk(CLK), 
			.D(INPUT), 
			.Rd(reset), 
			.Sd(set)   
		),
	 uut2 (
			.Qbar(Q2bar), 
			.Q(OUT), 
			.clk(CLK), 
			.D(D2), 
			.Rd(reset), 
			.Sd(set)
		);
endmodule
