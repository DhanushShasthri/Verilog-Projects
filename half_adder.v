`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:53:52 05/13/2024 
// Design Name: 
// Module Name:    file1 
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
module half_adder(a,b,c,sum,cout);
    input a,b,c;
    output cout,sum;
	 assign sum=c^a^b;
	 assign cout=a&&b||b&&c||c&&a;
endmodule
