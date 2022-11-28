// SPDX-FileCopyrightText: 2020 Efabless Corporation
// //
// // Licensed under the Apache License, Version 2.0 (the "License");
// // you may not use this file except in compliance with the License.
// // You may obtain a copy of the License at
// //
// //      http://www.apache.org/licenses/LICENSE-2.0
// //
// // Unless required by applicable law or agreed to in writing, software
// // distributed under the License is distributed on an "AS IS" BASIS,
// // WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// // See the License for the specific language governing permissions and
// // limitations under the License.
// // SPDX-License-Identifier: Apache-2.0



`default_nettype none

`ifndef MPRJ_IO_PADS
	`define MPRJ_IO_PADS 38
`endif

module user_project_wrapper (
	`ifdef USE_POWER_PINS
		inout vdda1,	// User area 1 3.3V supply
		inout vdda2,	// User area 2 3.3V supply
		inout vssa1,	// User area 1 analog ground
		inout vssa2,	// User area 2 analog ground
		inout vccd1,	// User area 1 1.8V supply
		inout vccd2,	// User area 2 1.8v supply
		inout vssd1,	// User area 1 digital ground
		inout vssd2,	// User area 2 digital ground
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

// Logic Analyzer Signals
 input  [127:0] la_data_in,
 output [127:0] la_data_out,
 input  [127:0] la_oenb,

// IOs
 input  [`MPRJ_IO_PADS-1:0] io_in,
 output [`MPRJ_IO_PADS-1:0] io_out,
 output [`MPRJ_IO_PADS-1:0] io_oeb,

 inout [`MPRJ_IO_PADS-10:0] analog_io,

// Independent clock (on independent integer divider)
 input   user_clock2,

// User maskable interrupt signals
 output [2:0] user_irq
 );

 /*--------------------------------------*/
 /* User project is instantiated  here   */
 /*--------------------------------------*/

	//The active signals are assigned to the first bank of Logic Analyzer
	 wire [31: 0] active;
	 assign active = la_data_in[31:0];

	// split remaining 96 logic analizer wires into 3 chunks
	 wire [31: 0] la1_data_in, la1_data_out, la1_oenb;
	 assign la1_data_in = la_data_in[63:32];
	 assign la1_data_out = la_data_out[63:32];
	 assign la1_oenb = la_oenb[63:32];
	
	 wire [31: 0] la2_data_in, la2_data_out, la2_oenb;
	 assign la2_data_in = la_data_in[95:64];
	 assign la2_data_out = la_data_out[95:64];
	 assign la2_oenb = la_oenb[95:64];
	
	 wire [31: 0] la3_data_in, la3_data_out, la3_oenb;
	 assign la3_data_in = la_data_in[127:96];
	 assign la3_data_out = la_data_out[127:96];
	 assign la3_oenb = la_oenb[127:96];

/*
 macro_7 u_macro_7 (

		 `ifdef USE_POWER_PINS
			 .vdda1(vdda1),  // User area 1 3.3V supply
			 .vdda2(vdda2),  // User area 2 3.3V supply
			 .vssa1(vssa1),  // User area 1 analog ground
			 .vssa2(vssa2),  // User area 2 analog ground
			 .vccd1(vccd1),  // User area 1 1.8V supply
			 .vccd2(vccd2),  // User area 2 1.8v supply
			 .vssd1(vssd1),  // User area 1 digital ground
  			 .vssd2(vssd2),  // User area 2 digital ground
		 `endif
 			 .wb_rst_i(wb_rst_i),
			 .wbs_stb_i(wbs_stb_i),
			 .wbs_cyc_i(wbs_cyc_i),
			 .wbs_we_i(wbs_we_i),
			 .wbs_sel_i(wbs_sel_i),
			 .wbs_dat_i(wbs_dat_i),
			 .wbs_adr_i(wbs_adr_i),
			 .wbs_ack_o(wbs_ack_o),
			 .wbs_dat_o(wbs_dat_o),
			 .la_data_in(la_data_in),
			 .la_data_out(la_data_out),
			 .la_oenb(la_oenb),
			 .active(active[1]),
			 .io_in(io_in[37:0]),
			 .io_out(io_out[37:0]),
			 .io_oeb(io_oeb[37:0]),
			 .user_irq(user_irq),
			 .user_clock2(user_clock2),
			 .analog_io(analog_io)
			 
		 );



macro_10 u_macro_10 (

		`ifdef USE_POWER_PINS
			.vdda1(vdda1),  // User area 1 3.3V supply
			.vdda2(vdda2),  // User area 2 3.3V supply
			.vssa1(vssa1),  // User area 1 analog ground
			.vssa2(vssa2),  // User area 2 analog ground
			.vccd1(vccd1),  // User area 1 1.8V supply
			.vccd2(vccd2),  // User area 2 1.8v supply
			.vssd1(vssd1),  // User area 1 digital ground
			.vssd2(vssd2),  // User area 2 digital ground
		`endif
			.wb_rst_i(wb_rst_i),
			.wbs_stb_i(wbs_stb_i),
			.wbs_cyc_i(wbs_cyc_i),
			.wbs_we_i(wbs_we_i),
			.wbs_sel_i(wbs_sel_i),
			.wbs_dat_i(wbs_dat_i),
			.wbs_adr_i(wbs_adr_i),
			.wbs_ack_o(wbs_ack_o),
			.wbs_dat_o(wbs_dat_o),
			.la_data_in(la_data_in),
			.la_data_out(la_data_out),
			.la_oenb(la_oenb),
			.active(active[2]),
			.io_in(io_in[37:0]),
			.io_out(io_out[37:0]),
			.io_oeb(io_oeb[37:0]),
			.user_irq(user_irq),
			.user_clock2(user_clock2),
			.analog_io(analog_io)

		);
*/

macro_golden u_macro_golden (

		`ifdef USE_POWER_PINS
			.vdda1(vdda1),  // User area 1 3.3V supply
			.vdda2(vdda2),  // User area 2 3.3V supply
			.vssa1(vssa1),  // User area 1 analog ground
			.vssa2(vssa2),  // User area 2 analog ground
			.vccd1(vccd1),  // User area 1 1.8V supply
			.vccd2(vccd2),  // User area 2 1.8v supply
			.vssd1(vssd1),  // User area 1 digital ground
			.vssd2(vssd2),  // User area 2 digital ground
		`endif
			.wb_rst_i(wb_rst_i),
			.wbs_stb_i(wbs_stb_i),
			.wbs_cyc_i(wbs_cyc_i),
			.wbs_we_i(wbs_we_i),
			.wbs_sel_i(wbs_sel_i),
			.wbs_dat_i(wbs_dat_i),
			.wbs_adr_i(wbs_adr_i),
			.wbs_ack_o(wbs_ack_o),
			.wbs_dat_o(wbs_dat_o),
			.la_data_in(la_data_in),
			.la_data_out(la_data_out),
			.la_oenb(la_oenb),
			.io_active(active[1]),
			.io_in(io_in[37:0]),
			.io_out(io_out[37:0]),
			.io_oeb(io_oeb[37:0])
			//.user_irq(user_irq),
			//.user_clock2(user_clock2),
			//.analog_io(analog_io)

		);


macro_2xdrive u_macro_2xdrive (

		`ifdef USE_POWER_PINS
			.vdda1(vdda1),  // User area 1 3.3V supply
			.vdda2(vdda2),  // User area 2 3.3V supply
			.vssa1(vssa1),  // User area 1 analog ground
			.vssa2(vssa2),  // User area 2 analog ground
			.vccd1(vccd1),  // User area 1 1.8V supply
			.vccd2(vccd2),  // User area 2 1.8v supply
			.vssd1(vssd1),  // User area 1 digital ground
			.vssd2(vssd2),  // User area 2 digital ground
		`endif
			.wb_rst_i(wb_rst_i),
			.wbs_stb_i(wbs_stb_i),
			.wbs_cyc_i(wbs_cyc_i),
			.wbs_we_i(wbs_we_i),
			.wbs_sel_i(wbs_sel_i),
			.wbs_dat_i(wbs_dat_i),
			.wbs_adr_i(wbs_adr_i),
			.wbs_ack_o(wbs_ack_o),
			.wbs_dat_o(wbs_dat_o),
			.la_data_in(la_data_in),
			.la_data_out(la_data_out),
			.la_oenb(la_oenb),
			.io_active(active[2]),
			.io_in(io_in[37:0]),
			.io_out(io_out[37:0]),
			.io_oeb(io_oeb[37:0])
		//	.user_irq(user_irq),
		//	.user_clock2(user_clock2),
		//	.analog_io(analog_io)

	);

	

macro_2to3 u_macro_2to3 (

		`ifdef USE_POWER_PINS
			.vdda1(vdda1),  // User area 1 3.3V supply
			.vdda2(vdda2),  // User area 2 3.3V supply
			.vssa1(vssa1),  // User area 1 analog ground
			.vssa2(vssa2),  // User area 2 analog ground
			.vccd1(vccd1),  // User area 1 1.8V supply
			.vccd2(vccd2),  // User area 2 1.8v supply
			.vssd1(vssd1),  // User area 1 digital ground
			.vssd2(vssd2),  // User area 2 digital ground
		`endif
			.wb_rst_i(wb_rst_i),
			.wbs_stb_i(wbs_stb_i),
			.wbs_cyc_i(wbs_cyc_i),
			.wbs_we_i(wbs_we_i),
			.wbs_sel_i(wbs_sel_i),
			.wbs_dat_i(wbs_dat_i),
			.wbs_adr_i(wbs_adr_i),
			.wbs_ack_o(wbs_ack_o),
			.wbs_dat_o(wbs_dat_o),
			.la_data_in(la_data_in),
			.la_data_out(la_data_out),
			.la_oenb(la_oenb),
			.io_active(active[3]),
			.io_in(io_in[37:0]),
			.io_out(io_out[37:0]),
			.io_oeb(io_oeb[37:0])
		//	.user_irq(user_irq),
		//	.user_clock2(user_clock2),
		//	.analog_io(analog_io)

		);
/*
macro_decap_12 u_macro_decap_12 (

	`ifdef USE_POWER_PINS
		//	.vdda1(vdda1),  // User area 1 3.3V supply
		//	.vdda2(vdda2),  // User area 2 3.3V supply
		//	.vssa1(vssa1),  // User area 1 analog ground
		//	.vssa2(vssa2),  // User area 2 analog ground
			.vccd1(vccd1),  // User area 1 1.8V supply
			.vccd2(vccd2),  // User area 2 1.8v supply
			.vssd1(vssd1),  // User area 1 digital ground
			.vssd2(vssd2),  // User area 2 digital ground
		`endif
		.wb_rst_i(wb_rst_i),
			.wbs_stb_i(wbs_stb_i),
			.wbs_cyc_i(wbs_cyc_i),
			.wbs_we_i(wbs_we_i),
			.wbs_sel_i(wbs_sel_i),
			.wbs_dat_i(wbs_dat_i),
			.wbs_adr_i(wbs_adr_i),
			.wbs_ack_o(wbs_ack_o),
			.wbs_dat_o(wbs_dat_o),
			.la_data_in(la_data_in),
			.la_data_out(la_data_out),
			.la_oenb(la_oenb),
			.io_active(active[6]),
			.io_in(io_in[37:0]),
			.io_out(io_out[37:0]),
			.io_oeb(io_oeb[37:0])
		//	.user_irq(user_irq),
		//	.user_clock2(user_clock2),
		//	.analog_io(analog_io)

		);


macro_no_decap u_macro_no_decap (

	`ifdef USE_POWER_PINS
	//		.vdda1(vdda1),  // User area 1 3.3V supply
	//		.vdda2(vdda2),  // User area 2 3.3V supply
	//		.vssa1(vssa1),  // User area 1 analog ground
	//		.vssa2(vssa2),  // User area 2 analog ground
			.vccd1(vccd1),  // User area 1 1.8V supply
			.vccd2(vccd2),  // User area 2 1.8v supply
			.vssd1(vssd1),  // User area 1 digital ground
			.vssd2(vssd2),  // User area 2 digital ground
		`endif
		.wb_rst_i(wb_rst_i),
			.wbs_stb_i(wbs_stb_i),
			.wbs_cyc_i(wbs_cyc_i),
			.wbs_we_i(wbs_we_i),
			.wbs_sel_i(wbs_sel_i),
			.wbs_dat_i(wbs_dat_i),
			.wbs_adr_i(wbs_adr_i),
			.wbs_ack_o(wbs_ack_o),
			.wbs_dat_o(wbs_dat_o),
			.la_data_in(la_data_in),
			.la_data_out(la_data_out),
			.la_oenb(la_oenb),
			.io_active(active[7]),
			.io_in(io_in[37:0]),
			.io_out(io_out[37:0]),
			.io_oeb(io_oeb[37:0]),
		//	.user_irq(user_irq),
		//	.user_clock2(user_clock2),
		//	.analog_io(analog_io)

		);

*/
macro_and_inv u_macro_and_inv (

	`ifdef USE_POWER_PINS
			.vdda1(vdda1),  // User area 1 3.3V supply
			.vdda2(vdda2),  // User area 2 3.3V supply
			.vssa1(vssa1),  // User area 1 analog ground
			.vssa2(vssa2),  // User area 2 analog ground
			.vccd1(vccd1),  // User area 1 1.8V supply
			.vccd2(vccd2),  // User area 2 1.8v supply
			.vssd1(vssd1),  // User area 1 digital ground
			.vssd2(vssd2),  // User area 2 digital ground
		`endif
			.wb_rst_i(wb_rst_i),
			.wbs_stb_i(wbs_stb_i),
			.wbs_cyc_i(wbs_cyc_i),
			.wbs_we_i(wbs_we_i),
			.wbs_sel_i(wbs_sel_i),
			.wbs_dat_i(wbs_dat_i),
			.wbs_adr_i(wbs_adr_i),
			.wbs_ack_o(wbs_ack_o),
			.wbs_dat_o(wbs_dat_o),
			.la_data_in(la_data_in),
			.la_data_out(la_data_out),
			.la_oenb(la_oenb),
			.io_active(active[4]),
			.io_in(io_in[37:0]),
			.io_out(io_out[37:0]),
			.io_oeb(io_oeb[37:0])
		//	.user_irq(user_irq),
		//	.user_clock2(user_clock2),
		//	.analog_io(analog_io)

		);

	
 endmodule	// user_project_wrapper

 `default_nettype wire
