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
module kadai_0(
    input SW1, SW2,
    output LED0
    );
	 wire NSW1, NSW2, NLED0;
	 assign NSW1 = ~SW1;
	 assign NSW2 = ~SW2;
	 assign NLED0 = NSW1 & NSW2;
	 assign LED0 = NLED0;
endmodule
