`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:38:51 11/11/2019 
// Design Name: 
// Module Name:    kadaki_0 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module kadai_1(
    input SW1, SW2,
    output LED3, LED4, LED5, LED6, LED7
    );
	 assign LED6 = SW1 & SW2;
	 assign LED7 = ~LED6;
	 assign LED4 = SW1 | SW2;
	 assign LED5 = ~LED4;
	 assign LED3 = LED7 & LED4;
endmodule
