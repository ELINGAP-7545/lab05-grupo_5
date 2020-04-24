

module restador( 

input [2:0] A,  
input [2:0] B,  
input reset,
output reg [2:0] resta,
output reg signo
);


reg [2:0] minuendo; 
reg [2:0] sustraendo;
reg [2:0] ca1;
reg [2:0] ca2;
reg [2:0] restaneg;


always @(*) begin

if (reset == 1) begin

minuendo = 0;
sustraendo = 0;
ca1 = 0;
ca2 = 0;

end

else begin

minuendo <= A;
sustraendo <= B;

ca1 = ~sustraendo;
ca2 = ca1 + 1;

if (minuendo < sustraendo)begin

restaneg = minuendo + ca2;
restaneg = ~restaneg + 1;
resta = restaneg;
signo = 1;

end

else begin

resta = minuendo + ca2;
signo = 0;

end
end
end


endmodule

