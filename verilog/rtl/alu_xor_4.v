// Code your design here
module alu_xor_4(
`ifdef USE_POWER_PINS
        inout vccd1,    // User area 1 1.8V supply
        inout vssd1,    // User area 1 digital ground
`endif
input clk,
  input [3:0] A0,B0,A1,B1,  // ALU 8-bit Inputs
input [1:0] ALU_Sel1,ALU_Sel2,// ALU Selection
  output [3:0] ALU_Out1,ALU_Out2, // ALU 8-bit Output
output CarryOut1,CarryOut2, // Carry Out Flag
  output [3:0] x,
output y,
input [1:0] active
);

alu_4 alu_4_1(
.A (A0),
.B (B0),
.ALU_Sel (ALU_Sel1),
.ALU_Out (ALU_Out1),
.CarryOut (CarryOut1)
);

alu_4 alu_4_2(
.A (A1),
.B (B1),
.ALU_Sel (ALU_Sel2),
.ALU_Out (ALU_Out2),
.CarryOut (CarryOut2)
);


  assign x[3:0] = ALU_Out1[3:0] ^ ALU_Out2[3:0];
assign y = CarryOut1 ^ CarryOut2;
  always @(*)
begin
  
  $display("A0", A0[3:0]);
  $display("B0", B0[3:0]);
  $display("A1", A1[3:0]);
  $display("B1", B1[3:0]);
  $display("ALU_Sel1", ALU_Sel1[1:0]);
  $display("ALU_Sel2", ALU_Sel2[1:0]);
  #1000;  
  $display("ALU_Out1", ALU_Out1[3:0]);
  $display("ALU_Out2", ALU_Out2[3:0]);
  $display("CarryOut1", CarryOut1);
  $display("CarryOut2", CarryOut2);
  $display("x", x[3:0]);
  $display("y", y);
  
#1000;  
if (x!=0)
$display ("Faulty ALU");
else
$display ("ALU is right");
if (y!=0)
$display ("Faulty Carry");
else
$display ("Carry is right");
end


endmodule

module alu_4(
  input [3:0] A,B,  // ALU 8-bit Inputs
input [1:0] ALU_Sel,// ALU Selection
  output [3:0] ALU_Out, // ALU 8-bit Output
output CarryOut // Carry Out Flag
);
  reg [4:0] ALU_Result;

  assign ALU_Out = ALU_Result[3:0]; // ALU out
  assign CarryOut = ALU_Result[4];

always @(*)
begin
case(ALU_Sel)
2'b00: // Addition
ALU_Result = A + B ;
2'b01: // Subtraction
ALU_Result = A - B ;
2'b10: // and
ALU_Result = A & B;
2'b11: // or
ALU_Result = A | B;

default: ALU_Result = A + B ;
endcase
end

endmodule
