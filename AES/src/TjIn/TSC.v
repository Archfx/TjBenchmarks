`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:20:01 03/06/2013 
// Design Name: 
// Module Name:    TSC 
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
module TSC(
    input clk,
	// input rst,
    input r1,
    input r2,
	output trigger
    );


	wire [7: 0] counter;
	wire [7: 0] counter2;
	wire andOut;
	
	// always @ (posedge clk)
	// 	begin

	// 		if (rst) begin
	// 			counter = 0;
	// 		end
	// 		counter = counter + 1;			
	// 	end
	assign counter = 1'b0;
	assign counter2 = 1'b0;
	
	assign counter =  clk ? counter+1 : counter;

	assign andOut = r1 && r2 && counter[7];

	assign counter2 = andOut ? counter2 + 1 : counter2;

	assign trigger = counter2[7];

	always @ (*) $display(counter);
	always @ (*) $display(counter2);
	always @ (*) $display(andOut);
	always @ (*) $display(trigger);

endmodule
