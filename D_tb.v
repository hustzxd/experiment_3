`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   16:28:32 06/14/2015
// Design Name:   D_flipflop
// Module Name:   D:/Xilinx/workplaceISE/experiment_3/D_tb.v
// Project Name:  experiment_3
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: D_flipflop
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module D_tb;

	// Inputs
	reg clk;
	reg D;
	reg Rd;
	reg Sd;

	// Outputs
	wire Qbar;
	wire Q;

	// Instantiate the Unit Under Test (UUT)
	D_flipflop uut (
		.Qbar(Qbar), 
		.Q(Q), 
		.clk(clk), 
		.D(D), 
		.Rd(Rd), 
		.Sd(Sd)
	);
always #20 clk = ~clk;
	initial begin
		// Initialize Inputs
		clk = 0;
		D = 0;
		Rd = 0;
		Sd = 1;

		// Wait 100 ns for global reset to finish
		#25;
        Rd = 1;
        D = 1;
        #40;
        D = 0;
        #50
        D = 1;
		// Add stimulus here

	end
      
endmodule

