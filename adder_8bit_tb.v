`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
//Group_ID=69;
//Satyendra Kumar Banjare[15114064];
//Dharmveer Dhar Dwivedi [15114025];
//adder_8bit_tb---- test bench of addition of two numbers(8bit adder);
////////////////////////////////////////////////////////////////////////////////

module adder_8bit_tb;

	// Inputs
	reg [7:0] a;
	reg [7:0] b;
	reg cin;

	// Outputs
	wire [7:0] sum;
	wire cout;

	// Instantiate the Unit Under Test (UUT)
	adder_8bit uut (
		.a(a), 
		.b(b), 
		.cin(cin), 
		.sum(sum), 
		.cout(cout)
	);

	initial begin
		// Initialize Inputs
		a = 0;
		b = 0;
		cin = 0;

		// Wait 100 ns for global reset to finish
#100  a=8'b000001001; b=8'b11111110; cin=1'b0;
#100  a=8'b11111100; b=8'b00001010; cin=1'b0;
#100 $stop;

        
		// Add stimulus here

	end
      
endmodule

