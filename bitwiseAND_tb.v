`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
//Group_ID=69;
//Satyendra Kumar Banjare[15114064];
//Dharmveer Dhar Dwivedi [15114025];
//bitwiseAND_tb---test bench of Bitwise AND operator;
////////////////////////////////////////////////////////////////////////////////

module bitwiseAND_tb;

	// Inputs
	reg [7:0] A;
	reg [7:0] B;

	// Outputs
	wire [7:0] C;

	// Instantiate the Unit Under Test (UUT)
	bitwiseAND uut (
		.A(A), 
		.B(B), 
		.C(C)
	);

	initial begin
		// Initialize Inputs
		A = 0;
		B = 0;

		// Wait 100 ns for global reset to finish
		#100 A=8'b10010011;B=8'b11011000;
		#100 A=8'b10101110;B=8'b00101000;
		#100 $stop;
        
		// Add stimulus here

	end
      
endmodule

