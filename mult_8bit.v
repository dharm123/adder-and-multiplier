`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
//Group_ID=69;
//Satyendra Kumar Banjare[15114064];
//Dharmveer Dhar Dwivedi [15114025];
//mult_8bit----product of two 8 bit signed number;
//////////////////////////////////////////////////////////////////////////////////
module mult_8bit(Multiplier,Multiplicand,Product);

input [7:0]Multiplier;
input [7:0]Multiplicand;

output [15:0]Product;

wire [7:0]A1,A2,A3,A4,A5,A6,A7,A8;
wire [7:0]Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q8;
wire Q_11,Q_12,Q_13,Q_14,Q_15,Q_16,Q_17,Q_18;
Mult M1(8'b00000000,Multiplier,Multiplicand,1'b0,A1,Q1,Q_11);
Mult M2(A1,Multiplier,Q1,Q_11,A2,Q2,Q_12);
Mult M3(A2,Multiplier,Q2,Q_12,A3,Q3,Q_13);
Mult M4(A3,Multiplier,Q3,Q_13,A4,Q4,Q_14);
Mult M5(A4,Multiplier,Q4,Q_14,A5,Q5,Q_15);
Mult M6(A5,Multiplier,Q5,Q_15,A6,Q6,Q_16);
Mult M7(A6,Multiplier,Q6,Q_16,A7,Q7,Q_17);
Mult M8(A7,Multiplier,Q7,Q_17,A8,Q8,Q_18);

assign Product = {A8,Q8};
endmodule

 
module Mult(A,M,Q,Q_1,nA,nQ,nQ_1);

input [7:0]A,M,Q;
input Q_1;

output [7:0]nA,nQ;
output nQ_1;

reg[7:0]nA_t,nQ_t;
reg nQ_1_t;

wire [7:0]sum,sub;

 assign sum=A+M;
 assign sub=A+~M+1;
always @(A,Q,M,Q_1,sum,sub)
begin
case ({Q[0],Q_1})
2'b01:
    begin
	 nA_t={sum[7],sum[7:1]};
	 nQ_t={sum[0],Q[7:1]};
	 nQ_1_t=Q[0];
	 end
2'b10:
begin
	 nA_t={sub[7],sub[7:1]};
	 nQ_t={sub[0],Q[7:1]};
	 nQ_1_t=Q[0];
	 end
     
default :
    begin
	 nA_t={A[7],A[7:1]};
	 nQ_t={A[0],Q[7:1]};
	 nQ_1_t=Q[0];
	 end
endcase 
end
assign nA=nA_t;
assign nQ=nQ_t;
assign nQ_1=nQ_1_t;

endmodule

