`timescale 1ns / 1ps

module display(

    input [7:0] num,
    input clk,
    output [0:6] sseg,
	 output reg [1:0] an,
	 input rst,
	 output led
    );

reg [3:0]bcd;
reg [7:0] num1;
 
BCDtoSSeg bcdtosseg(.BCD(bcd), .SSeg(sseg));

reg [26:0] cfreq=0;
wire enable;

// Divisor de frecuecia

assign enable = cfreq[16];
assign led =enable;

always @(posedge clk) begin

  if(rst==1) begin
		cfreq <= 0;
	end 
	
	else begin
		cfreq <=cfreq+1;
	end
end

reg count = 0;

always @(posedge enable) begin
		
		if(rst==1) begin
			count<= 0;
			an<=2'b11; 
		end 
		
		else begin 
		
			count<= count+1; 
//			num1 <= 8'b11111010;
	
			case (count) 
		
				2'b0: begin bcd <= num[3:0];   	an<=2'b10; end 	
				2'b1: begin bcd <= num[7:4];     an<=2'b01; end 		
		
			endcase
		end
end

endmodule
