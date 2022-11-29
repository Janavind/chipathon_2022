// SPDX-FileCopyrightText: 2020 Efabless Corporation
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//      http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.
// SPDX-License-Identifier: Apache-2.0

`default_nettype none

`timescale 1 ns / 1 ps

module macro_2xdrive_tb;
	reg clock;
	reg RSTB;
	reg CSB;
	reg power1, power2;
	reg power3, power4;

	wire gpio;
	wire [37:0] mprj_io;
	wire [14:0] mprj_io_out;

	reg[3:0] A0;
	reg[3:0] B0;
	reg[3:0] A1;
	reg[3:0] B1;
	reg[1:0] ALU_Sel1;
	reg[1:0] ALU_Sel2;


 assign mprj_io_out[14:1]=mprj_io[17:4];
 assign mprj_io_out[0]=mprj_io[0];

 assign mprj_io[37:18] = {ALU_Sel2,ALU_Sel1,B1,A1,B0,A0};
//ssign mprj_io[3] = (CSB == 1'b0) ? 1'b1 : 1'bz;
//	assign mprj_io[3] = 1'b1;
/*
	assign mprj_io[18:15]=A0;
	assign mprj_io[22:19]=B0;
	assign mprj_io[26:23]=A1;
	assign mprj_io[30:27]=B1;
	assign mprj_io[32:31]=ALU_Sel1;
	assign mprj_io[34:33]=ALU_Sel2;
*/	
assign mprj_io[3] =1'b1;
//= (CSB == 1'b1) ? 1'b1 : 1'bz;	
//	assign mprj_io[3]=1'b1;


	// External clock is used by default.  Make this artificially fast for the
	// simulation.  Normally this would be a slow clock and the digital PLL
	// would be the fast clock.

	always #12.5 clock <= (clock === 1'b0);

	initial begin
		clock = 0;
	end

	initial begin
		$dumpfile("macro_2xdrive.vcd");
		$dumpvars(0, macro_2xdrive_tb);

		// Repeat cycles of 1000 clock edges as needed to complete testbench
		repeat (50) begin
			repeat (1000) @(posedge clock);
			// $display("+1000 cycles");
		end
		$display("%c[1;31m",27);
		`ifdef GL
			$display ("Monitor: Timeout, Test Mega-Project IO Ports (GL) Failed");
		`else
			$display ("Monitor: Timeout, Test Mega-Project IO Ports (RTL) Failed");
		`endif
		$display("%c[0m",27);
		$finish;
	end

	initial begin
	    // Observe Output pins [7:0]
 
 A0<=4'b1001;
 B0<=4'b1001;
 A1<=4'b0000;
 B1<=4'b0000;
 ALU_Sel2<=2'b00;
 ALU_Sel1<=2'b00;

wait(mprj_io_out == 15'b001000000010101);
//$display("display_output",mprj_io[14:0]);
#1000;
	$display("%c[1;25m",27);	
	`ifdef GL
	    	$display("Monitor: Test 1 Mega-Project IO (GL) Passed");
		`else
		    $display("Monitor: Test 1 Mega-Project IO (RTL) Passed");
		`endif
		$display("%c[0m",27);
	    $finish;
	end

	initial begin
		RSTB <= 1'b0;
		CSB  <= 1'b1;		// Force CSB high
		#2000;
		RSTB <= 1'b1;	    	// Release reset
		#300000;
		CSB = 1'b0;		// CSB can be released

	end

	initial begin		// Power-up sequence
		power1 <= 1'b0;
		power2 <= 1'b0;
		power3 <= 1'b0;
		power4 <= 1'b0;
		#100;
		power1 <= 1'b1;
		#100;
		power2 <= 1'b1;
		#100;
		power3 <= 1'b1;
		#100;
		power4 <= 1'b1;
	end

	always @(mprj_io_out) begin
	         #1 $display("Outputs = %b ", mprj_io_out[14:0]);
	end
	always @(mprj_io[37:18]) begin
	         #1 $display("Inputs = %b ", mprj_io[37:18]);
	end

	wire flash_csb;
	wire flash_clk;
	wire flash_io0;
	wire flash_io1;

	wire VDD3V3;
	wire VDD1V8;
	wire VSS;
	
	assign VDD3V3 = power1;
	assign VDD1V8 = power2;
	assign VSS = 1'b0;

	caravel uut (
		.vddio	  (VDD3V3),
		.vddio_2  (VDD3V3),
		.vssio	  (VSS),
		.vssio_2  (VSS),
		.vdda	  (VDD3V3),
		.vssa	  (VSS),
		.vccd	  (VDD1V8),
		.vssd	  (VSS),
		.vdda1    (VDD3V3),
		.vdda1_2  (VDD3V3),
		.vdda2    (VDD3V3),
		.vssa1	  (VSS),
		.vssa1_2  (VSS),
		.vssa2	  (VSS),
		.vccd1	  (VDD1V8),
		.vccd2	  (VDD1V8),
		.vssd1	  (VSS),
		.vssd2	  (VSS),
		.clock    (clock),
		.gpio     (gpio),
		.mprj_io  (mprj_io),
		.flash_csb(flash_csb),
		.flash_clk(flash_clk),
		.flash_io0(flash_io0),
		.flash_io1(flash_io1),
		.resetb	  (RSTB)
	);

	spiflash #(
		.FILENAME("macro_2xdrive.hex")
	) spiflash (
		.csb(flash_csb),
		.clk(flash_clk),
		.io0(flash_io0),
		.io1(flash_io1),
		.io2(),			// not used
		.io3()			// not used
	);

endmodule
`default_nettype wire
