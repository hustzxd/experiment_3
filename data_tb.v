`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   16:57:13 06/14/2015
// Design Name:   dataTran
// Module Name:   D:/Xilinx/workplaceISE/experiment_3/data_tb.v
// Project Name:  experiment_3
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: dataTran
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module data_tb;

	// Inputs
	reg INPUT;
	reg CLK;
	reg reset;
	reg set;

	// Outputs
	wire OUT;
	wire Q1;
	wire D2;

	// Instantiate the Unit Under Test (UUT)
	dataTran uut (
		.INPUT(INPUT), 
		.CLK(CLK), 
		.OUT(OUT), 
		.reset(reset), 
		.set(set), 
		.Q1(Q1),
		.D2(D2)
	);
always #12.5 CLK = ~CLK;
	initial begin
		// Initialize Inputs
		INPUT = 0;
		CLK = 0;
		reset = 0;
		set = 1;

		// Wait 100 ns for global reset to finish
		#80;
        reset = 1;
        INPUT = 1;
        #80
        INPUT = 0;
        #80
        INPUT = 1;
        #150
        INPUT = 0;
        #80
        INPUT = 1;
        #80
        INPUT = 1;
		// Add stimulus here

	end
      
endmodule

