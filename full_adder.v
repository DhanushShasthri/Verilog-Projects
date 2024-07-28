`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:03:00 05/13/2024 
// Design Name: 
// Module Name:    file2 
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
module full_adder(x,y,cin,z,cout);
    input [3:0]x;
	 input [3:0]y;
	 input cin;
    output [3:0]z;
	 output cout;
    wire [3:1] carry;
	 
	 half_adder fa0(x[0],y[0],cin,z[0],carry[1]);
	 half_adder fa1(x[1],y[1],carry[1],z[1],carry[2]);
	 half_adder fa2(x[2],y[2],carry[2],z[2],carry[3]);
	 half_adder fa3(x[3],y[3],carry[3],z[3],cout);

endmodule
