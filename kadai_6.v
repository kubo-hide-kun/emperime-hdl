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
module kadai_6(
    input SW1,CLK12M,
    output LED0,LED1,LED2
    );
        reg [2:0] CNT;
        reg [23:0] DIV;
        wire SW1,CLK1HZ;
        always @ (posedge CLK12M) begin
            if (DIV == 0) begin
                DIV <= 12000000;
                if(SW1) begin
                    if(CNT == 7) begin
                        CNT <= 0;
                    end
                    else begin
                        CNT <= CNT + 1;
                    end
                end
                else begin
                    if(CNT == 0) begin
                        CNT <= 7;
                    end
                    else begin
                        CNT <= CNT - 1;
                    end
                end
            end
            else  begin
                DIV <= DIV - 1;
            end	
        end
    assign CLK1HZ = DIV[23];
    assign LED0 =~ CNT[0];
    assign LED1 =~ CNT[1];
    assign LED2 =~ CNT[2];
endmodule
