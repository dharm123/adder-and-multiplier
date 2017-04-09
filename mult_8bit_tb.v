`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
//Group_ID=69;
//Satyendra Kumar Banjare[15114064];
//Dharmveer Dhar Dwivedi [15114025];
//mult_8bit_tb----test bench of multiplier;
////////////////////////////////////////////////////////////////////////////////

module mult_8bit_tb;

	// Inputs
	reg [7:0] Multiplier;
	reg [7:0] Multiplicand;

	// Outputs
	wire [15:0] Product;

	// Instantiate the Unit Under Test (UUT)
	mult_8bit uut (
		.Multiplier(Multiplier), 
		.Multiplicand(Multiplicand), 
		.Product(Product)
	);

	initial begin
		// Initialize Inputs
		Multiplier = 0;
		Multiplicand = 0;

		// Wait 100 ns for global reset to finish
		#100 Multiplier=8'b00001011;Multiplicand=8'b00000011;
		#100 Multiplier=8'b00001011;Multiplicand=8'b11111101;
		#100 $stop;
        
		// Add stimulus here

	end
      
endmodule

