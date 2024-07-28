`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   22:10:46 05/13/2024
// Design Name:   file2
// Module Name:   file3_tb.v
// Project Name:  Full_4_bit_adder
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: file2
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module full_adder_tb_v;

	// Inputs
	reg [3:0] x;
	reg [3:0] y;
	reg cin;

	// Outputs
	wire [3:0] z;
	wire cout;
	wire [4:0] expected_result;
	wire [4:0] actual_result;

	
	full_adder uut (x, y, cin, z, cout);

	initial begin
		
		x = 0;
		y = 0;
		cin = 0;

		
		#10 x=4;y=4;cin=1'b0;
		#10 x=5;y=10;cin=1'b0;
		#10 x=10;y=7;cin=1'b0;
		#10 x=0;y=0;cin=0;
		end
		assign expected_result = x+y+cin;
		assign actual_result = {cout,z};
		
		initial begin 
		if (actual_result!==expected_result)
		$monitor($time,"x=%d,y=%d,cin=%b,expected_result=%d,actual_result=%d,not correct",x,y,cin,expected_result,actual_result);
		else
		$monitor($time,"x=%d,y=%d,cin=%b,expected_result=%d,actual_result=%d,correct",x,y,cin,expected_result,actual_result);
        
		

	   end
      
endmodule

