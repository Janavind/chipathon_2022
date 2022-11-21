/* Generated by Yosys 0.12+45 (git sha1 UNKNOWN, gcc 8.3.1 -fPIC -Os) */

module macro_13(wb_clk_i, wb_rst_i, wbs_stb_i, wbs_cyc_i, wbs_we_i, wbs_sel_i, wbs_dat_i, wbs_adr_i, wbs_ack_o, wbs_dat_o, la_data_in, la_data_out, la_oenb, io_in, io_out, io_oeb, analog_io, user_clock2, user_irq, active);
  wire _000_;
  wire _001_;
  wire _002_;
  wire _003_;
  wire _004_;
  wire _005_;
  wire _006_;
  wire _007_;
  wire _008_;
  wire _009_;
  wire _010_;
  wire _011_;
  wire _012_;
  wire _013_;
  wire _014_;
  wire _015_;
  wire _016_;
  wire _017_;
  wire _018_;
  wire _019_;
  wire _020_;
  wire _021_;
  wire _022_;
  wire _023_;
  wire _024_;
  wire _025_;
  wire _026_;
  wire _027_;
  wire _028_;
  wire _029_;
  wire _030_;
  wire _031_;
  wire _032_;
  wire _033_;
  wire _034_;
  wire _035_;
  wire _036_;
  wire _037_;
  wire _038_;
  wire _039_;
  wire _040_;
  wire _041_;
  wire _042_;
  wire _043_;
  wire _044_;
  wire _045_;
  wire _046_;
  wire _047_;
  wire _048_;
  wire _049_;
  wire _050_;
  wire _051_;
  wire _052_;
  wire _053_;
  wire _054_;
  wire _055_;
  wire _056_;
  wire _057_;
  wire _058_;
  wire _059_;
  wire _060_;
  wire _061_;
  wire _062_;
  wire _063_;
  wire _064_;
  wire _065_;
  wire _066_;
  wire _067_;
  wire _068_;
  wire _069_;
  wire _070_;
  wire _071_;
  wire _072_;
  wire _073_;
  wire _074_;
  wire _075_;
  wire _076_;
  wire _077_;
  wire _078_;
  wire _079_;
  wire _080_;
  wire _081_;
  wire _082_;
  wire _083_;
  wire _084_;
  wire _085_;
  wire _086_;
  wire _087_;
  wire _088_;
  wire _089_;
  wire _090_;
  wire _091_;
  wire _092_;
  wire _093_;
  wire _094_;
  wire _095_;
  wire _096_;
  wire _097_;
  wire _098_;
  wire _099_;
  wire _100_;
  wire _101_;
  wire _102_;
  wire _103_;
  wire _104_;
  wire _105_;
  wire _106_;
  wire _107_;
  wire _108_;
  wire _109_;
  wire _110_;
  wire _111_;
  wire _112_;
  wire _113_;
  wire _114_;
  wire _115_;
  wire _116_;
  wire _117_;
  wire _118_;
  wire _119_;
  wire _120_;
  wire _121_;
  wire _122_;
  wire _123_;
  wire _124_;
  wire _125_;
  wire _126_;
  wire _127_;
  wire _128_;
  wire _129_;
  wire _130_;
  wire _131_;
  wire _132_;
  wire _133_;
  wire _134_;
  wire _135_;
  wire _136_;
  wire _137_;
  wire _138_;
  wire _139_;
  wire _140_;
  wire _141_;
  wire _142_;
  wire _143_;
  wire _144_;
  wire _145_;
  wire _146_;
  wire _147_;
  wire _148_;
  wire _149_;
  wire _150_;
  wire _151_;
  wire _152_;
  wire _153_;
  wire _154_;
  wire _155_;
  wire _156_;
  wire _157_;
  wire _158_;
  wire _159_;
  wire _160_;
  wire _161_;
  wire _162_;
  wire _163_;
  wire _164_;
  wire _165_;
  wire _166_;
  wire _167_;
  wire _168_;
  wire _169_;
  
  /* additional wires for between nand gate and inverter*/
  wire _595_;
  wire _596_;
  wire _597_;
  wire _598_;
  wire _599_;
  wire _601_;
  wire _602_;
  wire _603_;
  wire _604_;
  wire _605_;
  wire _606_;
  wire _607_;
  wire _608_;
  
  input active;
  inout [28:0] analog_io;
  input [37:0] io_in;
  output [37:0] io_oeb;
  output [37:0] io_out;
  input [127:0] la_data_in;
  output [127:0] la_data_out;
  input [127:0] la_oenb;
  input user_clock2;
  output [2:0] user_irq;
  input wb_clk_i;
  input wb_rst_i;
  output wbs_ack_o;
  input [31:0] wbs_adr_i;
  input wbs_cyc_i;
  input [31:0] wbs_dat_i;
  output [31:0] wbs_dat_o;
  input [3:0] wbs_sel_i;
  input wbs_stb_i;
  input wbs_we_i;
  sky130_fd_sc_hd__inv_2 _170_ (
    .A(active),
    .Y(_137_)
  );
  sky130_fd_sc_hd__buf_1 _171_ (
    .A(active),
    .X(_099_)
  );
  sky130_fd_sc_hd__buf_1 _172_ (
    .A(_099_),
    .X(_100_)
  );
  sky130_fd_sc_hd__buf_1 _173_ (
    .A(_100_),
    .X(_101_)
  );
  sky130_fd_sc_hd__inv_2 _174_ (
    .A(_101_),
    .Y(_136_)
  );
  sky130_fd_sc_hd__inv_2 _175_ (
    .A(_101_),
    .Y(_135_)
  );
  sky130_fd_sc_hd__inv_2 _176_ (
    .A(_101_),
    .Y(_134_)
  );
  sky130_fd_sc_hd__inv_2 _177_ (
    .A(_101_),
    .Y(_133_)
  );
  sky130_fd_sc_hd__inv_2 _178_ (
    .A(_101_),
    .Y(_132_)
  );
  sky130_fd_sc_hd__buf_1 _179_ (
    .A(_100_),
    .X(_102_)
  );
  sky130_fd_sc_hd__inv_2 _180_ (
    .A(_102_),
    .Y(_131_)
  );
  sky130_fd_sc_hd__inv_2 _181_ (
    .A(_102_),
    .Y(_130_)
  );
  sky130_fd_sc_hd__inv_2 _182_ (
    .A(_102_),
    .Y(_129_)
  );
  sky130_fd_sc_hd__inv_2 _183_ (
    .A(_102_),
    .Y(_128_)
  );
  sky130_fd_sc_hd__inv_2 _184_ (
    .A(_102_),
    .Y(_127_)
  );
  sky130_fd_sc_hd__buf_1 _185_ (
    .A(_100_),
    .X(_103_)
  );
  sky130_fd_sc_hd__inv_2 _186_ (
    .A(_103_),
    .Y(_126_)
  );
  sky130_fd_sc_hd__inv_2 _187_ (
    .A(_103_),
    .Y(_125_)
  );
  sky130_fd_sc_hd__inv_2 _188_ (
    .A(_103_),
    .Y(_124_)
  );
  sky130_fd_sc_hd__inv_2 _189_ (
    .A(_103_),
    .Y(_123_)
  );
  sky130_fd_sc_hd__inv_2 _190_ (
    .A(_103_),
    .Y(_122_)
  );
  sky130_fd_sc_hd__buf_1 _191_ (
    .A(_100_),
    .X(_104_)
  );
  sky130_fd_sc_hd__inv_2 _192_ (
    .A(_104_),
    .Y(_121_)
  );
  sky130_fd_sc_hd__inv_2 _193_ (
    .A(_104_),
    .Y(_120_)
  );
  sky130_fd_sc_hd__inv_2 _194_ (
    .A(_104_),
    .Y(_119_)
  );
  sky130_fd_sc_hd__inv_2 _195_ (
    .A(_104_),
    .Y(_118_)
  );
  sky130_fd_sc_hd__inv_2 _196_ (
    .A(_104_),
    .Y(_117_)
  );
  sky130_fd_sc_hd__buf_1 _197_ (
    .A(_099_),
    .X(_105_)
  );
  sky130_fd_sc_hd__inv_2 _198_ (
    .A(_105_),
    .Y(_116_)
  );
  sky130_fd_sc_hd__inv_2 _199_ (
    .A(_105_),
    .Y(_115_)
  );
  sky130_fd_sc_hd__inv_2 _200_ (
    .A(_105_),
    .Y(_114_)
  );
  sky130_fd_sc_hd__inv_2 _201_ (
    .A(_105_),
    .Y(_113_)
  );
  sky130_fd_sc_hd__inv_2 _202_ (
    .A(_105_),
    .Y(_112_)
  );
  sky130_fd_sc_hd__buf_1 _203_ (
    .A(_099_),
    .X(_000_)
  );
  sky130_fd_sc_hd__inv_2 _204_ (
    .A(_000_),
    .Y(_111_)
  );
  sky130_fd_sc_hd__inv_2 _205_ (
    .A(_000_),
    .Y(_110_)
  );
  sky130_fd_sc_hd__inv_2 _206_ (
    .A(_000_),
    .Y(_109_)
  );
  sky130_fd_sc_hd__inv_2 _207_ (
    .A(_000_),
    .Y(_108_)
  );
  sky130_fd_sc_hd__inv_2 _208_ (
    .A(_000_),
    .Y(_107_)
  );
  sky130_fd_sc_hd__inv_2 _209_ (
    .A(_100_),
    .Y(_106_)
  );
  sky130_fd_sc_hd__buf_1 _210_ (
    .A(io_in[23]),
    .X(_001_)
  );
  sky130_fd_sc_hd__nand2b_2 _211_ (
    .A_N(io_in[35]),
    .B(io_in[34]),
    .Y(_002_)
  );
  sky130_fd_sc_hd__o31a_2 _212_ (
    .A1(io_in[24]),
    .A2(io_in[22]),
    .A3(_001_),
    .B1(_002_),
    .X(_003_)
  );
  sky130_fd_sc_hd__xnor2_2 _213_ (
    .A(io_in[25]),
    .B(_003_),
    .Y(_004_)
  );
  sky130_fd_sc_hd__or2_2 _214_ (
    .A(io_in[21]),
    .B(_004_),
    .X(_005_)
  );
  sky130_fd_sc_hd__o21a_2 _215_ (
    .A1(io_in[22]),
    .A2(_001_),
    .B1(_002_),
    .X(_006_)
  );
  sky130_fd_sc_hd__xnor2_2 _216_ (
    .A(io_in[24]),
    .B(_006_),
    .Y(_007_)
  );
  sky130_fd_sc_hd__or2_2 _217_ (
    .A(io_in[20]),
    .B(_007_),
    .X(_008_)
  );
  sky130_fd_sc_hd__buf_1 _218_ (
    .A(io_in[22]),
    .X(_009_)
  );
  sky130_fd_sc_hd__nand3b_2 _219_ (
    .A_N(_001_),
    .B(_002_),
    .C(_009_),
    .Y(_010_)
  );
  sky130_fd_sc_hd__a21bo_2 _220_ (
    .A1(io_in[22]),
    .A2(_002_),
    .B1_N(io_in[23]),
    .X(_011_)
  );
  sky130_fd_sc_hd__a21o_2 _221_ (
    .A1(_010_),
    .A2(_011_),
    .B1(io_in[19]),
    .X(_012_)
  );
  sky130_fd_sc_hd__or2b_2 _222_ (
    .A(io_in[18]),
    .B_N(_009_),
    .X(_013_)
  );
  
  
  
  
  /*sky130_fd_sc_hd__and3_2 _223_ (
    .A(io_in[19]),
    .B(_010_),
    .C(_011_),
    .X(_014_)
  ); */
  
  sky130_fd_sc_hd__nand3_2 _223_ (
    .A(io_in[19]),
    .B(_010_),
    .C(_011_),
    .Y(_595_)
  );
  
   sky130_fd_sc_hd__inv_2 _224_ (
    .A(_595_),
    .Y(_014_)
  );
  
  
  
  sky130_fd_sc_hd__a21o_2 _225_ (
    .A1(_012_),
    .A2(_013_),
    .B1(_014_),
    .X(_015_)
  );
 /* 
  sky130_fd_sc_hd__and2_2 _225_ (
    .A(io_in[21]),
    .B(_004_),
    .X(_016_)
  );
  
 */
  
  sky130_fd_sc_hd__nand2_2 _226_ (
    .A(io_in[21]),
    .B(_004_),
    .Y(_596_)
  );
  
  sky130_fd_sc_hd__inv_2 _227_ (
    .A(_596_),
    .Y(_016_)
  );
  
  
  
  /*
  sky130_fd_sc_hd__and2_2 _226_ (
    .A(io_in[20]),
    .B(_007_),
    .X(_017_)
  );
  */
   sky130_fd_sc_hd__nand2_2 _228_ (
    .A(io_in[20]),
    .B(_007_),
    .Y(_597_)
  );
  
  sky130_fd_sc_hd__inv_2 _229_ (
    .A(_597_),
    .Y(_017_)
  );
  
  
  
  
  sky130_fd_sc_hd__a211o_2 _230_ (
    .A1(_008_),
    .A2(_015_),
    .B1(_016_),
    .C1(_017_),
    .X(_018_)
  );
  sky130_fd_sc_hd__a21oi_2 _231_ (
    .A1(io_in[25]),
    .A2(_002_),
    .B1(_003_),
    .Y(_019_)
  );
  sky130_fd_sc_hd__a21oi_2 _232_ (
    .A1(_005_),
    .A2(_018_),
    .B1(_019_),
    .Y(_020_)
  );
  sky130_fd_sc_hd__buf_1 _233_ (
    .A(io_in[35]),
    .X(_021_)
  );
  sky130_fd_sc_hd__a31o_2 _234_ (
    .A1(_019_),
    .A2(_005_),
    .A3(_018_),
    .B1(_021_),
    .X(_022_)
  );
  sky130_fd_sc_hd__or2_2 _235_ (
    .A(_020_),
    .B(_022_),
    .X(_023_)
  );
  sky130_fd_sc_hd__buf_1 _236_ (
    .A(io_in[31]),
    .X(_024_)
  );
  sky130_fd_sc_hd__nand2b_2 _237_ (
    .A_N(io_in[37]),
    .B(io_in[36]),
    .Y(_025_)
  );
  sky130_fd_sc_hd__o31a_2 _238_ (
    .A1(io_in[32]),
    .A2(io_in[30]),
    .A3(_024_),
    .B1(_025_),
    .X(_026_)
  );
  sky130_fd_sc_hd__xnor2_2 _239_ (
    .A(io_in[33]),
    .B(_026_),
    .Y(_027_)
  );
  sky130_fd_sc_hd__or2_2 _240_ (
    .A(io_in[29]),
    .B(_027_),
    .X(_028_)
  );
  sky130_fd_sc_hd__o21a_2 _241_ (
    .A1(io_in[30]),
    .A2(_024_),
    .B1(_025_),
    .X(_029_)
  );
  sky130_fd_sc_hd__xnor2_2 _242_ (
    .A(io_in[32]),
    .B(_029_),
    .Y(_030_)
  );
  sky130_fd_sc_hd__or2_2 _243_ (
    .A(io_in[28]),
    .B(_030_),
    .X(_031_)
  );
  sky130_fd_sc_hd__buf_1 _244_ (
    .A(io_in[30]),
    .X(_032_)
  );
  sky130_fd_sc_hd__nand3b_2 _245_ (
    .A_N(_024_),
    .B(_025_),
    .C(_032_),
    .Y(_033_)
  );
  sky130_fd_sc_hd__a21bo_2 _246_ (
    .A1(io_in[30]),
    .A2(_025_),
    .B1_N(io_in[31]),
    .X(_034_)
  );
  sky130_fd_sc_hd__a21bo_2 _247_ (
    .A1(io_in[30]),
    .A2(_025_),
    .B1_N(io_in[31]),
    .X(_034_)
  );
  sky130_fd_sc_hd__a21o_2 _248_ (
    .A1(_033_),
    .A2(_034_),
    .B1(io_in[27]),
    .X(_035_)
  );
  
  sky130_fd_sc_hd__or2b_2 _249_ (
    .A(io_in[26]),
    .B_N(_032_),
    .X(_036_)
  );
  
 /* 
  sky130_fd_sc_hd__and3_2 _246_ (
    .A(io_in[27]),
    .B(_033_),
    .C(_034_),
    .X(_037_)
  );
  */
  
  sky130_fd_sc_hd__nand3_2 _250_ (
    .A(io_in[27]),
    .B(_033_),
    .C(_034_),
    .Y(_598_)
  );
  
   sky130_fd_sc_hd__inv_2 _251_ (
    .A(_598_),
    .Y(_037_)
  );
  
  
  
  sky130_fd_sc_hd__a21o_2 _252_ (
    .A1(_035_),
    .A2(_036_),
    .B1(_037_),
    .X(_038_)
  );
  
  /*
  sky130_fd_sc_hd__and2_2 _248_ (
    .A(io_in[29]),
    .B(_027_),
    .X(_039_)
  );
  */
  
  sky130_fd_sc_hd__nand2_2 _253_ (
    .A(io_in[29]),
    .B(_027_),
    .Y(_599_)
  );
  
  sky130_fd_sc_hd__inv_2 _254_ (
    .A(_599_),
    .Y(_039_)
  );
  
  /*
  sky130_fd_sc_hd__and2_2 _249_ (
    .A(io_in[28]),
    .B(_030_),
    .X(_040_)
  );
  */
  
  sky130_fd_sc_hd__nand2_2 _255_ (
    .A(io_in[28]),
    .B(_030_),
    .Y(_600_)
  );
  
  sky130_fd_sc_hd__inv_2 _256_ (
    .A(_600_),
    .Y(_040_)
  );
  
  
  sky130_fd_sc_hd__a211o_2 _257_ (
    .A1(_031_),
    .A2(_038_),
    .B1(_039_),
    .C1(_040_),
    .X(_041_)
  );
  sky130_fd_sc_hd__a21oi_2 _258_ (
    .A1(io_in[33]),
    .A2(_025_),
    .B1(_026_),
    .Y(_042_)
  );
  sky130_fd_sc_hd__a21oi_2 _259_ (
    .A1(_028_),
    .A2(_041_),
    .B1(_042_),
    .Y(_043_)
  );
  sky130_fd_sc_hd__buf_1 _260_ (
    .A(io_in[37]),
    .X(_044_)
  );
  sky130_fd_sc_hd__a31o_2 _261_ (
    .A1(_042_),
    .A2(_028_),
    .A3(_041_),
    .B1(_044_),
    .X(_045_)
  );
  sky130_fd_sc_hd__or2_2 _262_ (
    .A(_043_),
    .B(_045_),
    .X(_046_)
  );
  sky130_fd_sc_hd__nor3_2 _263_ (
    .A(_137_),
    .B(_043_),
    .C(_045_),
    .Y(io_out[4])
  );
  sky130_fd_sc_hd__nor3_2 _264_ (
    .A(_137_),
    .B(_020_),
    .C(_022_),
    .Y(io_out[5])
  );
  sky130_fd_sc_hd__o22a_2 _265_ (
    .A1(_023_),
    .A2(_046_),
    .B1(io_out[4]),
    .B2(io_out[5]),
    .X(io_out[0])
  );
  sky130_fd_sc_hd__inv_2 _266_ (
    .A(io_in[35]),
    .Y(_047_)
  );
  sky130_fd_sc_hd__o2bb2a_2 _267_ (
    .A1_N(_009_),
    .A2_N(io_in[18]),
    .B1(_047_),
    .B2(io_in[34]),
    .X(_048_)
  );
  sky130_fd_sc_hd__o21a_2 _268_ (
    .A1(_009_),
    .A2(io_in[18]),
    .B1(_048_),
    .X(_049_)
  );
  sky130_fd_sc_hd__a31o_2 _269_ (
    .A1(_009_),
    .A2(_021_),
    .A3(io_in[18]),
    .B1(_049_),
    .X(_050_)
  );
  sky130_fd_sc_hd__inv_2 _270_ (
    .A(io_in[37]),
    .Y(_051_)
  );
  sky130_fd_sc_hd__o2bb2a_2 _271_ (
    .A1_N(_032_),
    .A2_N(io_in[26]),
    .B1(_051_),
    .B2(io_in[36]),
    .X(_052_)
  );
  sky130_fd_sc_hd__o21a_2 _272_ (
    .A1(_032_),
    .A2(io_in[26]),
    .B1(_052_),
    .X(_053_)
  );
  sky130_fd_sc_hd__a31o_2 _273_ (
    .A1(_032_),
    .A2(_044_),
    .A3(io_in[26]),
    .B1(_053_),
    .X(_054_)
  );
  sky130_fd_sc_hd__buf_1 _274_ (
    .A(active),
    .X(_055_)
  );
  
  /*
  sky130_fd_sc_hd__and2_2 _268_ (
    .A(_055_),
    .B(_054_),
    .X(_056_)
  );
  */ 
  
  sky130_fd_sc_hd__nand2_2 _275_ (
    .A(_055_),
    .B(_054_),
    .Y(_601_)
  );
  
  sky130_fd_sc_hd__inv_2 _276_ (
    .A(_601_),
    .Y(_056_)
  );
  
  
  sky130_fd_sc_hd__buf_1 _277_ (
    .A(_056_),
    .X(io_out[10])
  );
  
  /*
  sky130_fd_sc_hd__and2_2 _270_ (
    .A(_099_),
    .B(_050_),
    .X(_057_)
  );
  */
  
  sky130_fd_sc_hd__nand2_2 _278_ (
    .A(_099_),
    .B(_050_),
    .Y(_602_)
  );
  
  sky130_fd_sc_hd__inv_2 _279_ (
    .A(_602_),
    .Y(_057_)
  );
  
  
  sky130_fd_sc_hd__buf_1 _280_ (
    .A(_057_),
    .X(io_out[14])
  );
  sky130_fd_sc_hd__o2bb2a_2 _281_ (
    .A1_N(_050_),
    .A2_N(_054_),
    .B1(io_out[10]),
    .B2(io_out[14]),
    .X(io_out[6])
  );
  sky130_fd_sc_hd__or2b_2 _282_ (
    .A(_014_),
    .B_N(_012_),
    .X(_058_)
  );
  sky130_fd_sc_hd__xnor2_2 _283_ (
    .A(_058_),
    .B(_013_),
    .Y(_059_)
  );
  sky130_fd_sc_hd__buf_1 _284_ (
    .A(io_in[34]),
    .X(_060_)
  );
  sky130_fd_sc_hd__o21a_2 _285_ (
    .A1(_001_),
    .A2(io_in[34]),
    .B1(io_in[19]),
    .X(_061_)
  );
  sky130_fd_sc_hd__a211o_2 _286_ (
    .A1(_001_),
    .A2(_060_),
    .B1(_047_),
    .C1(_061_),
    .X(_062_)
  );
  sky130_fd_sc_hd__o21a_2 _287_ (
    .A1(_021_),
    .A2(_059_),
    .B1(_062_),
    .X(_063_)
  );
  sky130_fd_sc_hd__or2b_2 _288_ (
    .A(_037_),
    .B_N(_035_),
    .X(_064_)
  );
  sky130_fd_sc_hd__xnor2_2 _289_ (
    .A(_064_),
    .B(_036_),
    .Y(_065_)
  );
  sky130_fd_sc_hd__buf_1 _290_ (
    .A(io_in[36]),
    .X(_066_)
  );
  sky130_fd_sc_hd__o21a_2 _291_ (
    .A1(_024_),
    .A2(io_in[36]),
    .B1(io_in[27]),
    .X(_067_)
  );
  sky130_fd_sc_hd__a211o_2 _292_ (
    .A1(_024_),
    .A2(_066_),
    .B1(_051_),
    .C1(_067_),
    .X(_068_)
  );
  sky130_fd_sc_hd__o21a_2 _293_ (
    .A1(_044_),
    .A2(_065_),
    .B1(_068_),
    .X(_069_)
  );
  
  /*
  sky130_fd_sc_hd__and2_2 _285_ (
    .A(_055_),
    .B(_069_),
    .X(_070_)
  );
  */
  
  sky130_fd_sc_hd__nand2_2 _294_ (
    .A(_055_),
    .B(_069_),
    .Y(_603_)
  );
  
  sky130_fd_sc_hd__inv_2 _295_ (
    .A(_603_),
    .Y(_070_)
  );
  
  
  sky130_fd_sc_hd__buf_1 _296_ (
    .A(_070_),
    .X(io_out[11])
  );
  
  /*
  sky130_fd_sc_hd__and2_2 _287_ (
    .A(_055_),
    .B(_063_),
    .X(_071_)
  );
  */
  
  sky130_fd_sc_hd__nand2_2 _297_ (
    .A(_055_),
    .B(_063_),
    .Y(_604_)
  );
  
  sky130_fd_sc_hd__inv_2 _298_ (
    .A(_604_),
    .Y(_071_)
  );
  
  
  sky130_fd_sc_hd__buf_1 _299_ (
    .A(_071_),
    .X(io_out[15])
  );
  sky130_fd_sc_hd__o2bb2a_2 _300_ (
    .A1_N(_063_),
    .A2_N(_069_),
    .B1(io_out[11]),
    .B2(io_out[15]),
    .X(io_out[7])
  );
  sky130_fd_sc_hd__a21o_2 _301_ (
    .A1(_060_),
    .A2(io_in[20]),
    .B1(io_in[24]),
    .X(_072_)
  );
  sky130_fd_sc_hd__or2_2 _302_ (
    .A(_060_),
    .B(io_in[20]),
    .X(_073_)
  );
  sky130_fd_sc_hd__xor2_2 _303_ (
    .A(io_in[20]),
    .B(_007_),
    .X(_074_)
  );
  sky130_fd_sc_hd__or2_2 _304_ (
    .A(_074_),
    .B(_015_),
    .X(_075_)
  );
  sky130_fd_sc_hd__a21oi_2 _305_ (
    .A1(_074_),
    .A2(_015_),
    .B1(io_in[35]),
    .Y(_076_)
  );
  sky130_fd_sc_hd__a32o_2 _306_ (
    .A1(io_in[35]),
    .A2(_072_),
    .A3(_073_),
    .B1(_075_),
    .B2(_076_),
    .X(_077_)
  );
  sky130_fd_sc_hd__a21o_2 _307_ (
    .A1(_066_),
    .A2(io_in[28]),
    .B1(io_in[32]),
    .X(_078_)
  );
  sky130_fd_sc_hd__or2_2 _308_ (
    .A(_066_),
    .B(io_in[28]),
    .X(_079_)
  );
  sky130_fd_sc_hd__xor2_2 _309_ (
    .A(io_in[28]),
    .B(_030_),
    .X(_080_)
  );
  sky130_fd_sc_hd__or2_2 _310_ (
    .A(_080_),
    .B(_038_),
    .X(_081_)
  );
  sky130_fd_sc_hd__a21oi_2 _311_ (
    .A1(_080_),
    .A2(_038_),
    .B1(_044_),
    .Y(_082_)
  );
  sky130_fd_sc_hd__a32o_2 _312_ (
    .A1(_044_),
    .A2(_078_),
    .A3(_079_),
    .B1(_081_),
    .B2(_082_),
    .X(_083_)
  );
  
  /*
  sky130_fd_sc_hd__and2_2 _302_ (
    .A(_055_),
    .B(_083_),
    .X(_084_)
  );
  */
  
  sky130_fd_sc_hd__nand2_2 _313_ (
    .A(_055_),
    .B(_083_),
    .Y(_605_)
  );
  
  sky130_fd_sc_hd__inv_2 _314_ (
    .A(_605_),
    .Y(_084_)
  );
  
  
  sky130_fd_sc_hd__buf_1 _315_ (
    .A(_084_),
    .X(io_out[12])
  );
  
  /*
  sky130_fd_sc_hd__and2_2 _304_ (
    .A(_055_),
    .B(_077_),
    .X(_085_)
  );
  */
  
  sky130_fd_sc_hd__nand2_2 _316_ (
    .A(_055_),
    .B(_077_),
    .Y(_606_)
  );
  
  sky130_fd_sc_hd__inv_2 _317_ (
    .A(_606_),
    .Y(_085_)
  );
  
  sky130_fd_sc_hd__buf_1 _318_ (
    .A(_085_),
    .X(io_out[16])
  );
  sky130_fd_sc_hd__o2bb2a_2 _319_ (
    .A1_N(_077_),
    .A2_N(_083_),
    .B1(io_out[12]),
    .B2(io_out[16]),
    .X(io_out[8])
  );
  sky130_fd_sc_hd__a21oi_2 _320_ (
    .A1(_008_),
    .A2(_015_),
    .B1(_017_),
    .Y(_086_)
  );
  
  /*
  sky130_fd_sc_hd__and2b_2 _308_ (
    .A_N(_016_),
    .B(_005_),
    .X(_087_)
  );
  */
  
  sky130_fd_sc_hd__nand2_2 _321_ (
    .A_N(_016_),
    .B(_005_),
    .Y(_607_)
  );
  
  sky130_fd_sc_hd__inv_2 _322_ (
    .A(_607_),
    .Y(_087_)
  );
  
  
  sky130_fd_sc_hd__xnor2_2 _323_ (
    .A(_086_),
    .B(_087_),
    .Y(_088_)
  );
  sky130_fd_sc_hd__nor2_2 _324_ (
    .A(_021_),
    .B(_088_),
    .Y(_089_)
  );
  sky130_fd_sc_hd__o21a_2 _325_ (
    .A1(io_in[25]),
    .A2(_060_),
    .B1(io_in[21]),
    .X(_090_)
  );
  sky130_fd_sc_hd__a21o_2 _326_ (
    .A1(io_in[25]),
    .A2(_060_),
    .B1(_047_),
    .X(_091_)
  );
  sky130_fd_sc_hd__nor2_2 _327_ (
    .A(_090_),
    .B(_091_),
    .Y(_092_)
  );
  sky130_fd_sc_hd__a21o_2 _328_ (
    .A1(_031_),
    .A2(_038_),
    .B1(_040_),
    .X(_093_)
  );
 /* sky130_fd_sc_hd__and2b_2 _315_ (
    .A_N(_039_),
    .B(_028_),
    .X(_094_)
  );
  */
  
  sky130_fd_sc_hd__nand2_2 _329_ (
    .A_N(_039_),
    .B(_028_),
    .Y(_608_)
  );
  
  sky130_fd_sc_hd__inv_2 _330_ (
    .A(_608_),
    .Y(_094_)
  );
  
  sky130_fd_sc_hd__xnor2_2 _331_ (
    .A(_093_),
    .B(_094_),
    .Y(_095_)
  );
  sky130_fd_sc_hd__o21a_2 _332_ (
    .A1(io_in[33]),
    .A2(_066_),
    .B1(io_in[29]),
    .X(_096_)
  );
  sky130_fd_sc_hd__a211oi_2 _333_ (
    .A1(io_in[33]),
    .A2(_066_),
    .B1(_051_),
    .C1(_096_),
    .Y(_097_)
  );
  sky130_fd_sc_hd__a21o_2 _334_ (
    .A1(_051_),
    .A2(_095_),
    .B1(_097_),
    .X(_098_)
  );
  sky130_fd_sc_hd__a211oi_2 _335_ (
    .A1(_051_),
    .A2(_095_),
    .B1(_097_),
    .C1(_137_),
    .Y(io_out[13])
  );
  sky130_fd_sc_hd__o221a_2 _336_ (
    .A1(_021_),
    .A2(_088_),
    .B1(_090_),
    .B2(_091_),
    .C1(_099_),
    .X(io_out[17])
  );
  sky130_fd_sc_hd__o32a_2 _337_ (
    .A1(_089_),
    .A2(_092_),
    .A3(_098_),
    .B1(io_out[13]),
    .B2(io_out[17]),
    .X(io_out[9])
  );
  sky130_fd_sc_hd__conb_1 _338_ (
    .LO(io_oeb[28])
  );
  sky130_fd_sc_hd__conb_1 _339_ (
    .LO(io_oeb[29])
  );
  sky130_fd_sc_hd__conb_1 _340_ (
    .LO(io_oeb[30])
  );
  sky130_fd_sc_hd__conb_1 _341_ (
    .LO(io_oeb[31])
  );
  sky130_fd_sc_hd__conb_1 _342_ (
    .LO(io_oeb[32])
  );
  sky130_fd_sc_hd__conb_1 _343_ (
    .LO(io_oeb[33])
  );
  sky130_fd_sc_hd__conb_1 _344_ (
    .LO(io_oeb[34])
  );
  sky130_fd_sc_hd__conb_1 _345_ (
    .LO(io_oeb[35])
  );
  sky130_fd_sc_hd__conb_1 _346_ (
    .LO(io_oeb[36])
  );
  sky130_fd_sc_hd__conb_1 _347_ (
    .LO(io_oeb[37])
  );
  sky130_fd_sc_hd__conb_1 _348_ (
    .LO(io_out[1])
  );
  sky130_fd_sc_hd__conb_1 _349_ (
    .LO(io_out[2])
  );
  sky130_fd_sc_hd__conb_1 _350_ (
    .LO(io_out[3])
  );
  sky130_fd_sc_hd__conb_1 _351_ (
    .LO(io_out[18])
  );
  sky130_fd_sc_hd__conb_1 _352_ (
    .LO(io_out[19])
  );
  sky130_fd_sc_hd__conb_1 _353_ (
    .LO(io_out[20])
  );
  sky130_fd_sc_hd__conb_1 _354_ (
    .LO(io_out[21])
  );
  sky130_fd_sc_hd__conb_1 _355_ (
    .LO(io_out[22])
  );
  sky130_fd_sc_hd__conb_1 _356_ (
    .LO(io_out[23])
  );
  sky130_fd_sc_hd__conb_1 _357_ (
    .LO(io_out[24])
  );
  sky130_fd_sc_hd__conb_1 _358_ (
    .LO(io_out[25])
  );
  sky130_fd_sc_hd__conb_1 _359_ (
    .LO(io_out[26])
  );
  sky130_fd_sc_hd__conb_1 _360_ (
    .LO(io_out[27])
  );
  sky130_fd_sc_hd__conb_1 _361_ (
    .LO(io_out[28])
  );
  sky130_fd_sc_hd__conb_1 _362_ (
    .LO(io_out[29])
  );
  sky130_fd_sc_hd__conb_1 _363_ (
    .LO(io_out[30])
  );
  sky130_fd_sc_hd__conb_1 _364_ (
    .LO(io_out[31])
  );
  sky130_fd_sc_hd__conb_1 _365_ (
    .LO(io_out[32])
  );
  sky130_fd_sc_hd__conb_1 _366_ (
    .LO(io_out[33])
  );
  sky130_fd_sc_hd__conb_1 _367_ (
    .LO(io_out[34])
  );
  sky130_fd_sc_hd__conb_1 _368_ (
    .LO(io_out[35])
  );
  sky130_fd_sc_hd__conb_1 _369_ (
    .LO(io_out[36])
  );
  sky130_fd_sc_hd__conb_1 _370_ (
    .LO(io_out[37])
  );
  sky130_fd_sc_hd__conb_1 _371_ (
    .LO(la_data_out[0])
  );
  sky130_fd_sc_hd__conb_1 _372_ (
    .LO(la_data_out[1])
  );
  sky130_fd_sc_hd__conb_1 _373_ (
    .LO(la_data_out[2])
  );
  sky130_fd_sc_hd__conb_1 _374_ (
    .LO(la_data_out[3])
  );
  sky130_fd_sc_hd__conb_1 _375_ (
    .LO(la_data_out[4])
  );
  sky130_fd_sc_hd__conb_1 _376_ (
    .LO(la_data_out[5])
  );
  sky130_fd_sc_hd__conb_1 _377_ (
    .LO(la_data_out[6])
  );
  sky130_fd_sc_hd__conb_1 _378_ (
    .LO(la_data_out[7])
  );
  sky130_fd_sc_hd__conb_1 _379_ (
    .LO(la_data_out[8])
  );
  sky130_fd_sc_hd__conb_1 _380_ (
    .LO(la_data_out[9])
  );
  sky130_fd_sc_hd__conb_1 _381_ (
    .LO(la_data_out[10])
  );
  sky130_fd_sc_hd__conb_1 _382_ (
    .LO(la_data_out[11])
  );
  sky130_fd_sc_hd__conb_1 _383_ (
    .LO(la_data_out[12])
  );
  sky130_fd_sc_hd__conb_1 _384_ (
    .LO(la_data_out[13])
  );
  sky130_fd_sc_hd__conb_1 _385_ (
    .LO(la_data_out[14])
  );
  sky130_fd_sc_hd__conb_1 _386_ (
    .LO(la_data_out[15])
  );
  sky130_fd_sc_hd__conb_1 _387_ (
    .LO(la_data_out[16])
  );
  sky130_fd_sc_hd__conb_1 _388_ (
    .LO(la_data_out[17])
  );
  sky130_fd_sc_hd__conb_1 _389_ (
    .LO(la_data_out[18])
  );
  sky130_fd_sc_hd__conb_1 _390_ (
    .LO(la_data_out[19])
  );
  sky130_fd_sc_hd__conb_1 _391_ (
    .LO(la_data_out[20])
  );
  sky130_fd_sc_hd__conb_1 _392_ (
    .LO(la_data_out[21])
  );
  sky130_fd_sc_hd__conb_1 _393_ (
    .LO(la_data_out[22])
  );
  sky130_fd_sc_hd__conb_1 _394_ (
    .LO(la_data_out[23])
  );
  sky130_fd_sc_hd__conb_1 _395_ (
    .LO(la_data_out[24])
  );
  sky130_fd_sc_hd__conb_1 _396_ (
    .LO(la_data_out[25])
  );
  sky130_fd_sc_hd__conb_1 _397_ (
    .LO(la_data_out[26])
  );
  sky130_fd_sc_hd__conb_1 _398_ (
    .LO(la_data_out[27])
  );
  sky130_fd_sc_hd__conb_1 _399_ (
    .LO(la_data_out[28])
  );
  sky130_fd_sc_hd__conb_1 _400_ (
    .LO(la_data_out[29])
  );
  sky130_fd_sc_hd__conb_1 _401_ (
    .LO(la_data_out[30])
  );
  sky130_fd_sc_hd__conb_1 _402_ (
    .LO(la_data_out[31])
  );
  sky130_fd_sc_hd__conb_1 _403_ (
    .LO(la_data_out[64])
  );
  sky130_fd_sc_hd__conb_1 _404_ (
    .LO(la_data_out[65])
  );
  sky130_fd_sc_hd__conb_1 _405_ (
    .LO(la_data_out[66])
  );
  sky130_fd_sc_hd__conb_1 _406_ (
    .LO(la_data_out[67])
  );
  sky130_fd_sc_hd__conb_1 _407_ (
    .LO(la_data_out[68])
  );
  sky130_fd_sc_hd__conb_1 _408_ (
    .LO(la_data_out[69])
  );
  sky130_fd_sc_hd__conb_1 _409_ (
    .LO(la_data_out[70])
  );
  sky130_fd_sc_hd__conb_1 _410_ (
    .LO(la_data_out[71])
  );
  sky130_fd_sc_hd__conb_1 _411_ (
    .LO(la_data_out[72])
  );
  sky130_fd_sc_hd__conb_1 _412_ (
    .LO(la_data_out[73])
  );
  sky130_fd_sc_hd__conb_1 _413_ (
    .LO(la_data_out[74])
  );
  sky130_fd_sc_hd__conb_1 _414_ (
    .LO(la_data_out[75])
  );
  sky130_fd_sc_hd__conb_1 _415_ (
    .LO(la_data_out[76])
  );
  sky130_fd_sc_hd__conb_1 _416_ (
    .LO(la_data_out[77])
  );
  sky130_fd_sc_hd__conb_1 _417_ (
    .LO(la_data_out[78])
  );
  sky130_fd_sc_hd__conb_1 _418_ (
    .LO(la_data_out[79])
  );
  sky130_fd_sc_hd__conb_1 _419_ (
    .LO(la_data_out[80])
  );
  sky130_fd_sc_hd__conb_1 _420_ (
    .LO(la_data_out[81])
  );
  sky130_fd_sc_hd__conb_1 _421_ (
    .LO(la_data_out[82])
  );
  sky130_fd_sc_hd__conb_1 _422_ (
    .LO(la_data_out[83])
  );
  sky130_fd_sc_hd__conb_1 _423_ (
    .LO(la_data_out[84])
  );
  sky130_fd_sc_hd__conb_1 _424_ (
    .LO(la_data_out[85])
  );
  sky130_fd_sc_hd__conb_1 _425_ (
    .LO(la_data_out[86])
  );
  sky130_fd_sc_hd__conb_1 _426_ (
    .LO(la_data_out[87])
  );
  sky130_fd_sc_hd__conb_1 _427_ (
    .LO(la_data_out[88])
  );
  sky130_fd_sc_hd__conb_1 _428_ (
    .LO(la_data_out[89])
  );
  sky130_fd_sc_hd__conb_1 _429_ (
    .LO(la_data_out[90])
  );
  sky130_fd_sc_hd__conb_1 _430_ (
    .LO(la_data_out[91])
  );
  sky130_fd_sc_hd__conb_1 _431_ (
    .LO(la_data_out[92])
  );
  sky130_fd_sc_hd__conb_1 _432_ (
    .LO(la_data_out[93])
  );
  sky130_fd_sc_hd__conb_1 _433_ (
    .LO(la_data_out[94])
  );
  sky130_fd_sc_hd__conb_1 _434_ (
    .LO(la_data_out[95])
  );
  sky130_fd_sc_hd__conb_1 _435_ (
    .LO(la_data_out[96])
  );
  sky130_fd_sc_hd__conb_1 _436_ (
    .LO(la_data_out[97])
  );
  sky130_fd_sc_hd__conb_1 _437_ (
    .LO(la_data_out[98])
  );
  sky130_fd_sc_hd__conb_1 _438_ (
    .LO(la_data_out[99])
  );
  sky130_fd_sc_hd__conb_1 _439_ (
    .LO(la_data_out[100])
  );
  sky130_fd_sc_hd__conb_1 _440_ (
    .LO(la_data_out[101])
  );
  sky130_fd_sc_hd__conb_1 _441_ (
    .LO(la_data_out[102])
  );
  sky130_fd_sc_hd__conb_1 _442_ (
    .LO(la_data_out[103])
  );
  sky130_fd_sc_hd__conb_1 _443_ (
    .LO(la_data_out[104])
  );
  sky130_fd_sc_hd__conb_1 _444_ (
    .LO(la_data_out[105])
  );
  sky130_fd_sc_hd__conb_1 _445_ (
    .LO(la_data_out[106])
  );
  sky130_fd_sc_hd__conb_1 _446_ (
    .LO(la_data_out[107])
  );
  sky130_fd_sc_hd__conb_1 _447_ (
    .LO(la_data_out[108])
  );
  sky130_fd_sc_hd__conb_1 _448_ (
    .LO(la_data_out[109])
  );
  sky130_fd_sc_hd__conb_1 _449_ (
    .LO(la_data_out[110])
  );
  sky130_fd_sc_hd__conb_1 _450_ (
    .LO(la_data_out[111])
  );
  sky130_fd_sc_hd__conb_1 _451_ (
    .LO(la_data_out[112])
  );
  sky130_fd_sc_hd__conb_1 _452_ (
    .LO(la_data_out[113])
  );
  sky130_fd_sc_hd__conb_1 _453_ (
    .LO(la_data_out[114])
  );
  sky130_fd_sc_hd__conb_1 _454_ (
    .LO(la_data_out[115])
  );
  sky130_fd_sc_hd__conb_1 _455_ (
    .LO(la_data_out[116])
  );
  sky130_fd_sc_hd__conb_1 _456_ (
    .LO(la_data_out[117])
  );
  sky130_fd_sc_hd__conb_1 _457_ (
    .LO(la_data_out[118])
  );
  sky130_fd_sc_hd__conb_1 _458_ (
    .LO(la_data_out[119])
  );
  sky130_fd_sc_hd__conb_1 _459_ (
    .LO(la_data_out[120])
  );
  sky130_fd_sc_hd__conb_1 _460_ (
    .LO(la_data_out[121])
  );
  sky130_fd_sc_hd__conb_1 _461_ (
    .LO(la_data_out[122])
  );
  sky130_fd_sc_hd__conb_1 _462_ (
    .LO(la_data_out[123])
  );
  sky130_fd_sc_hd__conb_1 _463_ (
    .LO(la_data_out[124])
  );
  sky130_fd_sc_hd__conb_1 _464_ (
    .LO(la_data_out[125])
  );
  sky130_fd_sc_hd__conb_1 _465_ (
    .LO(la_data_out[126])
  );
  sky130_fd_sc_hd__conb_1 _466_ (
    .LO(la_data_out[127])
  );
  sky130_fd_sc_hd__conb_1 _467_ (
    .LO(user_irq[0])
  );
  sky130_fd_sc_hd__conb_1 _468_ (
    .LO(user_irq[1])
  );
  sky130_fd_sc_hd__conb_1 _469_ (
    .LO(user_irq[2])
  );
  sky130_fd_sc_hd__conb_1 _470_ (
    .LO(wbs_ack_o)
  );
  sky130_fd_sc_hd__conb_1 _471_ (
    .LO(wbs_dat_o[0])
  );
  sky130_fd_sc_hd__conb_1 _472_ (
    .LO(wbs_dat_o[1])
  );
  sky130_fd_sc_hd__conb_1 _473_ (
    .LO(wbs_dat_o[2])
  );
  sky130_fd_sc_hd__conb_1 _474_ (
    .LO(wbs_dat_o[3])
  );
  sky130_fd_sc_hd__conb_1 _475_ (
    .LO(wbs_dat_o[4])
  );
  sky130_fd_sc_hd__conb_1 _476_ (
    .LO(wbs_dat_o[5])
  );
  sky130_fd_sc_hd__conb_1 _477_ (
    .LO(wbs_dat_o[6])
  );
  sky130_fd_sc_hd__conb_1 _478_ (
    .LO(wbs_dat_o[7])
  );
  sky130_fd_sc_hd__conb_1 _479_ (
    .LO(wbs_dat_o[8])
  );
  sky130_fd_sc_hd__conb_1 _480_ (
    .LO(wbs_dat_o[9])
  );
  sky130_fd_sc_hd__conb_1 _481_ (
    .LO(wbs_dat_o[10])
  );
  sky130_fd_sc_hd__conb_1 _482_ (
    .LO(wbs_dat_o[11])
  );
  sky130_fd_sc_hd__conb_1 _483_ (
    .LO(wbs_dat_o[12])
  );
  sky130_fd_sc_hd__conb_1 _484_ (
    .LO(wbs_dat_o[13])
  );
  sky130_fd_sc_hd__conb_1 _485_ (
    .LO(wbs_dat_o[14])
  );
  sky130_fd_sc_hd__conb_1 _486_ (
    .LO(wbs_dat_o[15])
  );
  sky130_fd_sc_hd__conb_1 _487_ (
    .LO(wbs_dat_o[16])
  );
  sky130_fd_sc_hd__conb_1 _488_ (
    .LO(wbs_dat_o[17])
  );
  sky130_fd_sc_hd__conb_1 _489_ (
    .LO(wbs_dat_o[18])
  );
  sky130_fd_sc_hd__conb_1 _490_ (
    .LO(wbs_dat_o[19])
  );
  sky130_fd_sc_hd__conb_1 _491_ (
    .LO(wbs_dat_o[20])
  );
  sky130_fd_sc_hd__conb_1 _492_ (
    .LO(wbs_dat_o[21])
  );
  sky130_fd_sc_hd__conb_1 _493_ (
    .LO(wbs_dat_o[22])
  );
  sky130_fd_sc_hd__conb_1 _494_ (
    .LO(wbs_dat_o[23])
  );
  sky130_fd_sc_hd__conb_1 _495_ (
    .LO(wbs_dat_o[24])
  );
  sky130_fd_sc_hd__conb_1 _496_ (
    .LO(wbs_dat_o[25])
  );
  sky130_fd_sc_hd__conb_1 _497_ (
    .LO(wbs_dat_o[26])
  );
  sky130_fd_sc_hd__conb_1 _498_ (
    .LO(wbs_dat_o[27])
  );
  sky130_fd_sc_hd__conb_1 _499_ (
    .LO(wbs_dat_o[28])
  );
  sky130_fd_sc_hd__conb_1 _500_ (
    .LO(wbs_dat_o[29])
  );
  sky130_fd_sc_hd__conb_1 _501_ (
    .LO(wbs_dat_o[30])
  );
  sky130_fd_sc_hd__conb_1 _502_ (
    .LO(wbs_dat_o[31])
  );
  sky130_fd_sc_hd__conb_1 _503_ (
    .LO(_138_)
  );
  sky130_fd_sc_hd__conb_1 _504_ (
    .LO(_139_)
  );
  sky130_fd_sc_hd__conb_1 _505_ (
    .LO(_140_)
  );
  sky130_fd_sc_hd__conb_1 _506_ (
    .LO(_141_)
  );
  sky130_fd_sc_hd__conb_1 _507_ (
    .LO(_142_)
  );
  sky130_fd_sc_hd__conb_1 _508_ (
    .LO(_143_)
  );
  sky130_fd_sc_hd__conb_1 _509_ (
    .LO(_144_)
  );
  sky130_fd_sc_hd__conb_1 _510_ (
    .LO(_145_)
  );
  sky130_fd_sc_hd__conb_1 _511_ (
    .LO(_146_)
  );
  sky130_fd_sc_hd__conb_1 _512_ (
    .LO(_147_)
  );
  sky130_fd_sc_hd__conb_1 _513_ (
    .LO(_148_)
  );
  sky130_fd_sc_hd__conb_1 _514_ (
    .LO(_149_)
  );
  sky130_fd_sc_hd__conb_1 _515_ (
    .LO(_150_)
  );
  sky130_fd_sc_hd__conb_1 _516_ (
    .LO(_151_)
  );
  sky130_fd_sc_hd__conb_1 _517_ (
    .LO(_152_)
  );
  sky130_fd_sc_hd__conb_1 _518_ (
    .LO(_153_)
  );
  sky130_fd_sc_hd__conb_1 _519_ (
    .LO(_154_)
  );
  sky130_fd_sc_hd__conb_1 _520_ (
    .LO(_155_)
  );
  sky130_fd_sc_hd__conb_1 _521_ (
    .LO(_156_)
  );
  sky130_fd_sc_hd__conb_1 _522_ (
    .LO(_157_)
  );
  sky130_fd_sc_hd__conb_1 _523_ (
    .LO(_158_)
  );
  sky130_fd_sc_hd__conb_1 _524_ (
    .LO(_159_)
  );
  sky130_fd_sc_hd__conb_1 _525_ (
    .LO(_160_)
  );
  sky130_fd_sc_hd__conb_1 _526_ (
    .LO(_161_)
  );
  sky130_fd_sc_hd__conb_1 _527_ (
    .LO(_162_)
  );
  sky130_fd_sc_hd__conb_1 _528_ (
    .LO(_163_)
  );
  sky130_fd_sc_hd__conb_1 _529_ (
    .LO(_164_)
  );
  sky130_fd_sc_hd__conb_1 _530_ (
    .LO(_165_)
  );
  sky130_fd_sc_hd__conb_1 _531_ (
    .LO(_166_)
  );
  sky130_fd_sc_hd__conb_1 _532_ (
    .LO(_167_)
  );
  sky130_fd_sc_hd__conb_1 _533_ (
    .LO(_168_)
  );
  sky130_fd_sc_hd__conb_1 _534_ (
    .LO(_169_)
  );
  sky130_fd_sc_hd__conb_1 _535_ (
    .LO(io_oeb[0])
  );
  sky130_fd_sc_hd__conb_1 _536_ (
    .LO(io_oeb[1])
  );
  sky130_fd_sc_hd__conb_1 _537_ (
    .LO(io_oeb[2])
  );
  sky130_fd_sc_hd__conb_1 _538_ (
    .LO(io_oeb[3])
  );
  sky130_fd_sc_hd__conb_1 _539_ (
    .LO(io_oeb[4])
  );
  sky130_fd_sc_hd__conb_1 _540_ (
    .LO(io_oeb[5])
  );
  sky130_fd_sc_hd__conb_1 _541_ (
    .LO(io_oeb[6])
  );
  sky130_fd_sc_hd__conb_1 _542_ (
    .LO(io_oeb[7])
  );
  sky130_fd_sc_hd__conb_1 _543_ (
    .LO(io_oeb[8])
  );
  sky130_fd_sc_hd__conb_1 _544_ (
    .LO(io_oeb[9])
  );
  sky130_fd_sc_hd__conb_1 _545_ (
    .LO(io_oeb[10])
  );
  sky130_fd_sc_hd__conb_1 _546_ (
    .LO(io_oeb[11])
  );
  sky130_fd_sc_hd__conb_1 _547_ (
    .LO(io_oeb[12])
  );
  sky130_fd_sc_hd__conb_1 _548_ (
    .LO(io_oeb[13])
  );
  sky130_fd_sc_hd__conb_1 _549_ (
    .LO(io_oeb[14])
  );
  sky130_fd_sc_hd__conb_1 _550_ (
    .LO(io_oeb[15])
  );
  sky130_fd_sc_hd__conb_1 _551_ (
    .LO(io_oeb[16])
  );
  sky130_fd_sc_hd__conb_1 _552_ (
    .LO(io_oeb[17])
  );
  sky130_fd_sc_hd__conb_1 _553_ (
    .LO(io_oeb[18])
  );
  sky130_fd_sc_hd__conb_1 _554_ (
    .LO(io_oeb[19])
  );
  sky130_fd_sc_hd__conb_1 _555_ (
    .LO(io_oeb[20])
  );
  sky130_fd_sc_hd__conb_1 _556_ (
    .LO(io_oeb[21])
  );
  sky130_fd_sc_hd__conb_1 _557_ (
    .LO(io_oeb[22])
  );
  sky130_fd_sc_hd__conb_1 _558_ (
    .LO(io_oeb[23])
  );
  sky130_fd_sc_hd__conb_1 _559_ (
    .LO(io_oeb[24])
  );
  sky130_fd_sc_hd__conb_1 _560_ (
    .LO(io_oeb[25])
  );
  sky130_fd_sc_hd__conb_1 _561_ (
    .LO(io_oeb[26])
  );
  sky130_fd_sc_hd__conb_1 _562_ (
    .LO(io_oeb[27])
  );
  sky130_fd_sc_hd__ebufn_2 _563_ (
    .A(_138_),
    .TE_B(_106_),
    .Z(la_data_out[32])
  );
  sky130_fd_sc_hd__ebufn_2 _564_ (
    .A(_139_),
    .TE_B(_107_),
    .Z(la_data_out[33])
  );
  sky130_fd_sc_hd__ebufn_2 _565_ (
    .A(_140_),
    .TE_B(_108_),
    .Z(la_data_out[34])
  );
  sky130_fd_sc_hd__ebufn_2 _566_ (
    .A(_141_),
    .TE_B(_109_),
    .Z(la_data_out[35])
  );
  sky130_fd_sc_hd__ebufn_2 _567_ (
    .A(_142_),
    .TE_B(_110_),
    .Z(la_data_out[36])
  );
  sky130_fd_sc_hd__ebufn_2 _568_ (
    .A(_143_),
    .TE_B(_111_),
    .Z(la_data_out[37])
  );
  sky130_fd_sc_hd__ebufn_2 _569_ (
    .A(_144_),
    .TE_B(_112_),
    .Z(la_data_out[38])
  );
  sky130_fd_sc_hd__ebufn_2 _570_ (
    .A(_145_),
    .TE_B(_113_),
    .Z(la_data_out[39])
  );
  sky130_fd_sc_hd__ebufn_2 _571_ (
    .A(_146_),
    .TE_B(_114_),
    .Z(la_data_out[40])
  );
  sky130_fd_sc_hd__ebufn_2 _572_ (
    .A(_147_),
    .TE_B(_115_),
    .Z(la_data_out[41])
  );
  sky130_fd_sc_hd__ebufn_2 _573_ (
    .A(_148_),
    .TE_B(_116_),
    .Z(la_data_out[42])
  );
  sky130_fd_sc_hd__ebufn_2 _574_ (
    .A(_149_),
    .TE_B(_117_),
    .Z(la_data_out[43])
  );
  sky130_fd_sc_hd__ebufn_2 _575_ (
    .A(_150_),
    .TE_B(_118_),
    .Z(la_data_out[44])
  );
  sky130_fd_sc_hd__ebufn_2 _576_ (
    .A(_151_),
    .TE_B(_119_),
    .Z(la_data_out[45])
  );
  sky130_fd_sc_hd__ebufn_2 _577_ (
    .A(_152_),
    .TE_B(_120_),
    .Z(la_data_out[46])
  );
  sky130_fd_sc_hd__ebufn_2 _578_ (
    .A(_153_),
    .TE_B(_121_),
    .Z(la_data_out[47])
  );
  sky130_fd_sc_hd__ebufn_2 _579_ (
    .A(_154_),
    .TE_B(_122_),
    .Z(la_data_out[48])
  );
  sky130_fd_sc_hd__ebufn_2 _580_ (
    .A(_155_),
    .TE_B(_123_),
    .Z(la_data_out[49])
  );
  sky130_fd_sc_hd__ebufn_2 _581_ (
    .A(_156_),
    .TE_B(_124_),
    .Z(la_data_out[50])
  );
  sky130_fd_sc_hd__ebufn_2 _582_ (
    .A(_157_),
    .TE_B(_125_),
    .Z(la_data_out[51])
  );
  sky130_fd_sc_hd__ebufn_2 _583_ (
    .A(_158_),
    .TE_B(_126_),
    .Z(la_data_out[52])
  );
  sky130_fd_sc_hd__ebufn_2 _584_ (
    .A(_159_),
    .TE_B(_127_),
    .Z(la_data_out[53])
  );
  sky130_fd_sc_hd__ebufn_2 _585_ (
    .A(_160_),
    .TE_B(_128_),
    .Z(la_data_out[54])
  );
  sky130_fd_sc_hd__ebufn_2 _586_ (
    .A(_161_),
    .TE_B(_129_),
    .Z(la_data_out[55])
  );
  sky130_fd_sc_hd__ebufn_2 _587_ (
    .A(_162_),
    .TE_B(_130_),
    .Z(la_data_out[56])
  );
  sky130_fd_sc_hd__ebufn_2 _588_ (
    .A(_163_),
    .TE_B(_131_),
    .Z(la_data_out[57])
  );
  sky130_fd_sc_hd__ebufn_2 _589_ (
    .A(_164_),
    .TE_B(_132_),
    .Z(la_data_out[58])
  );
  sky130_fd_sc_hd__ebufn_2 _590_ (
    .A(_165_),
    .TE_B(_133_),
    .Z(la_data_out[59])
  );
  sky130_fd_sc_hd__ebufn_2 _591_ (
    .A(_166_),
    .TE_B(_134_),
    .Z(la_data_out[60])
  );
  sky130_fd_sc_hd__ebufn_2 _592_ (
    .A(_167_),
    .TE_B(_135_),
    .Z(la_data_out[61])
  );
  sky130_fd_sc_hd__ebufn_2 _593_ (
    .A(_168_),
    .TE_B(_136_),
    .Z(la_data_out[62])
  );
  sky130_fd_sc_hd__ebufn_2 _594_ (
    .A(_169_),
    .TE_B(_137_),
    .Z(la_data_out[63])
  );
endmodule
