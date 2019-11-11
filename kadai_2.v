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
module kadai_2(
    input SW1, SW2,
    output LED0, LED1
    );
	 wire [1:0] S;
	 assign S = (~SW1) + (~SW2);
	 assign LED0 = ~S[0];
	 assign LED1 = ~S[1];
endmodule
