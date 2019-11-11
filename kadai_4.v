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
module kadai_4(
    input SW1, SW2, SW3, SW4,
    output LED0, LED1, LED2
    );
	 wire [2:0] S;
	 assign S = (~SW1) + (~SW1) + (~SW2) + (~SW3) + (~SW3) + (~SW4);
	 assign LED0 = ~S[0];
	 assign LED1 = ~S[1];
	 assign LED2 = S[2];
endmodule
