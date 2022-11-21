`default_nettype none

`ifdef FORMAL
    `define MPRJ_IO_PADS 38    
`endif

`define USE_LA  1
`define USE_IO  1

module macro_golden  (
 `ifdef USE_POWER_PINS
     inout vdda1,    // User area 1 3.3V supply
     inout vdda2,    // User area 2 3.3V supply
     inout vssa1,    // User area 1 analog ground
     inout vssa2,    // User area 2 analog ground
     inout vccd1,    // User area 1 1.8V supply
     inout vccd2,    // User area 2 1.8v supply
     inout vssd1,    // User area 1 digital ground
     inout vssd2,    // User area 2 digital ground
 `endif		

	// Wishbone Slave ports (WB MI A)
		 input wb_clk_i,
		 input wb_rst_i,
		 input wbs_stb_i,
		 input wbs_cyc_i,
		 input wbs_we_i,
		 input [3:0] wbs_sel_i,
		 input [31:0] wbs_dat_i,
		 input [31:0] wbs_adr_i,
		 output wbs_ack_o,
		 output [31:0] wbs_dat_o,
		
		// // Logic Analyzer Signals
	`ifdef USE_LA
		 input  wire [127:0] la_data_in,
		 output wire [127:0] la_data_out,
		 input  wire [127:0] la_oenb,
	 `endif	
		// // IOs
	`ifdef USE_IO
		 input  wire [`MPRJ_IO_PADS-1:0] io_in,
		 output wire [`MPRJ_IO_PADS-1:0] io_out,
		 output wire [`MPRJ_IO_PADS-1:0] io_oeb,
	 `endif	
		// // Analog (direct connection to GPIO pad---use with
		// caution)
		// // Note that analog I/O is not available on the
		// 7 lowest-numbered
		// // GPIO pads, and so the analog_io indexing is offset from
		// the
		// // GPIO indexing by 7 (also upper 2 GPIOs do not have
		// analog_io).
//		 inout [`MPRJ_IO_PADS-10:0] analog_io,
		
		// // Independent clock (on independent integer divider)
//		 input  wire user_clock2,
		
//		// // User maskable interrupt signals
//		output wire [2:0] user_irq,

		input wire io_active
		 );
		//
		// /*--------------------------------------*/
		// /* User project is instantiated  here   */
		// /*--------------------------------------*/
		//
	reg [3:0] A0, B0, A1, B1;			//Inputs
	reg [1:0] ALU_Sel1, ALU_Sel2;			//Select Signals
	wire [3:0] ALU_Out1,ALU_Out2; 			// ALU 4-bit Output
	wire CarryOut1,CarryOut2; 			// Carry Out Flag
	wire [3:0] x;					//Compares ALU outputs
	wire y;						//Compares Carry Outputs
	wire clk;
	wire [31:0] la1_data_out;
	assign la1_data_out = la_data_out[63:32];
	wire [31:0]                 buf_la1_data_out;		//Tri-stated
	wire [`MPRJ_IO_PADS-1:0]    buf_io_out;			//Tri-stated
	wire [`MPRJ_IO_PADS-1:0]    buf_io_oeb;			//Tri-stated

 `ifdef FORMAL
	 `ifdef USE_LA 
	 assign la1_data_out = io_active ? buf_la1_data_out  : 32'b0;	// formal verification
 	 `endif
	 `ifdef USE_IO
	 assign io_oeb       = io_active ? buf_io_oeb       : {`MPRJ_IO_PADS{1'b0}}; 	//If active, the outputs are enabled at io_oeb
	 assign io_out       = io_active ? buf_io_out       : {`MPRJ_IO_PADS{1'b0}};	//If active, the outputs are passed to io_out
         `endif
	 `include "properties.v"			//Checks for the tri-state buffer
 
 `else
	 `ifdef USE_LA
	 assign la1_data_out = io_active ? buf_la1_data_out  : 32'bz;
         `endif
	 `ifdef USE_IO
         assign io_oeb       = io_active ? buf_io_oeb       : {`MPRJ_IO_PADS{1'b0}};
	 assign io_out       = io_active ? buf_io_out       : {`MPRJ_IO_PADS{1'b0}};
 	 `endif
	 //$display("outputs and active is",io_out,active);
 `endif

  assign buf_io_oeb = {`MPRJ_IO_PADS{1'b0}}; //enabled

 //ALU_XOR instantiated
 
 alu_xor_4 u_alu_xor_4(
`ifdef USE_POWER_PINS
 .vccd1(vccd1),
 .vssd1(vssd1),
`endif
	.clk(wb_clk_i),
	.A0(io_in[21:18]),
	.B0(io_in[25:22]),
	.A1(io_in[29:26]),
	.B1(io_in[33:30]),
	.ALU_Sel1(io_in[35:34]),
	.ALU_Sel2(io_in[37:36]),
	.ALU_Out1(buf_io_out[17:14]),
	.ALU_Out2(buf_io_out[13:10]),
	.CarryOut1(buf_io_out[5]),
	.CarryOut2(buf_io_out[4]),
	.x(buf_io_out[9:6]),
	.y(buf_io_out[0])
);
 endmodule	// user_project_wrapper

 `default_nettype wire
