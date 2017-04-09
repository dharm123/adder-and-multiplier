`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
//Group_ID=69;
//Satyendra Kumar Banjare[15114064];
//Dharmveer Dhar Dwivedi [15114025];
//adder_8bit----addition of two 8 bit signed number;
//////////////////////////////////////////////////////////////////////////////////
module adder_8bit(a,b,cin,sum,cout );
input [7:0]a,b;
input cin;
output [7:0]sum;
output cout;

wire [6:0]c;

fulladder a1(a[0],b[0],cin,sum[0],c[0]);
fulladder a2(a[1],b[1],c[0],sum[1],c[1]);
fulladder a3(a[2],b[2],c[1],sum[2],c[2]);
fulladder a4(a[3],b[3],c[2],sum[3],c[3]);
fulladder a5(a[4],b[4],c[3],sum[4],c[4]);
fulladder a6(a[5],b[5],c[4],sum[5],c[5]);
fulladder a7(a[6],b[6],c[5],sum[6],c[6]);
fulladder a8(a[7],b[7],c[6],sum[7],cout);

endmodule



module fulladder(a,b,cin,sum,cout);

input a,b,cin;
output sum,cout;

assign sum=(a^b^cin);
assign cout=((a&b)|(b&cin)|(a&cin));

endmodule