`timescale 1ns / 1ps



module DIVISOR ( 

input [2:0] D,  
input [2:0] d, 
input init, 
input clk, 
output reg [2:0] Q, 
output reg done);


reg reset;
reg operaciones;
reg [2:0]cont;
reg [2:0]A;
reg [2:0]B;
reg C;
wire R;


reg [2:0] status =0;



assign R=(d>0)?1:0;



always @(posedge clk) begin
 
 if (reset) begin
    
 A = D;
 B = d;
 cont = 0;
 Q = 0;
 C = 0;
	
end

else begin
  
  if (operaciones) begin

	if (A>=B) begin
	

	A = A-B;
	cont = cont+1;
  
	  end
	  
	  else begin
	  
	  if (A<B) begin
	 
   Q = cont;
	C = 1;
	
	end
	end
 end 
end 
end


  
parameter START =0,  COMP1 =1, COMP2 =2, END1 =3;

always @(posedge clk) begin

case (status)

START: begin
	
	done=0;
	reset=0;
	operaciones=0;
	
	
	if (init) begin
	
	done=0;
	reset=1;
   operaciones=0;

	status=COMP1;
	
	end
	end

	COMP1: begin 
	
	done=0; 
	reset=0; 
	operaciones=0;
	
	if (R == 1) 
	
	status=COMP2;	
	
	else begin

#25	$display("Error en el ingreso de datos");
	
	status=START;
 
   end
	end


	COMP2: begin
	
	done=0; 
	reset=0; 
	operaciones=1;

	
	status=COMP2;
 

	if (C == 1) begin
	
	status=END1;
	done=0; 
	reset=0;

	end		
	end
	
	END1: begin
	
	done=1;	
	reset=0;
	operaciones=0;
	

	
	status =START;

	end

	default:
	status =START;
	

	endcase 
	end 
   endmodule
