`timescale 1ns / 1ps


module testbench;

	// Inputs
	reg [2:0] portA;
	reg [2:0] portB;
	reg [1:0] opcode;
	reg clk;
	reg rst;

	// Outputs
	wire [0:6] sseg;
	wire [1:0] an;
	wire signoresta;

	// Instantiate the Unit Under Test (UUT)
	alu uut (
		.portA(portA), 
		.portB(portB), 
		.opcode(opcode), 
		.sseg(sseg), 
		.an(an), 
		.clk(clk), 
		.rst(rst),
		.signoresta(signoresta)
	);


	initial begin
		// Initialize Inputs
		opcode = 0;
		clk = 0;
		rst = 1;
		portA=7;
		portB=2;
		
		
		// Wait 100 ns for global reset to finish
		#10;
        
		rst = 0;
		// Add stimulus here
		
		#660000;
		
		//#50 opcode = 0;
		
		opcode = 0;  //suma
		
		#500000;
		
		opcode = 1;  //resta
		
		#900000;
		
	   opcode = 2;  //multiplicacion
		
		#900000;
		
		opcode = 3;  //division
		
		#500000;
		
		//	#50;
		
	end
   
	always #1 clk = ~clk;
      
endmodule

