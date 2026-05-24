module top (aclk,
    aresetn,
    m_axis_tlast,
    m_axis_tready,
    m_axis_tvalid,
    s_axis_tlast,
    s_axis_tready,
    s_axis_tvalid,
    m_axis_tdata,
    s_axis_tdata,
    VPWR,
    VGND);
 input aclk;
 input aresetn;
 output m_axis_tlast;
 input m_axis_tready;
 output m_axis_tvalid;
 input s_axis_tlast;
 output s_axis_tready;
 input s_axis_tvalid;
 output [31:0] m_axis_tdata;
 input [15:0] s_axis_tdata;
 inout VPWR;
 inout VGND;

 wire _0000_;
 wire _0001_;
 wire _0002_;
 wire _0003_;
 wire _0004_;
 wire _0005_;
 wire _0006_;
 wire _0007_;
 wire _0008_;
 wire _0009_;
 wire _0010_;
 wire _0011_;
 wire _0012_;
 wire _0013_;
 wire _0014_;
 wire _0015_;
 wire _0016_;
 wire _0017_;
 wire _0018_;
 wire _0019_;
 wire _0020_;
 wire _0021_;
 wire _0022_;
 wire _0023_;
 wire _0024_;
 wire _0025_;
 wire _0026_;
 wire _0027_;
 wire _0028_;
 wire _0029_;
 wire _0030_;
 wire _0031_;
 wire _0032_;
 wire _0033_;
 wire _0034_;
 wire _0035_;
 wire _0036_;
 wire _0037_;
 wire _0038_;
 wire _0039_;
 wire _0040_;
 wire _0041_;
 wire _0042_;
 wire _0043_;
 wire _0044_;
 wire _0045_;
 wire _0046_;
 wire _0047_;
 wire _0048_;
 wire _0049_;
 wire _0050_;
 wire _0051_;
 wire _0052_;
 wire _0053_;
 wire _0054_;
 wire _0055_;
 wire _0056_;
 wire _0057_;
 wire _0058_;
 wire _0059_;
 wire _0060_;
 wire _0061_;
 wire _0062_;
 wire _0063_;
 wire _0064_;
 wire _0065_;
 wire _0066_;
 wire _0067_;
 wire _0068_;
 wire _0069_;
 wire _0070_;
 wire _0071_;
 wire _0072_;
 wire _0073_;
 wire _0074_;
 wire _0075_;
 wire _0076_;
 wire _0077_;
 wire _0078_;
 wire _0079_;
 wire _0080_;
 wire _0081_;
 wire _0082_;
 wire _0083_;
 wire _0084_;
 wire _0085_;
 wire _0086_;
 wire _0087_;
 wire _0088_;
 wire _0089_;
 wire _0090_;
 wire _0091_;
 wire _0092_;
 wire _0093_;
 wire _0094_;
 wire _0095_;
 wire _0096_;
 wire _0097_;
 wire _0098_;
 wire _0099_;
 wire _0100_;
 wire _0101_;
 wire _0102_;
 wire _0103_;
 wire _0104_;
 wire _0105_;
 wire _0106_;
 wire _0107_;
 wire _0108_;
 wire _0109_;
 wire _0110_;
 wire _0111_;
 wire _0112_;
 wire _0113_;
 wire _0114_;
 wire _0115_;
 wire _0116_;
 wire _0117_;
 wire _0118_;
 wire _0119_;
 wire _0120_;
 wire _0121_;
 wire _0122_;
 wire _0123_;
 wire _0124_;
 wire _0125_;
 wire _0126_;
 wire _0127_;
 wire _0128_;
 wire _0129_;
 wire _0130_;
 wire _0131_;
 wire _0132_;
 wire _0133_;
 wire _0134_;
 wire _0135_;
 wire _0136_;
 wire _0137_;
 wire _0138_;
 wire _0139_;
 wire _0140_;
 wire _0141_;
 wire _0142_;
 wire _0143_;
 wire _0144_;
 wire _0145_;
 wire _0146_;
 wire _0147_;
 wire _0148_;
 wire _0149_;
 wire _0150_;
 wire _0151_;
 wire _0152_;
 wire _0153_;
 wire _0154_;
 wire _0155_;
 wire _0156_;
 wire _0157_;
 wire _0158_;
 wire _0159_;
 wire _0160_;
 wire _0161_;
 wire _0162_;
 wire _0163_;
 wire _0164_;
 wire _0165_;
 wire _0166_;
 wire _0167_;
 wire _0168_;
 wire _0169_;
 wire _0170_;
 wire _0171_;
 wire _0172_;
 wire _0173_;
 wire _0174_;
 wire _0175_;
 wire _0176_;
 wire _0177_;
 wire _0178_;
 wire _0179_;
 wire _0180_;
 wire _0181_;
 wire _0182_;
 wire _0183_;
 wire _0184_;
 wire _0185_;
 wire _0186_;
 wire _0187_;
 wire _0188_;
 wire _0189_;
 wire _0190_;
 wire _0191_;
 wire _0192_;
 wire _0193_;
 wire _0194_;
 wire _0195_;
 wire _0196_;
 wire _0197_;
 wire _0198_;
 wire _0199_;
 wire _0200_;
 wire _0201_;
 wire _0202_;
 wire _0203_;
 wire _0204_;
 wire _0205_;
 wire _0206_;
 wire _0207_;
 wire _0208_;
 wire _0209_;
 wire _0210_;
 wire _0211_;
 wire _0212_;
 wire _0213_;
 wire _0214_;
 wire _0215_;
 wire _0216_;
 wire _0217_;
 wire _0218_;
 wire _0219_;
 wire _0220_;
 wire _0221_;
 wire _0222_;
 wire _0223_;
 wire _0224_;
 wire _0225_;
 wire _0226_;
 wire _0227_;
 wire _0228_;
 wire _0229_;
 wire _0230_;
 wire _0231_;
 wire _0232_;
 wire _0233_;
 wire _0234_;
 wire _0235_;
 wire _0236_;
 wire _0237_;
 wire _0238_;
 wire _0239_;
 wire _0240_;
 wire _0241_;
 wire _0242_;
 wire _0243_;
 wire _0244_;
 wire _0245_;
 wire _0246_;
 wire _0247_;
 wire _0248_;
 wire _0249_;
 wire _0250_;
 wire _0251_;
 wire _0252_;
 wire _0253_;
 wire _0254_;
 wire _0255_;
 wire _0256_;
 wire _0257_;
 wire _0258_;
 wire _0259_;
 wire _0260_;
 wire _0261_;
 wire _0262_;
 wire _0263_;
 wire _0264_;
 wire _0265_;
 wire _0266_;
 wire _0267_;
 wire _0268_;
 wire _0269_;
 wire _0270_;
 wire _0271_;
 wire _0272_;
 wire _0273_;
 wire _0274_;
 wire _0275_;
 wire _0276_;
 wire _0277_;
 wire _0278_;
 wire _0279_;
 wire _0280_;
 wire _0281_;
 wire _0282_;
 wire _0283_;
 wire _0284_;
 wire _0285_;
 wire _0286_;
 wire _0287_;
 wire _0288_;
 wire _0289_;
 wire _0290_;
 wire _0291_;
 wire _0292_;
 wire _0293_;
 wire _0294_;
 wire _0295_;
 wire _0296_;
 wire _0297_;
 wire _0298_;
 wire _0299_;
 wire _0300_;
 wire _0301_;
 wire _0302_;
 wire _0303_;
 wire _0304_;
 wire _0305_;
 wire _0306_;
 wire _0307_;
 wire _0308_;
 wire _0309_;
 wire _0310_;
 wire _0311_;
 wire _0312_;
 wire _0313_;
 wire _0314_;
 wire _0315_;
 wire _0316_;
 wire _0317_;
 wire _0318_;
 wire _0319_;
 wire _0320_;
 wire _0321_;
 wire _0322_;
 wire _0323_;
 wire _0324_;
 wire _0325_;
 wire _0326_;
 wire _0327_;
 wire _0328_;
 wire _0329_;
 wire _0330_;
 wire _0331_;
 wire _0332_;
 wire _0333_;
 wire _0334_;
 wire _0335_;
 wire _0336_;
 wire _0337_;
 wire _0338_;
 wire _0339_;
 wire _0340_;
 wire _0341_;
 wire _0342_;
 wire _0343_;
 wire _0344_;
 wire _0345_;
 wire _0346_;
 wire _0347_;
 wire _0348_;
 wire _0349_;
 wire _0350_;
 wire _0351_;
 wire _0352_;
 wire _0353_;
 wire _0354_;
 wire _0355_;
 wire _0356_;
 wire _0357_;
 wire _0358_;
 wire _0359_;
 wire _0360_;
 wire _0361_;
 wire _0362_;
 wire _0363_;
 wire _0364_;
 wire _0365_;
 wire _0366_;
 wire _0367_;
 wire _0368_;
 wire _0369_;
 wire _0370_;
 wire _0371_;
 wire _0372_;
 wire _0373_;
 wire _0374_;
 wire _0375_;
 wire _0376_;
 wire _0377_;
 wire _0378_;
 wire _0379_;
 wire _0380_;
 wire _0381_;
 wire _0382_;
 wire _0383_;
 wire _0384_;
 wire _0385_;
 wire _0386_;
 wire _0387_;
 wire _0388_;
 wire _0389_;
 wire _0390_;
 wire _0391_;
 wire _0392_;
 wire _0393_;
 wire _0394_;
 wire _0395_;
 wire _0396_;
 wire _0397_;
 wire _0398_;
 wire _0399_;
 wire _0400_;
 wire _0401_;
 wire _0402_;
 wire _0403_;
 wire _0404_;
 wire _0405_;
 wire _0406_;
 wire _0407_;
 wire _0408_;
 wire _0409_;
 wire _0410_;
 wire _0411_;
 wire _0412_;
 wire _0413_;
 wire _0414_;
 wire _0415_;
 wire _0416_;
 wire _0417_;
 wire _0418_;
 wire _0419_;
 wire _0420_;
 wire _0421_;
 wire _0422_;
 wire _0423_;
 wire _0424_;
 wire _0425_;
 wire _0426_;
 wire _0427_;
 wire _0428_;
 wire _0429_;
 wire _0430_;
 wire _0431_;
 wire _0432_;
 wire _0433_;
 wire _0434_;
 wire _0435_;
 wire _0436_;
 wire _0437_;
 wire _0438_;
 wire _0439_;
 wire _0440_;
 wire _0441_;
 wire _0442_;
 wire _0443_;
 wire _0444_;
 wire _0445_;
 wire _0446_;
 wire _0447_;
 wire _0448_;
 wire _0449_;
 wire _0450_;
 wire _0451_;
 wire _0452_;
 wire _0453_;
 wire _0454_;
 wire _0455_;
 wire _0456_;
 wire _0457_;
 wire _0458_;
 wire _0459_;
 wire _0460_;
 wire _0461_;
 wire _0462_;
 wire _0463_;
 wire _0464_;
 wire _0465_;
 wire _0466_;
 wire _0467_;
 wire _0468_;
 wire _0469_;
 wire _0470_;
 wire _0471_;
 wire _0472_;
 wire _0473_;
 wire _0474_;
 wire _0475_;
 wire _0476_;
 wire _0477_;
 wire _0478_;
 wire _0479_;
 wire _0480_;
 wire _0481_;
 wire _0482_;
 wire _0483_;
 wire _0484_;
 wire _0485_;
 wire _0486_;
 wire _0487_;
 wire _0488_;
 wire _0489_;
 wire _0490_;
 wire _0491_;
 wire _0492_;
 wire _0493_;
 wire _0494_;
 wire _0495_;
 wire _0496_;
 wire _0497_;
 wire _0498_;
 wire _0499_;
 wire _0500_;
 wire _0501_;
 wire _0502_;
 wire _0503_;
 wire _0504_;
 wire _0505_;
 wire _0506_;
 wire _0507_;
 wire _0508_;
 wire _0509_;
 wire _0510_;
 wire _0511_;
 wire _0512_;
 wire _0513_;
 wire _0514_;
 wire _0515_;
 wire _0516_;
 wire _0517_;
 wire _0518_;
 wire _0519_;
 wire _0520_;
 wire _0521_;
 wire _0522_;
 wire _0523_;
 wire _0524_;
 wire _0525_;
 wire _0526_;
 wire _0527_;
 wire _0528_;
 wire _0529_;
 wire _0530_;
 wire _0531_;
 wire _0532_;
 wire _0533_;
 wire _0534_;
 wire _0535_;
 wire _0536_;
 wire _0537_;
 wire _0538_;
 wire _0539_;
 wire _0540_;
 wire _0541_;
 wire _0542_;
 wire _0543_;
 wire _0544_;
 wire _0545_;
 wire _0546_;
 wire _0547_;
 wire _0548_;
 wire _0549_;
 wire _0550_;
 wire _0551_;
 wire _0552_;
 wire _0553_;
 wire _0554_;
 wire _0555_;
 wire _0556_;
 wire _0557_;
 wire _0558_;
 wire _0559_;
 wire _0560_;
 wire _0561_;
 wire _0562_;
 wire _0563_;
 wire _0564_;
 wire _0565_;
 wire _0566_;
 wire _0567_;
 wire _0568_;
 wire _0569_;
 wire _0570_;
 wire _0571_;
 wire _0572_;
 wire _0573_;
 wire _0574_;
 wire _0575_;
 wire _0576_;
 wire _0577_;
 wire _0578_;
 wire _0579_;
 wire _0580_;
 wire _0581_;
 wire _0582_;
 wire _0583_;
 wire _0584_;
 wire _0585_;
 wire _0586_;
 wire _0587_;
 wire _0588_;
 wire _0589_;
 wire _0590_;
 wire _0591_;
 wire _0592_;
 wire _0593_;
 wire _0594_;
 wire _0595_;
 wire _0596_;
 wire _0597_;
 wire _0598_;
 wire _0599_;
 wire _0600_;
 wire _0601_;
 wire _0602_;
 wire _0603_;
 wire _0604_;
 wire _0605_;
 wire _0606_;
 wire _0607_;
 wire _0608_;
 wire _0609_;
 wire _0610_;
 wire _0611_;
 wire _0612_;
 wire _0613_;
 wire _0614_;
 wire _0615_;
 wire _0616_;
 wire _0617_;
 wire _0618_;
 wire _0619_;
 wire _0620_;
 wire _0621_;
 wire _0622_;
 wire _0623_;
 wire _0624_;
 wire _0625_;
 wire _0626_;
 wire _0627_;
 wire _0628_;
 wire _0629_;
 wire _0630_;
 wire _0631_;
 wire _0632_;
 wire _0633_;
 wire _0634_;
 wire \cnn_mac_wrapper.core_inst.product[0] ;
 wire \cnn_mac_wrapper.core_inst.product[10] ;
 wire \cnn_mac_wrapper.core_inst.product[11] ;
 wire \cnn_mac_wrapper.core_inst.product[12] ;
 wire \cnn_mac_wrapper.core_inst.product[13] ;
 wire \cnn_mac_wrapper.core_inst.product[14] ;
 wire \cnn_mac_wrapper.core_inst.product[15] ;
 wire \cnn_mac_wrapper.core_inst.product[1] ;
 wire \cnn_mac_wrapper.core_inst.product[2] ;
 wire \cnn_mac_wrapper.core_inst.product[3] ;
 wire \cnn_mac_wrapper.core_inst.product[4] ;
 wire \cnn_mac_wrapper.core_inst.product[5] ;
 wire \cnn_mac_wrapper.core_inst.product[6] ;
 wire \cnn_mac_wrapper.core_inst.product[7] ;
 wire \cnn_mac_wrapper.core_inst.product[8] ;
 wire \cnn_mac_wrapper.core_inst.product[9] ;
 wire \cnn_mac_wrapper.last_pipe[0] ;
 wire \cnn_mac_wrapper.valid_pipe[0] ;

 sky130_fd_sc_hd__inv_2 _0635_ (.A(s_axis_tdata[14]),
    .Y(_0052_));
 sky130_fd_sc_hd__inv_2 _0636_ (.A(s_axis_tdata[7]),
    .Y(_0053_));
 sky130_fd_sc_hd__and2_2 _0637_ (.A(m_axis_tready),
    .B(s_axis_tvalid),
    .X(_0054_));
 sky130_fd_sc_hd__nand2_2 _0638_ (.A(m_axis_tready),
    .B(s_axis_tvalid),
    .Y(_0055_));
 sky130_fd_sc_hd__a31o_2 _0639_ (.A1(m_axis_tready),
    .A2(s_axis_tvalid),
    .A3(\cnn_mac_wrapper.core_inst.product[0] ),
    .B1(m_axis_tdata[0]),
    .X(_0056_));
 sky130_fd_sc_hd__nand2_2 _0640_ (.A(\cnn_mac_wrapper.core_inst.product[0] ),
    .B(m_axis_tdata[0]),
    .Y(_0057_));
 sky130_fd_sc_hd__o211a_2 _0641_ (.A1(_0055_),
    .A2(_0057_),
    .B1(_0056_),
    .C1(aresetn),
    .X(_0000_));
 sky130_fd_sc_hd__and2_2 _0642_ (.A(\cnn_mac_wrapper.core_inst.product[1] ),
    .B(m_axis_tdata[1]),
    .X(_0058_));
 sky130_fd_sc_hd__xor2_2 _0643_ (.A(\cnn_mac_wrapper.core_inst.product[1] ),
    .B(m_axis_tdata[1]),
    .X(_0059_));
 sky130_fd_sc_hd__xnor2_2 _0644_ (.A(_0057_),
    .B(_0059_),
    .Y(_0060_));
 sky130_fd_sc_hd__or2_2 _0645_ (.A(m_axis_tdata[1]),
    .B(_0054_),
    .X(_0061_));
 sky130_fd_sc_hd__o211a_2 _0646_ (.A1(_0055_),
    .A2(_0060_),
    .B1(_0061_),
    .C1(aresetn),
    .X(_0001_));
 sky130_fd_sc_hd__nand2_2 _0647_ (.A(\cnn_mac_wrapper.core_inst.product[2] ),
    .B(m_axis_tdata[2]),
    .Y(_0062_));
 sky130_fd_sc_hd__or2_2 _0648_ (.A(\cnn_mac_wrapper.core_inst.product[2] ),
    .B(m_axis_tdata[2]),
    .X(_0063_));
 sky130_fd_sc_hd__a31o_2 _0649_ (.A1(\cnn_mac_wrapper.core_inst.product[0] ),
    .A2(m_axis_tdata[0]),
    .A3(_0059_),
    .B1(_0058_),
    .X(_0064_));
 sky130_fd_sc_hd__and3_2 _0650_ (.A(_0062_),
    .B(_0063_),
    .C(_0064_),
    .X(_0065_));
 sky130_fd_sc_hd__a21oi_2 _0651_ (.A1(_0062_),
    .A2(_0063_),
    .B1(_0064_),
    .Y(_0066_));
 sky130_fd_sc_hd__o21ai_2 _0652_ (.A1(_0065_),
    .A2(_0066_),
    .B1(_0054_),
    .Y(_0067_));
 sky130_fd_sc_hd__o211a_2 _0653_ (.A1(m_axis_tdata[2]),
    .A2(_0054_),
    .B1(_0067_),
    .C1(aresetn),
    .X(_0002_));
 sky130_fd_sc_hd__nand2_2 _0654_ (.A(\cnn_mac_wrapper.core_inst.product[3] ),
    .B(m_axis_tdata[3]),
    .Y(_0068_));
 sky130_fd_sc_hd__or2_2 _0655_ (.A(\cnn_mac_wrapper.core_inst.product[3] ),
    .B(m_axis_tdata[3]),
    .X(_0069_));
 sky130_fd_sc_hd__a21bo_2 _0656_ (.A1(_0063_),
    .A2(_0064_),
    .B1_N(_0062_),
    .X(_0070_));
 sky130_fd_sc_hd__and3_2 _0657_ (.A(_0068_),
    .B(_0069_),
    .C(_0070_),
    .X(_0071_));
 sky130_fd_sc_hd__a21oi_2 _0658_ (.A1(_0068_),
    .A2(_0069_),
    .B1(_0070_),
    .Y(_0072_));
 sky130_fd_sc_hd__o21ai_2 _0659_ (.A1(_0071_),
    .A2(_0072_),
    .B1(_0054_),
    .Y(_0073_));
 sky130_fd_sc_hd__o211a_2 _0660_ (.A1(m_axis_tdata[3]),
    .A2(_0054_),
    .B1(_0073_),
    .C1(aresetn),
    .X(_0003_));
 sky130_fd_sc_hd__and2_2 _0661_ (.A(\cnn_mac_wrapper.core_inst.product[4] ),
    .B(m_axis_tdata[4]),
    .X(_0074_));
 sky130_fd_sc_hd__nor2_2 _0662_ (.A(\cnn_mac_wrapper.core_inst.product[4] ),
    .B(m_axis_tdata[4]),
    .Y(_0075_));
 sky130_fd_sc_hd__nor2_2 _0663_ (.A(_0074_),
    .B(_0075_),
    .Y(_0076_));
 sky130_fd_sc_hd__a21bo_2 _0664_ (.A1(_0069_),
    .A2(_0070_),
    .B1_N(_0068_),
    .X(_0077_));
 sky130_fd_sc_hd__xor2_2 _0665_ (.A(_0076_),
    .B(_0077_),
    .X(_0078_));
 sky130_fd_sc_hd__or2_2 _0666_ (.A(m_axis_tdata[4]),
    .B(_0054_),
    .X(_0079_));
 sky130_fd_sc_hd__o211a_2 _0667_ (.A1(_0055_),
    .A2(_0078_),
    .B1(_0079_),
    .C1(aresetn),
    .X(_0004_));
 sky130_fd_sc_hd__a21oi_2 _0668_ (.A1(_0076_),
    .A2(_0077_),
    .B1(_0074_),
    .Y(_0080_));
 sky130_fd_sc_hd__or2_2 _0669_ (.A(\cnn_mac_wrapper.core_inst.product[5] ),
    .B(m_axis_tdata[5]),
    .X(_0081_));
 sky130_fd_sc_hd__nand2_2 _0670_ (.A(\cnn_mac_wrapper.core_inst.product[5] ),
    .B(m_axis_tdata[5]),
    .Y(_0082_));
 sky130_fd_sc_hd__and3_2 _0671_ (.A(_0080_),
    .B(_0081_),
    .C(_0082_),
    .X(_0083_));
 sky130_fd_sc_hd__a21oi_2 _0672_ (.A1(_0081_),
    .A2(_0082_),
    .B1(_0080_),
    .Y(_0084_));
 sky130_fd_sc_hd__or2_2 _0673_ (.A(m_axis_tdata[5]),
    .B(_0054_),
    .X(_0085_));
 sky130_fd_sc_hd__o311a_2 _0674_ (.A1(_0055_),
    .A2(_0083_),
    .A3(_0084_),
    .B1(_0085_),
    .C1(aresetn),
    .X(_0005_));
 sky130_fd_sc_hd__and2_2 _0675_ (.A(\cnn_mac_wrapper.core_inst.product[6] ),
    .B(m_axis_tdata[6]),
    .X(_0086_));
 sky130_fd_sc_hd__or2_2 _0676_ (.A(\cnn_mac_wrapper.core_inst.product[6] ),
    .B(m_axis_tdata[6]),
    .X(_0087_));
 sky130_fd_sc_hd__nand2b_2 _0677_ (.A_N(_0086_),
    .B(_0087_),
    .Y(_0088_));
 sky130_fd_sc_hd__a221o_2 _0678_ (.A1(\cnn_mac_wrapper.core_inst.product[5] ),
    .A2(m_axis_tdata[5]),
    .B1(_0076_),
    .B2(_0077_),
    .C1(_0074_),
    .X(_0089_));
 sky130_fd_sc_hd__nand2_2 _0679_ (.A(_0081_),
    .B(_0089_),
    .Y(_0090_));
 sky130_fd_sc_hd__xnor2_2 _0680_ (.A(_0088_),
    .B(_0090_),
    .Y(_0091_));
 sky130_fd_sc_hd__nand2_2 _0681_ (.A(_0054_),
    .B(_0091_),
    .Y(_0092_));
 sky130_fd_sc_hd__o211a_2 _0682_ (.A1(m_axis_tdata[6]),
    .A2(_0054_),
    .B1(_0092_),
    .C1(aresetn),
    .X(_0006_));
 sky130_fd_sc_hd__nand2_2 _0683_ (.A(\cnn_mac_wrapper.core_inst.product[7] ),
    .B(m_axis_tdata[7]),
    .Y(_0093_));
 sky130_fd_sc_hd__or2_2 _0684_ (.A(\cnn_mac_wrapper.core_inst.product[7] ),
    .B(m_axis_tdata[7]),
    .X(_0094_));
 sky130_fd_sc_hd__nand2_2 _0685_ (.A(_0093_),
    .B(_0094_),
    .Y(_0095_));
 sky130_fd_sc_hd__a31o_2 _0686_ (.A1(_0081_),
    .A2(_0087_),
    .A3(_0089_),
    .B1(_0086_),
    .X(_0096_));
 sky130_fd_sc_hd__xnor2_2 _0687_ (.A(_0095_),
    .B(_0096_),
    .Y(_0097_));
 sky130_fd_sc_hd__or2_2 _0688_ (.A(m_axis_tdata[7]),
    .B(_0054_),
    .X(_0098_));
 sky130_fd_sc_hd__o211a_2 _0689_ (.A1(_0055_),
    .A2(_0097_),
    .B1(_0098_),
    .C1(aresetn),
    .X(_0007_));
 sky130_fd_sc_hd__a21bo_2 _0690_ (.A1(_0094_),
    .A2(_0096_),
    .B1_N(_0093_),
    .X(_0099_));
 sky130_fd_sc_hd__or2_2 _0691_ (.A(\cnn_mac_wrapper.core_inst.product[8] ),
    .B(m_axis_tdata[8]),
    .X(_0100_));
 sky130_fd_sc_hd__nand2_2 _0692_ (.A(\cnn_mac_wrapper.core_inst.product[8] ),
    .B(m_axis_tdata[8]),
    .Y(_0101_));
 sky130_fd_sc_hd__and2_2 _0693_ (.A(_0100_),
    .B(_0101_),
    .X(_0102_));
 sky130_fd_sc_hd__xnor2_2 _0694_ (.A(_0099_),
    .B(_0102_),
    .Y(_0103_));
 sky130_fd_sc_hd__nand2_2 _0695_ (.A(_0054_),
    .B(_0103_),
    .Y(_0104_));
 sky130_fd_sc_hd__o211a_2 _0696_ (.A1(m_axis_tdata[8]),
    .A2(_0054_),
    .B1(_0104_),
    .C1(aresetn),
    .X(_0008_));
 sky130_fd_sc_hd__nor2_2 _0697_ (.A(\cnn_mac_wrapper.core_inst.product[9] ),
    .B(m_axis_tdata[9]),
    .Y(_0105_));
 sky130_fd_sc_hd__nand2_2 _0698_ (.A(\cnn_mac_wrapper.core_inst.product[9] ),
    .B(m_axis_tdata[9]),
    .Y(_0106_));
 sky130_fd_sc_hd__and2b_2 _0699_ (.A_N(_0105_),
    .B(_0106_),
    .X(_0107_));
 sky130_fd_sc_hd__a21boi_2 _0700_ (.A1(_0099_),
    .A2(_0102_),
    .B1_N(_0101_),
    .Y(_0108_));
 sky130_fd_sc_hd__o21ai_2 _0701_ (.A1(_0107_),
    .A2(_0108_),
    .B1(_0054_),
    .Y(_0109_));
 sky130_fd_sc_hd__a21o_2 _0702_ (.A1(_0107_),
    .A2(_0108_),
    .B1(_0109_),
    .X(_0110_));
 sky130_fd_sc_hd__o211a_2 _0703_ (.A1(m_axis_tdata[9]),
    .A2(_0054_),
    .B1(_0110_),
    .C1(aresetn),
    .X(_0009_));
 sky130_fd_sc_hd__nor2_2 _0704_ (.A(\cnn_mac_wrapper.core_inst.product[10] ),
    .B(m_axis_tdata[10]),
    .Y(_0111_));
 sky130_fd_sc_hd__and2_2 _0705_ (.A(\cnn_mac_wrapper.core_inst.product[10] ),
    .B(m_axis_tdata[10]),
    .X(_0112_));
 sky130_fd_sc_hd__nor2_2 _0706_ (.A(_0111_),
    .B(_0112_),
    .Y(_0113_));
 sky130_fd_sc_hd__and2_2 _0707_ (.A(_0102_),
    .B(_0107_),
    .X(_0114_));
 sky130_fd_sc_hd__a21oi_2 _0708_ (.A1(_0101_),
    .A2(_0106_),
    .B1(_0105_),
    .Y(_0115_));
 sky130_fd_sc_hd__a21oi_2 _0709_ (.A1(_0099_),
    .A2(_0114_),
    .B1(_0115_),
    .Y(_0116_));
 sky130_fd_sc_hd__xnor2_2 _0710_ (.A(_0113_),
    .B(_0116_),
    .Y(_0117_));
 sky130_fd_sc_hd__or2_2 _0711_ (.A(m_axis_tdata[10]),
    .B(_0054_),
    .X(_0118_));
 sky130_fd_sc_hd__o211a_2 _0712_ (.A1(_0055_),
    .A2(_0117_),
    .B1(_0118_),
    .C1(aresetn),
    .X(_0010_));
 sky130_fd_sc_hd__or2_2 _0713_ (.A(\cnn_mac_wrapper.core_inst.product[11] ),
    .B(m_axis_tdata[11]),
    .X(_0119_));
 sky130_fd_sc_hd__and2_2 _0714_ (.A(\cnn_mac_wrapper.core_inst.product[11] ),
    .B(m_axis_tdata[11]),
    .X(_0120_));
 sky130_fd_sc_hd__nand2_2 _0715_ (.A(\cnn_mac_wrapper.core_inst.product[11] ),
    .B(m_axis_tdata[11]),
    .Y(_0121_));
 sky130_fd_sc_hd__nand2_2 _0716_ (.A(_0119_),
    .B(_0121_),
    .Y(_0122_));
 sky130_fd_sc_hd__o21bai_2 _0717_ (.A1(_0111_),
    .A2(_0116_),
    .B1_N(_0112_),
    .Y(_0123_));
 sky130_fd_sc_hd__xnor2_2 _0718_ (.A(_0122_),
    .B(_0123_),
    .Y(_0124_));
 sky130_fd_sc_hd__or2_2 _0719_ (.A(m_axis_tdata[11]),
    .B(_0054_),
    .X(_0125_));
 sky130_fd_sc_hd__o211a_2 _0720_ (.A1(_0055_),
    .A2(_0124_),
    .B1(_0125_),
    .C1(aresetn),
    .X(_0011_));
 sky130_fd_sc_hd__or2_2 _0721_ (.A(\cnn_mac_wrapper.core_inst.product[12] ),
    .B(m_axis_tdata[12]),
    .X(_0126_));
 sky130_fd_sc_hd__nand2_2 _0722_ (.A(\cnn_mac_wrapper.core_inst.product[12] ),
    .B(m_axis_tdata[12]),
    .Y(_0127_));
 sky130_fd_sc_hd__nand2_2 _0723_ (.A(_0126_),
    .B(_0127_),
    .Y(_0128_));
 sky130_fd_sc_hd__a211o_2 _0724_ (.A1(_0112_),
    .A2(_0119_),
    .B1(_0120_),
    .C1(_0115_),
    .X(_0129_));
 sky130_fd_sc_hd__a21oi_2 _0725_ (.A1(_0099_),
    .A2(_0114_),
    .B1(_0129_),
    .Y(_0130_));
 sky130_fd_sc_hd__a21bo_2 _0726_ (.A1(_0111_),
    .A2(_0121_),
    .B1_N(_0119_),
    .X(_0131_));
 sky130_fd_sc_hd__or2_2 _0727_ (.A(_0130_),
    .B(_0131_),
    .X(_0132_));
 sky130_fd_sc_hd__or2_2 _0728_ (.A(_0128_),
    .B(_0132_),
    .X(_0133_));
 sky130_fd_sc_hd__nand2_2 _0729_ (.A(_0128_),
    .B(_0132_),
    .Y(_0134_));
 sky130_fd_sc_hd__a21o_2 _0730_ (.A1(_0133_),
    .A2(_0134_),
    .B1(_0055_),
    .X(_0135_));
 sky130_fd_sc_hd__o211a_2 _0731_ (.A1(m_axis_tdata[12]),
    .A2(_0054_),
    .B1(_0135_),
    .C1(aresetn),
    .X(_0012_));
 sky130_fd_sc_hd__xor2_2 _0732_ (.A(\cnn_mac_wrapper.core_inst.product[13] ),
    .B(m_axis_tdata[13]),
    .X(_0136_));
 sky130_fd_sc_hd__o21a_2 _0733_ (.A1(_0128_),
    .A2(_0132_),
    .B1(_0127_),
    .X(_0137_));
 sky130_fd_sc_hd__and2_2 _0734_ (.A(_0136_),
    .B(_0137_),
    .X(_0138_));
 sky130_fd_sc_hd__o21ai_2 _0735_ (.A1(_0136_),
    .A2(_0137_),
    .B1(_0054_),
    .Y(_0139_));
 sky130_fd_sc_hd__o221a_2 _0736_ (.A1(m_axis_tdata[13]),
    .A2(_0054_),
    .B1(_0138_),
    .B2(_0139_),
    .C1(aresetn),
    .X(_0013_));
 sky130_fd_sc_hd__or2_2 _0737_ (.A(\cnn_mac_wrapper.core_inst.product[14] ),
    .B(m_axis_tdata[14]),
    .X(_0140_));
 sky130_fd_sc_hd__nand2_2 _0738_ (.A(\cnn_mac_wrapper.core_inst.product[14] ),
    .B(m_axis_tdata[14]),
    .Y(_0141_));
 sky130_fd_sc_hd__nand2_2 _0739_ (.A(_0140_),
    .B(_0141_),
    .Y(_0142_));
 sky130_fd_sc_hd__a22o_2 _0740_ (.A1(\cnn_mac_wrapper.core_inst.product[13] ),
    .A2(m_axis_tdata[13]),
    .B1(m_axis_tdata[12]),
    .B2(\cnn_mac_wrapper.core_inst.product[12] ),
    .X(_0143_));
 sky130_fd_sc_hd__o21ai_2 _0741_ (.A1(\cnn_mac_wrapper.core_inst.product[13] ),
    .A2(m_axis_tdata[13]),
    .B1(_0143_),
    .Y(_0144_));
 sky130_fd_sc_hd__nand2b_2 _0742_ (.A_N(_0128_),
    .B(_0136_),
    .Y(_0145_));
 sky130_fd_sc_hd__o21ai_2 _0743_ (.A1(_0132_),
    .A2(_0145_),
    .B1(_0144_),
    .Y(_0146_));
 sky130_fd_sc_hd__xnor2_2 _0744_ (.A(_0142_),
    .B(_0146_),
    .Y(_0147_));
 sky130_fd_sc_hd__or2_2 _0745_ (.A(m_axis_tdata[14]),
    .B(_0054_),
    .X(_0148_));
 sky130_fd_sc_hd__o211a_2 _0746_ (.A1(_0055_),
    .A2(_0147_),
    .B1(_0148_),
    .C1(aresetn),
    .X(_0014_));
 sky130_fd_sc_hd__nor2_2 _0747_ (.A(\cnn_mac_wrapper.core_inst.product[15] ),
    .B(m_axis_tdata[15]),
    .Y(_0149_));
 sky130_fd_sc_hd__and2_2 _0748_ (.A(\cnn_mac_wrapper.core_inst.product[15] ),
    .B(m_axis_tdata[15]),
    .X(_0150_));
 sky130_fd_sc_hd__or2_2 _0749_ (.A(_0149_),
    .B(_0150_),
    .X(_0151_));
 sky130_fd_sc_hd__a21bo_2 _0750_ (.A1(_0140_),
    .A2(_0146_),
    .B1_N(_0141_),
    .X(_0152_));
 sky130_fd_sc_hd__xnor2_2 _0751_ (.A(_0151_),
    .B(_0152_),
    .Y(_0153_));
 sky130_fd_sc_hd__or2_2 _0752_ (.A(m_axis_tdata[15]),
    .B(_0054_),
    .X(_0154_));
 sky130_fd_sc_hd__o211a_2 _0753_ (.A1(_0055_),
    .A2(_0153_),
    .B1(_0154_),
    .C1(aresetn),
    .X(_0015_));
 sky130_fd_sc_hd__or2_2 _0754_ (.A(_0142_),
    .B(_0151_),
    .X(_0155_));
 sky130_fd_sc_hd__or2_2 _0755_ (.A(_0145_),
    .B(_0155_),
    .X(_0156_));
 sky130_fd_sc_hd__o21ba_2 _0756_ (.A1(_0141_),
    .A2(_0149_),
    .B1_N(_0150_),
    .X(_0157_));
 sky130_fd_sc_hd__or2_2 _0757_ (.A(_0144_),
    .B(_0155_),
    .X(_0158_));
 sky130_fd_sc_hd__o31a_2 _0758_ (.A1(_0130_),
    .A2(_0131_),
    .A3(_0156_),
    .B1(_0158_),
    .X(_0159_));
 sky130_fd_sc_hd__nand2_2 _0759_ (.A(_0157_),
    .B(_0159_),
    .Y(_0160_));
 sky130_fd_sc_hd__nor2_2 _0760_ (.A(\cnn_mac_wrapper.core_inst.product[15] ),
    .B(m_axis_tdata[16]),
    .Y(_0161_));
 sky130_fd_sc_hd__and2_2 _0761_ (.A(\cnn_mac_wrapper.core_inst.product[15] ),
    .B(m_axis_tdata[16]),
    .X(_0162_));
 sky130_fd_sc_hd__nor2_2 _0762_ (.A(_0161_),
    .B(_0162_),
    .Y(_0163_));
 sky130_fd_sc_hd__nand2_2 _0763_ (.A(_0160_),
    .B(_0163_),
    .Y(_0164_));
 sky130_fd_sc_hd__or2_2 _0764_ (.A(_0160_),
    .B(_0163_),
    .X(_0165_));
 sky130_fd_sc_hd__a21o_2 _0765_ (.A1(_0164_),
    .A2(_0165_),
    .B1(_0055_),
    .X(_0166_));
 sky130_fd_sc_hd__o211a_2 _0766_ (.A1(m_axis_tdata[16]),
    .A2(_0054_),
    .B1(_0166_),
    .C1(aresetn),
    .X(_0016_));
 sky130_fd_sc_hd__xor2_2 _0767_ (.A(\cnn_mac_wrapper.core_inst.product[15] ),
    .B(m_axis_tdata[17]),
    .X(_0167_));
 sky130_fd_sc_hd__a21o_2 _0768_ (.A1(_0160_),
    .A2(_0163_),
    .B1(_0162_),
    .X(_0168_));
 sky130_fd_sc_hd__xor2_2 _0769_ (.A(_0167_),
    .B(_0168_),
    .X(_0169_));
 sky130_fd_sc_hd__or2_2 _0770_ (.A(m_axis_tdata[17]),
    .B(_0054_),
    .X(_0170_));
 sky130_fd_sc_hd__o211a_2 _0771_ (.A1(_0055_),
    .A2(_0169_),
    .B1(_0170_),
    .C1(aresetn),
    .X(_0017_));
 sky130_fd_sc_hd__or2_2 _0772_ (.A(\cnn_mac_wrapper.core_inst.product[15] ),
    .B(m_axis_tdata[18]),
    .X(_0171_));
 sky130_fd_sc_hd__nand2_2 _0773_ (.A(\cnn_mac_wrapper.core_inst.product[15] ),
    .B(m_axis_tdata[18]),
    .Y(_0172_));
 sky130_fd_sc_hd__nand2_2 _0774_ (.A(_0171_),
    .B(_0172_),
    .Y(_0173_));
 sky130_fd_sc_hd__nand2_2 _0775_ (.A(_0163_),
    .B(_0167_),
    .Y(_0174_));
 sky130_fd_sc_hd__a21o_2 _0776_ (.A1(_0157_),
    .A2(_0159_),
    .B1(_0174_),
    .X(_0175_));
 sky130_fd_sc_hd__o21ai_2 _0777_ (.A1(m_axis_tdata[17]),
    .A2(m_axis_tdata[16]),
    .B1(\cnn_mac_wrapper.core_inst.product[15] ),
    .Y(_0176_));
 sky130_fd_sc_hd__a21o_2 _0778_ (.A1(_0175_),
    .A2(_0176_),
    .B1(_0173_),
    .X(_0177_));
 sky130_fd_sc_hd__nand3_2 _0779_ (.A(_0173_),
    .B(_0175_),
    .C(_0176_),
    .Y(_0178_));
 sky130_fd_sc_hd__and2_2 _0780_ (.A(_0177_),
    .B(_0178_),
    .X(_0179_));
 sky130_fd_sc_hd__or2_2 _0781_ (.A(m_axis_tdata[18]),
    .B(_0054_),
    .X(_0180_));
 sky130_fd_sc_hd__o211a_2 _0782_ (.A1(_0055_),
    .A2(_0179_),
    .B1(_0180_),
    .C1(aresetn),
    .X(_0018_));
 sky130_fd_sc_hd__xor2_2 _0783_ (.A(\cnn_mac_wrapper.core_inst.product[15] ),
    .B(m_axis_tdata[19]),
    .X(_0181_));
 sky130_fd_sc_hd__a21oi_2 _0784_ (.A1(_0172_),
    .A2(_0177_),
    .B1(_0181_),
    .Y(_0182_));
 sky130_fd_sc_hd__a31o_2 _0785_ (.A1(_0172_),
    .A2(_0177_),
    .A3(_0181_),
    .B1(_0055_),
    .X(_0183_));
 sky130_fd_sc_hd__o221a_2 _0786_ (.A1(m_axis_tdata[19]),
    .A2(_0054_),
    .B1(_0182_),
    .B2(_0183_),
    .C1(aresetn),
    .X(_0019_));
 sky130_fd_sc_hd__or2_2 _0787_ (.A(\cnn_mac_wrapper.core_inst.product[15] ),
    .B(m_axis_tdata[20]),
    .X(_0184_));
 sky130_fd_sc_hd__nand2_2 _0788_ (.A(\cnn_mac_wrapper.core_inst.product[15] ),
    .B(m_axis_tdata[20]),
    .Y(_0185_));
 sky130_fd_sc_hd__nand2_2 _0789_ (.A(_0184_),
    .B(_0185_),
    .Y(_0186_));
 sky130_fd_sc_hd__o41a_2 _0790_ (.A1(m_axis_tdata[19]),
    .A2(m_axis_tdata[18]),
    .A3(m_axis_tdata[17]),
    .A4(m_axis_tdata[16]),
    .B1(\cnn_mac_wrapper.core_inst.product[15] ),
    .X(_0187_));
 sky130_fd_sc_hd__inv_2 _0791_ (.A(_0187_),
    .Y(_0188_));
 sky130_fd_sc_hd__nand2b_2 _0792_ (.A_N(_0173_),
    .B(_0181_),
    .Y(_0189_));
 sky130_fd_sc_hd__or2_2 _0793_ (.A(_0175_),
    .B(_0189_),
    .X(_0190_));
 sky130_fd_sc_hd__a21oi_2 _0794_ (.A1(_0188_),
    .A2(_0190_),
    .B1(_0186_),
    .Y(_0191_));
 sky130_fd_sc_hd__a21o_2 _0795_ (.A1(_0188_),
    .A2(_0190_),
    .B1(_0186_),
    .X(_0192_));
 sky130_fd_sc_hd__and3_2 _0796_ (.A(_0186_),
    .B(_0188_),
    .C(_0190_),
    .X(_0193_));
 sky130_fd_sc_hd__o21ai_2 _0797_ (.A1(_0191_),
    .A2(_0193_),
    .B1(_0054_),
    .Y(_0194_));
 sky130_fd_sc_hd__o211a_2 _0798_ (.A1(m_axis_tdata[20]),
    .A2(_0054_),
    .B1(_0194_),
    .C1(aresetn),
    .X(_0020_));
 sky130_fd_sc_hd__xor2_2 _0799_ (.A(\cnn_mac_wrapper.core_inst.product[15] ),
    .B(m_axis_tdata[21]),
    .X(_0195_));
 sky130_fd_sc_hd__inv_2 _0800_ (.A(_0195_),
    .Y(_0196_));
 sky130_fd_sc_hd__a21oi_2 _0801_ (.A1(_0185_),
    .A2(_0192_),
    .B1(_0195_),
    .Y(_0197_));
 sky130_fd_sc_hd__a31o_2 _0802_ (.A1(_0185_),
    .A2(_0192_),
    .A3(_0195_),
    .B1(_0055_),
    .X(_0198_));
 sky130_fd_sc_hd__o221a_2 _0803_ (.A1(m_axis_tdata[21]),
    .A2(_0054_),
    .B1(_0197_),
    .B2(_0198_),
    .C1(aresetn),
    .X(_0021_));
 sky130_fd_sc_hd__or2_2 _0804_ (.A(\cnn_mac_wrapper.core_inst.product[15] ),
    .B(m_axis_tdata[22]),
    .X(_0199_));
 sky130_fd_sc_hd__nand2_2 _0805_ (.A(\cnn_mac_wrapper.core_inst.product[15] ),
    .B(m_axis_tdata[22]),
    .Y(_0200_));
 sky130_fd_sc_hd__nand2_2 _0806_ (.A(_0199_),
    .B(_0200_),
    .Y(_0201_));
 sky130_fd_sc_hd__o21a_2 _0807_ (.A1(m_axis_tdata[21]),
    .A2(m_axis_tdata[20]),
    .B1(\cnn_mac_wrapper.core_inst.product[15] ),
    .X(_0202_));
 sky130_fd_sc_hd__a21o_2 _0808_ (.A1(_0191_),
    .A2(_0195_),
    .B1(_0202_),
    .X(_0203_));
 sky130_fd_sc_hd__xnor2_2 _0809_ (.A(_0201_),
    .B(_0203_),
    .Y(_0204_));
 sky130_fd_sc_hd__or2_2 _0810_ (.A(m_axis_tdata[22]),
    .B(_0054_),
    .X(_0205_));
 sky130_fd_sc_hd__o211a_2 _0811_ (.A1(_0055_),
    .A2(_0204_),
    .B1(_0205_),
    .C1(aresetn),
    .X(_0022_));
 sky130_fd_sc_hd__xor2_2 _0812_ (.A(\cnn_mac_wrapper.core_inst.product[15] ),
    .B(m_axis_tdata[23]),
    .X(_0206_));
 sky130_fd_sc_hd__a21bo_2 _0813_ (.A1(_0199_),
    .A2(_0203_),
    .B1_N(_0200_),
    .X(_0207_));
 sky130_fd_sc_hd__xor2_2 _0814_ (.A(_0206_),
    .B(_0207_),
    .X(_0208_));
 sky130_fd_sc_hd__or2_2 _0815_ (.A(m_axis_tdata[23]),
    .B(_0054_),
    .X(_0209_));
 sky130_fd_sc_hd__o211a_2 _0816_ (.A1(_0055_),
    .A2(_0208_),
    .B1(_0209_),
    .C1(aresetn),
    .X(_0023_));
 sky130_fd_sc_hd__or4b_2 _0817_ (.A(_0186_),
    .B(_0196_),
    .C(_0201_),
    .D_N(_0206_),
    .X(_0210_));
 sky130_fd_sc_hd__or3_2 _0818_ (.A(_0174_),
    .B(_0189_),
    .C(_0210_),
    .X(_0211_));
 sky130_fd_sc_hd__a21oi_2 _0819_ (.A1(_0157_),
    .A2(_0159_),
    .B1(_0211_),
    .Y(_0212_));
 sky130_fd_sc_hd__o41a_2 _0820_ (.A1(m_axis_tdata[23]),
    .A2(m_axis_tdata[22]),
    .A3(m_axis_tdata[21]),
    .A4(m_axis_tdata[20]),
    .B1(\cnn_mac_wrapper.core_inst.product[15] ),
    .X(_0213_));
 sky130_fd_sc_hd__or3_2 _0821_ (.A(_0187_),
    .B(_0212_),
    .C(_0213_),
    .X(_0214_));
 sky130_fd_sc_hd__or2_2 _0822_ (.A(\cnn_mac_wrapper.core_inst.product[15] ),
    .B(m_axis_tdata[24]),
    .X(_0215_));
 sky130_fd_sc_hd__nand2_2 _0823_ (.A(\cnn_mac_wrapper.core_inst.product[15] ),
    .B(m_axis_tdata[24]),
    .Y(_0216_));
 sky130_fd_sc_hd__and2_2 _0824_ (.A(_0215_),
    .B(_0216_),
    .X(_0217_));
 sky130_fd_sc_hd__o31a_2 _0825_ (.A1(_0187_),
    .A2(_0212_),
    .A3(_0213_),
    .B1(_0217_),
    .X(_0218_));
 sky130_fd_sc_hd__nand2_2 _0826_ (.A(_0214_),
    .B(_0217_),
    .Y(_0219_));
 sky130_fd_sc_hd__nor2_2 _0827_ (.A(_0214_),
    .B(_0217_),
    .Y(_0220_));
 sky130_fd_sc_hd__o21ai_2 _0828_ (.A1(_0218_),
    .A2(_0220_),
    .B1(_0054_),
    .Y(_0221_));
 sky130_fd_sc_hd__o211a_2 _0829_ (.A1(m_axis_tdata[24]),
    .A2(_0054_),
    .B1(_0221_),
    .C1(aresetn),
    .X(_0024_));
 sky130_fd_sc_hd__xor2_2 _0830_ (.A(\cnn_mac_wrapper.core_inst.product[15] ),
    .B(m_axis_tdata[25]),
    .X(_0222_));
 sky130_fd_sc_hd__a21oi_2 _0831_ (.A1(_0216_),
    .A2(_0219_),
    .B1(_0222_),
    .Y(_0223_));
 sky130_fd_sc_hd__a31o_2 _0832_ (.A1(_0216_),
    .A2(_0219_),
    .A3(_0222_),
    .B1(_0055_),
    .X(_0224_));
 sky130_fd_sc_hd__o221a_2 _0833_ (.A1(m_axis_tdata[25]),
    .A2(_0054_),
    .B1(_0223_),
    .B2(_0224_),
    .C1(aresetn),
    .X(_0025_));
 sky130_fd_sc_hd__or2_2 _0834_ (.A(\cnn_mac_wrapper.core_inst.product[15] ),
    .B(m_axis_tdata[26]),
    .X(_0225_));
 sky130_fd_sc_hd__nand2_2 _0835_ (.A(\cnn_mac_wrapper.core_inst.product[15] ),
    .B(m_axis_tdata[26]),
    .Y(_0226_));
 sky130_fd_sc_hd__nand2_2 _0836_ (.A(_0225_),
    .B(_0226_),
    .Y(_0227_));
 sky130_fd_sc_hd__inv_2 _0837_ (.A(_0227_),
    .Y(_0228_));
 sky130_fd_sc_hd__o21a_2 _0838_ (.A1(m_axis_tdata[25]),
    .A2(m_axis_tdata[24]),
    .B1(\cnn_mac_wrapper.core_inst.product[15] ),
    .X(_0229_));
 sky130_fd_sc_hd__a21o_2 _0839_ (.A1(_0218_),
    .A2(_0222_),
    .B1(_0229_),
    .X(_0230_));
 sky130_fd_sc_hd__xnor2_2 _0840_ (.A(_0227_),
    .B(_0230_),
    .Y(_0231_));
 sky130_fd_sc_hd__or2_2 _0841_ (.A(m_axis_tdata[26]),
    .B(_0054_),
    .X(_0232_));
 sky130_fd_sc_hd__o211a_2 _0842_ (.A1(_0055_),
    .A2(_0231_),
    .B1(_0232_),
    .C1(aresetn),
    .X(_0026_));
 sky130_fd_sc_hd__xor2_2 _0843_ (.A(\cnn_mac_wrapper.core_inst.product[15] ),
    .B(m_axis_tdata[27]),
    .X(_0233_));
 sky130_fd_sc_hd__a21boi_2 _0844_ (.A1(_0228_),
    .A2(_0230_),
    .B1_N(_0226_),
    .Y(_0234_));
 sky130_fd_sc_hd__and2_2 _0845_ (.A(_0233_),
    .B(_0234_),
    .X(_0235_));
 sky130_fd_sc_hd__nor2_2 _0846_ (.A(_0233_),
    .B(_0234_),
    .Y(_0236_));
 sky130_fd_sc_hd__or2_2 _0847_ (.A(m_axis_tdata[27]),
    .B(_0054_),
    .X(_0237_));
 sky130_fd_sc_hd__o311a_2 _0848_ (.A1(_0055_),
    .A2(_0235_),
    .A3(_0236_),
    .B1(_0237_),
    .C1(aresetn),
    .X(_0027_));
 sky130_fd_sc_hd__o41a_2 _0849_ (.A1(m_axis_tdata[27]),
    .A2(m_axis_tdata[26]),
    .A3(m_axis_tdata[25]),
    .A4(m_axis_tdata[24]),
    .B1(\cnn_mac_wrapper.core_inst.product[15] ),
    .X(_0238_));
 sky130_fd_sc_hd__a41o_2 _0850_ (.A1(_0218_),
    .A2(_0222_),
    .A3(_0228_),
    .A4(_0233_),
    .B1(_0238_),
    .X(_0239_));
 sky130_fd_sc_hd__or2_2 _0851_ (.A(\cnn_mac_wrapper.core_inst.product[15] ),
    .B(m_axis_tdata[28]),
    .X(_0240_));
 sky130_fd_sc_hd__nand2_2 _0852_ (.A(\cnn_mac_wrapper.core_inst.product[15] ),
    .B(m_axis_tdata[28]),
    .Y(_0241_));
 sky130_fd_sc_hd__and2_2 _0853_ (.A(_0240_),
    .B(_0241_),
    .X(_0242_));
 sky130_fd_sc_hd__nand2_2 _0854_ (.A(_0239_),
    .B(_0242_),
    .Y(_0243_));
 sky130_fd_sc_hd__or2_2 _0855_ (.A(_0239_),
    .B(_0242_),
    .X(_0244_));
 sky130_fd_sc_hd__a21o_2 _0856_ (.A1(_0243_),
    .A2(_0244_),
    .B1(_0055_),
    .X(_0245_));
 sky130_fd_sc_hd__o211a_2 _0857_ (.A1(m_axis_tdata[28]),
    .A2(_0054_),
    .B1(_0245_),
    .C1(aresetn),
    .X(_0028_));
 sky130_fd_sc_hd__xor2_2 _0858_ (.A(\cnn_mac_wrapper.core_inst.product[15] ),
    .B(m_axis_tdata[29]),
    .X(_0246_));
 sky130_fd_sc_hd__a21oi_2 _0859_ (.A1(_0241_),
    .A2(_0243_),
    .B1(_0246_),
    .Y(_0247_));
 sky130_fd_sc_hd__a31o_2 _0860_ (.A1(_0241_),
    .A2(_0243_),
    .A3(_0246_),
    .B1(_0055_),
    .X(_0248_));
 sky130_fd_sc_hd__o221a_2 _0861_ (.A1(m_axis_tdata[29]),
    .A2(_0054_),
    .B1(_0247_),
    .B2(_0248_),
    .C1(aresetn),
    .X(_0029_));
 sky130_fd_sc_hd__nand2_2 _0862_ (.A(\cnn_mac_wrapper.core_inst.product[15] ),
    .B(m_axis_tdata[30]),
    .Y(_0249_));
 sky130_fd_sc_hd__or2_2 _0863_ (.A(\cnn_mac_wrapper.core_inst.product[15] ),
    .B(m_axis_tdata[30]),
    .X(_0250_));
 sky130_fd_sc_hd__nand2_2 _0864_ (.A(_0249_),
    .B(_0250_),
    .Y(_0251_));
 sky130_fd_sc_hd__o21a_2 _0865_ (.A1(m_axis_tdata[29]),
    .A2(m_axis_tdata[28]),
    .B1(\cnn_mac_wrapper.core_inst.product[15] ),
    .X(_0252_));
 sky130_fd_sc_hd__a31o_2 _0866_ (.A1(_0239_),
    .A2(_0242_),
    .A3(_0246_),
    .B1(_0252_),
    .X(_0253_));
 sky130_fd_sc_hd__xnor2_2 _0867_ (.A(_0251_),
    .B(_0253_),
    .Y(_0254_));
 sky130_fd_sc_hd__or2_2 _0868_ (.A(m_axis_tdata[30]),
    .B(_0054_),
    .X(_0255_));
 sky130_fd_sc_hd__o211a_2 _0869_ (.A1(_0055_),
    .A2(_0254_),
    .B1(_0255_),
    .C1(aresetn),
    .X(_0030_));
 sky130_fd_sc_hd__a21boi_2 _0870_ (.A1(_0250_),
    .A2(_0253_),
    .B1_N(_0249_),
    .Y(_0256_));
 sky130_fd_sc_hd__or2_2 _0871_ (.A(\cnn_mac_wrapper.core_inst.product[15] ),
    .B(m_axis_tdata[31]),
    .X(_0257_));
 sky130_fd_sc_hd__nand2_2 _0872_ (.A(\cnn_mac_wrapper.core_inst.product[15] ),
    .B(m_axis_tdata[31]),
    .Y(_0258_));
 sky130_fd_sc_hd__a21oi_2 _0873_ (.A1(_0257_),
    .A2(_0258_),
    .B1(_0256_),
    .Y(_0259_));
 sky130_fd_sc_hd__a31o_2 _0874_ (.A1(_0256_),
    .A2(_0257_),
    .A3(_0258_),
    .B1(_0055_),
    .X(_0260_));
 sky130_fd_sc_hd__o221a_2 _0875_ (.A1(m_axis_tdata[31]),
    .A2(_0054_),
    .B1(_0259_),
    .B2(_0260_),
    .C1(aresetn),
    .X(_0031_));
 sky130_fd_sc_hd__a21o_2 _0876_ (.A1(s_axis_tdata[0]),
    .A2(s_axis_tdata[8]),
    .B1(_0055_),
    .X(_0261_));
 sky130_fd_sc_hd__o211a_2 _0877_ (.A1(\cnn_mac_wrapper.core_inst.product[0] ),
    .A2(_0054_),
    .B1(_0261_),
    .C1(aresetn),
    .X(_0032_));
 sky130_fd_sc_hd__a22o_2 _0878_ (.A1(s_axis_tdata[0]),
    .A2(s_axis_tdata[9]),
    .B1(s_axis_tdata[8]),
    .B2(s_axis_tdata[1]),
    .X(_0262_));
 sky130_fd_sc_hd__and3_2 _0879_ (.A(s_axis_tdata[0]),
    .B(s_axis_tdata[1]),
    .C(s_axis_tdata[9]),
    .X(_0263_));
 sky130_fd_sc_hd__nand2_2 _0880_ (.A(s_axis_tdata[8]),
    .B(_0263_),
    .Y(_0264_));
 sky130_fd_sc_hd__a21o_2 _0881_ (.A1(_0262_),
    .A2(_0264_),
    .B1(_0055_),
    .X(_0265_));
 sky130_fd_sc_hd__o211a_2 _0882_ (.A1(\cnn_mac_wrapper.core_inst.product[1] ),
    .A2(_0054_),
    .B1(_0265_),
    .C1(aresetn),
    .X(_0033_));
 sky130_fd_sc_hd__nand2_2 _0883_ (.A(s_axis_tdata[2]),
    .B(s_axis_tdata[8]),
    .Y(_0266_));
 sky130_fd_sc_hd__and2_2 _0884_ (.A(s_axis_tdata[10]),
    .B(_0263_),
    .X(_0267_));
 sky130_fd_sc_hd__a22oi_2 _0885_ (.A1(s_axis_tdata[0]),
    .A2(s_axis_tdata[10]),
    .B1(s_axis_tdata[1]),
    .B2(s_axis_tdata[9]),
    .Y(_0268_));
 sky130_fd_sc_hd__nor2_2 _0886_ (.A(_0267_),
    .B(_0268_),
    .Y(_0269_));
 sky130_fd_sc_hd__xnor2_2 _0887_ (.A(_0266_),
    .B(_0269_),
    .Y(_0270_));
 sky130_fd_sc_hd__and3_2 _0888_ (.A(s_axis_tdata[8]),
    .B(_0263_),
    .C(_0270_),
    .X(_0271_));
 sky130_fd_sc_hd__a21oi_2 _0889_ (.A1(s_axis_tdata[8]),
    .A2(_0263_),
    .B1(_0270_),
    .Y(_0272_));
 sky130_fd_sc_hd__nor2_2 _0890_ (.A(_0271_),
    .B(_0272_),
    .Y(_0273_));
 sky130_fd_sc_hd__or2_2 _0891_ (.A(\cnn_mac_wrapper.core_inst.product[2] ),
    .B(_0054_),
    .X(_0274_));
 sky130_fd_sc_hd__o211a_2 _0892_ (.A1(_0055_),
    .A2(_0273_),
    .B1(_0274_),
    .C1(aresetn),
    .X(_0034_));
 sky130_fd_sc_hd__nand2_2 _0893_ (.A(s_axis_tdata[9]),
    .B(s_axis_tdata[2]),
    .Y(_0275_));
 sky130_fd_sc_hd__and4_2 _0894_ (.A(s_axis_tdata[0]),
    .B(s_axis_tdata[10]),
    .C(s_axis_tdata[1]),
    .D(s_axis_tdata[11]),
    .X(_0276_));
 sky130_fd_sc_hd__a22oi_2 _0895_ (.A1(s_axis_tdata[10]),
    .A2(s_axis_tdata[1]),
    .B1(s_axis_tdata[11]),
    .B2(s_axis_tdata[0]),
    .Y(_0277_));
 sky130_fd_sc_hd__nor2_2 _0896_ (.A(_0276_),
    .B(_0277_),
    .Y(_0278_));
 sky130_fd_sc_hd__xnor2_2 _0897_ (.A(_0275_),
    .B(_0278_),
    .Y(_0279_));
 sky130_fd_sc_hd__o21ba_2 _0898_ (.A1(_0266_),
    .A2(_0268_),
    .B1_N(_0267_),
    .X(_0280_));
 sky130_fd_sc_hd__and2b_2 _0899_ (.A_N(_0280_),
    .B(_0279_),
    .X(_0281_));
 sky130_fd_sc_hd__xnor2_2 _0900_ (.A(_0279_),
    .B(_0280_),
    .Y(_0282_));
 sky130_fd_sc_hd__and3_2 _0901_ (.A(s_axis_tdata[8]),
    .B(s_axis_tdata[3]),
    .C(_0282_),
    .X(_0283_));
 sky130_fd_sc_hd__a21oi_2 _0902_ (.A1(s_axis_tdata[8]),
    .A2(s_axis_tdata[3]),
    .B1(_0282_),
    .Y(_0284_));
 sky130_fd_sc_hd__nor2_2 _0903_ (.A(_0283_),
    .B(_0284_),
    .Y(_0285_));
 sky130_fd_sc_hd__and2_2 _0904_ (.A(_0271_),
    .B(_0285_),
    .X(_0286_));
 sky130_fd_sc_hd__nor2_2 _0905_ (.A(_0271_),
    .B(_0285_),
    .Y(_0287_));
 sky130_fd_sc_hd__o21ai_2 _0906_ (.A1(_0286_),
    .A2(_0287_),
    .B1(_0054_),
    .Y(_0288_));
 sky130_fd_sc_hd__o211a_2 _0907_ (.A1(\cnn_mac_wrapper.core_inst.product[3] ),
    .A2(_0054_),
    .B1(_0288_),
    .C1(aresetn),
    .X(_0035_));
 sky130_fd_sc_hd__a22oi_2 _0908_ (.A1(s_axis_tdata[9]),
    .A2(s_axis_tdata[3]),
    .B1(s_axis_tdata[4]),
    .B2(s_axis_tdata[8]),
    .Y(_0289_));
 sky130_fd_sc_hd__and4_2 _0909_ (.A(s_axis_tdata[9]),
    .B(s_axis_tdata[8]),
    .C(s_axis_tdata[3]),
    .D(s_axis_tdata[4]),
    .X(_0290_));
 sky130_fd_sc_hd__or2_2 _0910_ (.A(_0289_),
    .B(_0290_),
    .X(_0291_));
 sky130_fd_sc_hd__nand2_2 _0911_ (.A(s_axis_tdata[10]),
    .B(s_axis_tdata[2]),
    .Y(_0292_));
 sky130_fd_sc_hd__and4_2 _0912_ (.A(s_axis_tdata[0]),
    .B(s_axis_tdata[1]),
    .C(s_axis_tdata[11]),
    .D(s_axis_tdata[12]),
    .X(_0293_));
 sky130_fd_sc_hd__a22oi_2 _0913_ (.A1(s_axis_tdata[1]),
    .A2(s_axis_tdata[11]),
    .B1(s_axis_tdata[12]),
    .B2(s_axis_tdata[0]),
    .Y(_0294_));
 sky130_fd_sc_hd__or3_2 _0914_ (.A(_0292_),
    .B(_0293_),
    .C(_0294_),
    .X(_0295_));
 sky130_fd_sc_hd__o21ai_2 _0915_ (.A1(_0293_),
    .A2(_0294_),
    .B1(_0292_),
    .Y(_0296_));
 sky130_fd_sc_hd__o21bai_2 _0916_ (.A1(_0275_),
    .A2(_0277_),
    .B1_N(_0276_),
    .Y(_0297_));
 sky130_fd_sc_hd__and3_2 _0917_ (.A(_0295_),
    .B(_0296_),
    .C(_0297_),
    .X(_0298_));
 sky130_fd_sc_hd__a21oi_2 _0918_ (.A1(_0295_),
    .A2(_0296_),
    .B1(_0297_),
    .Y(_0299_));
 sky130_fd_sc_hd__nor2_2 _0919_ (.A(_0298_),
    .B(_0299_),
    .Y(_0300_));
 sky130_fd_sc_hd__xnor2_2 _0920_ (.A(_0291_),
    .B(_0300_),
    .Y(_0301_));
 sky130_fd_sc_hd__or2_2 _0921_ (.A(_0281_),
    .B(_0283_),
    .X(_0302_));
 sky130_fd_sc_hd__o21a_2 _0922_ (.A1(_0281_),
    .A2(_0283_),
    .B1(_0301_),
    .X(_0303_));
 sky130_fd_sc_hd__nand2_2 _0923_ (.A(_0301_),
    .B(_0302_),
    .Y(_0304_));
 sky130_fd_sc_hd__or2_2 _0924_ (.A(_0301_),
    .B(_0302_),
    .X(_0305_));
 sky130_fd_sc_hd__and3_2 _0925_ (.A(_0286_),
    .B(_0304_),
    .C(_0305_),
    .X(_0306_));
 sky130_fd_sc_hd__a21oi_2 _0926_ (.A1(_0304_),
    .A2(_0305_),
    .B1(_0286_),
    .Y(_0307_));
 sky130_fd_sc_hd__o21ai_2 _0927_ (.A1(_0306_),
    .A2(_0307_),
    .B1(_0054_),
    .Y(_0308_));
 sky130_fd_sc_hd__o211a_2 _0928_ (.A1(\cnn_mac_wrapper.core_inst.product[4] ),
    .A2(_0054_),
    .B1(_0308_),
    .C1(aresetn),
    .X(_0036_));
 sky130_fd_sc_hd__o21bai_2 _0929_ (.A1(_0291_),
    .A2(_0299_),
    .B1_N(_0298_),
    .Y(_0309_));
 sky130_fd_sc_hd__o21bai_2 _0930_ (.A1(_0292_),
    .A2(_0294_),
    .B1_N(_0293_),
    .Y(_0310_));
 sky130_fd_sc_hd__nand2_2 _0931_ (.A(s_axis_tdata[2]),
    .B(s_axis_tdata[11]),
    .Y(_0311_));
 sky130_fd_sc_hd__a22oi_2 _0932_ (.A1(s_axis_tdata[1]),
    .A2(s_axis_tdata[12]),
    .B1(s_axis_tdata[13]),
    .B2(s_axis_tdata[0]),
    .Y(_0312_));
 sky130_fd_sc_hd__and4_2 _0933_ (.A(s_axis_tdata[0]),
    .B(s_axis_tdata[1]),
    .C(s_axis_tdata[12]),
    .D(s_axis_tdata[13]),
    .X(_0313_));
 sky130_fd_sc_hd__or3_2 _0934_ (.A(_0311_),
    .B(_0312_),
    .C(_0313_),
    .X(_0314_));
 sky130_fd_sc_hd__o21ai_2 _0935_ (.A1(_0312_),
    .A2(_0313_),
    .B1(_0311_),
    .Y(_0315_));
 sky130_fd_sc_hd__nand3_2 _0936_ (.A(_0310_),
    .B(_0314_),
    .C(_0315_),
    .Y(_0316_));
 sky130_fd_sc_hd__a21o_2 _0937_ (.A1(_0314_),
    .A2(_0315_),
    .B1(_0310_),
    .X(_0317_));
 sky130_fd_sc_hd__and4_2 _0938_ (.A(s_axis_tdata[10]),
    .B(s_axis_tdata[9]),
    .C(s_axis_tdata[3]),
    .D(s_axis_tdata[4]),
    .X(_0318_));
 sky130_fd_sc_hd__a22oi_2 _0939_ (.A1(s_axis_tdata[10]),
    .A2(s_axis_tdata[3]),
    .B1(s_axis_tdata[4]),
    .B2(s_axis_tdata[9]),
    .Y(_0319_));
 sky130_fd_sc_hd__and4bb_2 _0940_ (.A_N(_0318_),
    .B_N(_0319_),
    .C(s_axis_tdata[8]),
    .D(s_axis_tdata[5]),
    .X(_0320_));
 sky130_fd_sc_hd__o2bb2a_2 _0941_ (.A1_N(s_axis_tdata[8]),
    .A2_N(s_axis_tdata[5]),
    .B1(_0318_),
    .B2(_0319_),
    .X(_0321_));
 sky130_fd_sc_hd__nor2_2 _0942_ (.A(_0320_),
    .B(_0321_),
    .Y(_0322_));
 sky130_fd_sc_hd__nand3_2 _0943_ (.A(_0316_),
    .B(_0317_),
    .C(_0322_),
    .Y(_0323_));
 sky130_fd_sc_hd__a21o_2 _0944_ (.A1(_0316_),
    .A2(_0317_),
    .B1(_0322_),
    .X(_0324_));
 sky130_fd_sc_hd__nand3_2 _0945_ (.A(_0309_),
    .B(_0323_),
    .C(_0324_),
    .Y(_0325_));
 sky130_fd_sc_hd__inv_2 _0946_ (.A(_0325_),
    .Y(_0326_));
 sky130_fd_sc_hd__a21o_2 _0947_ (.A1(_0323_),
    .A2(_0324_),
    .B1(_0309_),
    .X(_0327_));
 sky130_fd_sc_hd__and3_2 _0948_ (.A(_0290_),
    .B(_0325_),
    .C(_0327_),
    .X(_0328_));
 sky130_fd_sc_hd__a21o_2 _0949_ (.A1(_0325_),
    .A2(_0327_),
    .B1(_0290_),
    .X(_0329_));
 sky130_fd_sc_hd__and2b_2 _0950_ (.A_N(_0328_),
    .B(_0329_),
    .X(_0330_));
 sky130_fd_sc_hd__nand3b_2 _0951_ (.A_N(_0328_),
    .B(_0329_),
    .C(_0303_),
    .Y(_0331_));
 sky130_fd_sc_hd__xnor2_2 _0952_ (.A(_0303_),
    .B(_0330_),
    .Y(_0332_));
 sky130_fd_sc_hd__and4_2 _0953_ (.A(_0286_),
    .B(_0304_),
    .C(_0305_),
    .D(_0330_),
    .X(_0333_));
 sky130_fd_sc_hd__xnor2_2 _0954_ (.A(_0306_),
    .B(_0332_),
    .Y(_0334_));
 sky130_fd_sc_hd__or2_2 _0955_ (.A(\cnn_mac_wrapper.core_inst.product[5] ),
    .B(_0054_),
    .X(_0335_));
 sky130_fd_sc_hd__o211a_2 _0956_ (.A1(_0055_),
    .A2(_0334_),
    .B1(_0335_),
    .C1(aresetn),
    .X(_0037_));
 sky130_fd_sc_hd__o211a_2 _0957_ (.A1(_0318_),
    .A2(_0320_),
    .B1(s_axis_tdata[8]),
    .C1(s_axis_tdata[6]),
    .X(_0336_));
 sky130_fd_sc_hd__a211oi_2 _0958_ (.A1(s_axis_tdata[8]),
    .A2(s_axis_tdata[6]),
    .B1(_0318_),
    .C1(_0320_),
    .Y(_0337_));
 sky130_fd_sc_hd__nor2_2 _0959_ (.A(_0336_),
    .B(_0337_),
    .Y(_0338_));
 sky130_fd_sc_hd__nand2_2 _0960_ (.A(s_axis_tdata[9]),
    .B(s_axis_tdata[5]),
    .Y(_0339_));
 sky130_fd_sc_hd__nand2_2 _0961_ (.A(s_axis_tdata[11]),
    .B(s_axis_tdata[4]),
    .Y(_0340_));
 sky130_fd_sc_hd__and4_2 _0962_ (.A(s_axis_tdata[10]),
    .B(s_axis_tdata[11]),
    .C(s_axis_tdata[3]),
    .D(s_axis_tdata[4]),
    .X(_0341_));
 sky130_fd_sc_hd__a22o_2 _0963_ (.A1(s_axis_tdata[11]),
    .A2(s_axis_tdata[3]),
    .B1(s_axis_tdata[4]),
    .B2(s_axis_tdata[10]),
    .X(_0342_));
 sky130_fd_sc_hd__and2b_2 _0964_ (.A_N(_0341_),
    .B(_0342_),
    .X(_0343_));
 sky130_fd_sc_hd__xnor2_2 _0965_ (.A(_0339_),
    .B(_0343_),
    .Y(_0344_));
 sky130_fd_sc_hd__nand2_2 _0966_ (.A(s_axis_tdata[2]),
    .B(s_axis_tdata[12]),
    .Y(_0345_));
 sky130_fd_sc_hd__nand2_2 _0967_ (.A(s_axis_tdata[1]),
    .B(s_axis_tdata[14]),
    .Y(_0346_));
 sky130_fd_sc_hd__and4_2 _0968_ (.A(s_axis_tdata[0]),
    .B(s_axis_tdata[1]),
    .C(s_axis_tdata[14]),
    .D(s_axis_tdata[13]),
    .X(_0347_));
 sky130_fd_sc_hd__a22oi_2 _0969_ (.A1(s_axis_tdata[0]),
    .A2(s_axis_tdata[14]),
    .B1(s_axis_tdata[13]),
    .B2(s_axis_tdata[1]),
    .Y(_0348_));
 sky130_fd_sc_hd__nor3_2 _0970_ (.A(_0345_),
    .B(_0347_),
    .C(_0348_),
    .Y(_0349_));
 sky130_fd_sc_hd__or3_2 _0971_ (.A(_0345_),
    .B(_0347_),
    .C(_0348_),
    .X(_0350_));
 sky130_fd_sc_hd__o21ai_2 _0972_ (.A1(_0347_),
    .A2(_0348_),
    .B1(_0345_),
    .Y(_0351_));
 sky130_fd_sc_hd__o21bai_2 _0973_ (.A1(_0311_),
    .A2(_0312_),
    .B1_N(_0313_),
    .Y(_0352_));
 sky130_fd_sc_hd__nand3_2 _0974_ (.A(_0350_),
    .B(_0351_),
    .C(_0352_),
    .Y(_0353_));
 sky130_fd_sc_hd__a21o_2 _0975_ (.A1(_0350_),
    .A2(_0351_),
    .B1(_0352_),
    .X(_0354_));
 sky130_fd_sc_hd__nand3_2 _0976_ (.A(_0344_),
    .B(_0353_),
    .C(_0354_),
    .Y(_0355_));
 sky130_fd_sc_hd__a21o_2 _0977_ (.A1(_0353_),
    .A2(_0354_),
    .B1(_0344_),
    .X(_0356_));
 sky130_fd_sc_hd__a21bo_2 _0978_ (.A1(_0317_),
    .A2(_0322_),
    .B1_N(_0316_),
    .X(_0357_));
 sky130_fd_sc_hd__nand3_2 _0979_ (.A(_0355_),
    .B(_0356_),
    .C(_0357_),
    .Y(_0358_));
 sky130_fd_sc_hd__a21o_2 _0980_ (.A1(_0355_),
    .A2(_0356_),
    .B1(_0357_),
    .X(_0359_));
 sky130_fd_sc_hd__nand3_2 _0981_ (.A(_0338_),
    .B(_0358_),
    .C(_0359_),
    .Y(_0360_));
 sky130_fd_sc_hd__a21o_2 _0982_ (.A1(_0358_),
    .A2(_0359_),
    .B1(_0338_),
    .X(_0361_));
 sky130_fd_sc_hd__o211a_2 _0983_ (.A1(_0326_),
    .A2(_0328_),
    .B1(_0360_),
    .C1(_0361_),
    .X(_0362_));
 sky130_fd_sc_hd__a211oi_2 _0984_ (.A1(_0360_),
    .A2(_0361_),
    .B1(_0326_),
    .C1(_0328_),
    .Y(_0363_));
 sky130_fd_sc_hd__nor3_2 _0985_ (.A(_0331_),
    .B(_0362_),
    .C(_0363_),
    .Y(_0364_));
 sky130_fd_sc_hd__o21ai_2 _0986_ (.A1(_0362_),
    .A2(_0363_),
    .B1(_0331_),
    .Y(_0365_));
 sky130_fd_sc_hd__nand2b_2 _0987_ (.A_N(_0364_),
    .B(_0365_),
    .Y(_0366_));
 sky130_fd_sc_hd__xnor2_2 _0988_ (.A(_0333_),
    .B(_0366_),
    .Y(_0367_));
 sky130_fd_sc_hd__or2_2 _0989_ (.A(\cnn_mac_wrapper.core_inst.product[6] ),
    .B(_0054_),
    .X(_0368_));
 sky130_fd_sc_hd__o211a_2 _0990_ (.A1(_0055_),
    .A2(_0367_),
    .B1(_0368_),
    .C1(aresetn),
    .X(_0038_));
 sky130_fd_sc_hd__a31o_2 _0991_ (.A1(s_axis_tdata[9]),
    .A2(s_axis_tdata[5]),
    .A3(_0342_),
    .B1(_0341_),
    .X(_0369_));
 sky130_fd_sc_hd__and4_2 _0992_ (.A(s_axis_tdata[10]),
    .B(s_axis_tdata[9]),
    .C(s_axis_tdata[5]),
    .D(s_axis_tdata[6]),
    .X(_0370_));
 sky130_fd_sc_hd__inv_2 _0993_ (.A(_0370_),
    .Y(_0371_));
 sky130_fd_sc_hd__a22o_2 _0994_ (.A1(s_axis_tdata[10]),
    .A2(s_axis_tdata[5]),
    .B1(s_axis_tdata[6]),
    .B2(s_axis_tdata[9]),
    .X(_0372_));
 sky130_fd_sc_hd__and4b_2 _0995_ (.A_N(s_axis_tdata[8]),
    .B(s_axis_tdata[7]),
    .C(_0371_),
    .D(_0372_),
    .X(_0373_));
 sky130_fd_sc_hd__o2bb2a_2 _0996_ (.A1_N(_0371_),
    .A2_N(_0372_),
    .B1(s_axis_tdata[8]),
    .B2(_0053_),
    .X(_0374_));
 sky130_fd_sc_hd__nor2_2 _0997_ (.A(_0373_),
    .B(_0374_),
    .Y(_0375_));
 sky130_fd_sc_hd__nand2_2 _0998_ (.A(_0369_),
    .B(_0375_),
    .Y(_0376_));
 sky130_fd_sc_hd__xor2_2 _0999_ (.A(_0369_),
    .B(_0375_),
    .X(_0377_));
 sky130_fd_sc_hd__and4_2 _1000_ (.A(s_axis_tdata[2]),
    .B(s_axis_tdata[3]),
    .C(s_axis_tdata[12]),
    .D(s_axis_tdata[13]),
    .X(_0378_));
 sky130_fd_sc_hd__a22oi_2 _1001_ (.A1(s_axis_tdata[3]),
    .A2(s_axis_tdata[12]),
    .B1(s_axis_tdata[13]),
    .B2(s_axis_tdata[2]),
    .Y(_0379_));
 sky130_fd_sc_hd__nor2_2 _1002_ (.A(_0378_),
    .B(_0379_),
    .Y(_0380_));
 sky130_fd_sc_hd__xnor2_2 _1003_ (.A(_0340_),
    .B(_0380_),
    .Y(_0381_));
 sky130_fd_sc_hd__a21oi_2 _1004_ (.A1(s_axis_tdata[0]),
    .A2(s_axis_tdata[15]),
    .B1(s_axis_tdata[7]),
    .Y(_0382_));
 sky130_fd_sc_hd__and3_2 _1005_ (.A(s_axis_tdata[0]),
    .B(s_axis_tdata[15]),
    .C(s_axis_tdata[7]),
    .X(_0383_));
 sky130_fd_sc_hd__or3_2 _1006_ (.A(_0346_),
    .B(_0382_),
    .C(_0383_),
    .X(_0384_));
 sky130_fd_sc_hd__o21ai_2 _1007_ (.A1(_0382_),
    .A2(_0383_),
    .B1(_0346_),
    .Y(_0385_));
 sky130_fd_sc_hd__o211ai_2 _1008_ (.A1(_0347_),
    .A2(_0349_),
    .B1(_0384_),
    .C1(_0385_),
    .Y(_0386_));
 sky130_fd_sc_hd__a211o_2 _1009_ (.A1(_0384_),
    .A2(_0385_),
    .B1(_0347_),
    .C1(_0349_),
    .X(_0387_));
 sky130_fd_sc_hd__nand3_2 _1010_ (.A(_0381_),
    .B(_0386_),
    .C(_0387_),
    .Y(_0388_));
 sky130_fd_sc_hd__a21o_2 _1011_ (.A1(_0386_),
    .A2(_0387_),
    .B1(_0381_),
    .X(_0389_));
 sky130_fd_sc_hd__a21bo_2 _1012_ (.A1(_0344_),
    .A2(_0354_),
    .B1_N(_0353_),
    .X(_0390_));
 sky130_fd_sc_hd__nand3_2 _1013_ (.A(_0388_),
    .B(_0389_),
    .C(_0390_),
    .Y(_0391_));
 sky130_fd_sc_hd__a21o_2 _1014_ (.A1(_0388_),
    .A2(_0389_),
    .B1(_0390_),
    .X(_0392_));
 sky130_fd_sc_hd__and3_2 _1015_ (.A(_0377_),
    .B(_0391_),
    .C(_0392_),
    .X(_0393_));
 sky130_fd_sc_hd__nand3_2 _1016_ (.A(_0377_),
    .B(_0391_),
    .C(_0392_),
    .Y(_0394_));
 sky130_fd_sc_hd__a21oi_2 _1017_ (.A1(_0391_),
    .A2(_0392_),
    .B1(_0377_),
    .Y(_0395_));
 sky130_fd_sc_hd__a211oi_2 _1018_ (.A1(_0358_),
    .A2(_0360_),
    .B1(_0393_),
    .C1(_0395_),
    .Y(_0396_));
 sky130_fd_sc_hd__o211a_2 _1019_ (.A1(_0393_),
    .A2(_0395_),
    .B1(_0358_),
    .C1(_0360_),
    .X(_0397_));
 sky130_fd_sc_hd__o211ai_2 _1020_ (.A1(_0393_),
    .A2(_0395_),
    .B1(_0358_),
    .C1(_0360_),
    .Y(_0398_));
 sky130_fd_sc_hd__or3b_2 _1021_ (.A(_0396_),
    .B(_0397_),
    .C_N(_0336_),
    .X(_0399_));
 sky130_fd_sc_hd__o21bai_2 _1022_ (.A1(_0396_),
    .A2(_0397_),
    .B1_N(_0336_),
    .Y(_0400_));
 sky130_fd_sc_hd__a21oi_2 _1023_ (.A1(_0399_),
    .A2(_0400_),
    .B1(_0362_),
    .Y(_0401_));
 sky130_fd_sc_hd__a21o_2 _1024_ (.A1(_0399_),
    .A2(_0400_),
    .B1(_0362_),
    .X(_0402_));
 sky130_fd_sc_hd__and3_2 _1025_ (.A(_0362_),
    .B(_0399_),
    .C(_0400_),
    .X(_0403_));
 sky130_fd_sc_hd__or2_2 _1026_ (.A(_0401_),
    .B(_0403_),
    .X(_0404_));
 sky130_fd_sc_hd__a21o_2 _1027_ (.A1(_0333_),
    .A2(_0365_),
    .B1(_0364_),
    .X(_0405_));
 sky130_fd_sc_hd__xnor2_2 _1028_ (.A(_0404_),
    .B(_0405_),
    .Y(_0406_));
 sky130_fd_sc_hd__or2_2 _1029_ (.A(\cnn_mac_wrapper.core_inst.product[7] ),
    .B(_0054_),
    .X(_0407_));
 sky130_fd_sc_hd__o211a_2 _1030_ (.A1(_0055_),
    .A2(_0406_),
    .B1(_0407_),
    .C1(aresetn),
    .X(_0039_));
 sky130_fd_sc_hd__nor2_2 _1031_ (.A(_0370_),
    .B(_0373_),
    .Y(_0408_));
 sky130_fd_sc_hd__a31o_2 _1032_ (.A1(s_axis_tdata[11]),
    .A2(s_axis_tdata[4]),
    .A3(_0380_),
    .B1(_0378_),
    .X(_0409_));
 sky130_fd_sc_hd__o2bb2a_2 _1033_ (.A1_N(s_axis_tdata[10]),
    .A2_N(s_axis_tdata[6]),
    .B1(_0053_),
    .B2(s_axis_tdata[9]),
    .X(_0410_));
 sky130_fd_sc_hd__and4b_2 _1034_ (.A_N(s_axis_tdata[9]),
    .B(s_axis_tdata[6]),
    .C(s_axis_tdata[7]),
    .D(s_axis_tdata[10]),
    .X(_0411_));
 sky130_fd_sc_hd__or2_2 _1035_ (.A(_0410_),
    .B(_0411_),
    .X(_0412_));
 sky130_fd_sc_hd__and2b_2 _1036_ (.A_N(_0412_),
    .B(_0409_),
    .X(_0413_));
 sky130_fd_sc_hd__xnor2_2 _1037_ (.A(_0409_),
    .B(_0412_),
    .Y(_0414_));
 sky130_fd_sc_hd__and2b_2 _1038_ (.A_N(_0408_),
    .B(_0414_),
    .X(_0415_));
 sky130_fd_sc_hd__xnor2_2 _1039_ (.A(_0408_),
    .B(_0414_),
    .Y(_0416_));
 sky130_fd_sc_hd__nand2_2 _1040_ (.A(s_axis_tdata[11]),
    .B(s_axis_tdata[5]),
    .Y(_0417_));
 sky130_fd_sc_hd__and3_2 _1041_ (.A(s_axis_tdata[3]),
    .B(s_axis_tdata[12]),
    .C(s_axis_tdata[13]),
    .X(_0418_));
 sky130_fd_sc_hd__a22o_2 _1042_ (.A1(s_axis_tdata[12]),
    .A2(s_axis_tdata[4]),
    .B1(s_axis_tdata[13]),
    .B2(s_axis_tdata[3]),
    .X(_0419_));
 sky130_fd_sc_hd__a21bo_2 _1043_ (.A1(s_axis_tdata[4]),
    .A2(_0418_),
    .B1_N(_0419_),
    .X(_0420_));
 sky130_fd_sc_hd__xor2_2 _1044_ (.A(_0417_),
    .B(_0420_),
    .X(_0421_));
 sky130_fd_sc_hd__nand3_2 _1045_ (.A(s_axis_tdata[0]),
    .B(s_axis_tdata[1]),
    .C(s_axis_tdata[15]),
    .Y(_0422_));
 sky130_fd_sc_hd__o21a_2 _1046_ (.A1(s_axis_tdata[0]),
    .A2(s_axis_tdata[1]),
    .B1(s_axis_tdata[15]),
    .X(_0423_));
 sky130_fd_sc_hd__inv_2 _1047_ (.A(_0423_),
    .Y(_0424_));
 sky130_fd_sc_hd__a22o_2 _1048_ (.A1(s_axis_tdata[2]),
    .A2(s_axis_tdata[14]),
    .B1(_0422_),
    .B2(_0423_),
    .X(_0425_));
 sky130_fd_sc_hd__nand4_2 _1049_ (.A(s_axis_tdata[2]),
    .B(s_axis_tdata[14]),
    .C(_0422_),
    .D(_0423_),
    .Y(_0426_));
 sky130_fd_sc_hd__o21bai_2 _1050_ (.A1(_0346_),
    .A2(_0382_),
    .B1_N(_0383_),
    .Y(_0427_));
 sky130_fd_sc_hd__nand3_2 _1051_ (.A(_0425_),
    .B(_0426_),
    .C(_0427_),
    .Y(_0428_));
 sky130_fd_sc_hd__a21o_2 _1052_ (.A1(_0425_),
    .A2(_0426_),
    .B1(_0427_),
    .X(_0429_));
 sky130_fd_sc_hd__nand3_2 _1053_ (.A(_0421_),
    .B(_0428_),
    .C(_0429_),
    .Y(_0430_));
 sky130_fd_sc_hd__a21o_2 _1054_ (.A1(_0428_),
    .A2(_0429_),
    .B1(_0421_),
    .X(_0431_));
 sky130_fd_sc_hd__a21bo_2 _1055_ (.A1(_0381_),
    .A2(_0387_),
    .B1_N(_0386_),
    .X(_0432_));
 sky130_fd_sc_hd__nand3_2 _1056_ (.A(_0430_),
    .B(_0431_),
    .C(_0432_),
    .Y(_0433_));
 sky130_fd_sc_hd__a21o_2 _1057_ (.A1(_0430_),
    .A2(_0431_),
    .B1(_0432_),
    .X(_0434_));
 sky130_fd_sc_hd__and3_2 _1058_ (.A(_0416_),
    .B(_0433_),
    .C(_0434_),
    .X(_0435_));
 sky130_fd_sc_hd__nand3_2 _1059_ (.A(_0416_),
    .B(_0433_),
    .C(_0434_),
    .Y(_0436_));
 sky130_fd_sc_hd__a21oi_2 _1060_ (.A1(_0433_),
    .A2(_0434_),
    .B1(_0416_),
    .Y(_0437_));
 sky130_fd_sc_hd__a211oi_2 _1061_ (.A1(_0391_),
    .A2(_0394_),
    .B1(_0435_),
    .C1(_0437_),
    .Y(_0438_));
 sky130_fd_sc_hd__o211a_2 _1062_ (.A1(_0435_),
    .A2(_0437_),
    .B1(_0391_),
    .C1(_0394_),
    .X(_0439_));
 sky130_fd_sc_hd__nor3_2 _1063_ (.A(_0376_),
    .B(_0438_),
    .C(_0439_),
    .Y(_0440_));
 sky130_fd_sc_hd__or3_2 _1064_ (.A(_0376_),
    .B(_0438_),
    .C(_0439_),
    .X(_0441_));
 sky130_fd_sc_hd__o21ai_2 _1065_ (.A1(_0438_),
    .A2(_0439_),
    .B1(_0376_),
    .Y(_0442_));
 sky130_fd_sc_hd__a21o_2 _1066_ (.A1(_0336_),
    .A2(_0398_),
    .B1(_0396_),
    .X(_0443_));
 sky130_fd_sc_hd__and3_2 _1067_ (.A(_0441_),
    .B(_0442_),
    .C(_0443_),
    .X(_0444_));
 sky130_fd_sc_hd__a21o_2 _1068_ (.A1(_0441_),
    .A2(_0442_),
    .B1(_0443_),
    .X(_0445_));
 sky130_fd_sc_hd__and2b_2 _1069_ (.A_N(_0444_),
    .B(_0445_),
    .X(_0446_));
 sky130_fd_sc_hd__a21o_2 _1070_ (.A1(_0402_),
    .A2(_0405_),
    .B1(_0403_),
    .X(_0447_));
 sky130_fd_sc_hd__xor2_2 _1071_ (.A(_0446_),
    .B(_0447_),
    .X(_0448_));
 sky130_fd_sc_hd__or2_2 _1072_ (.A(\cnn_mac_wrapper.core_inst.product[8] ),
    .B(_0054_),
    .X(_0449_));
 sky130_fd_sc_hd__o211a_2 _1073_ (.A1(_0055_),
    .A2(_0448_),
    .B1(_0449_),
    .C1(aresetn),
    .X(_0040_));
 sky130_fd_sc_hd__a32o_2 _1074_ (.A1(s_axis_tdata[11]),
    .A2(s_axis_tdata[5]),
    .A3(_0419_),
    .B1(_0418_),
    .B2(s_axis_tdata[4]),
    .X(_0450_));
 sky130_fd_sc_hd__o2bb2a_2 _1075_ (.A1_N(s_axis_tdata[11]),
    .A2_N(s_axis_tdata[6]),
    .B1(_0053_),
    .B2(s_axis_tdata[10]),
    .X(_0451_));
 sky130_fd_sc_hd__and4b_2 _1076_ (.A_N(s_axis_tdata[10]),
    .B(s_axis_tdata[11]),
    .C(s_axis_tdata[6]),
    .D(s_axis_tdata[7]),
    .X(_0452_));
 sky130_fd_sc_hd__nor2_2 _1077_ (.A(_0451_),
    .B(_0452_),
    .Y(_0453_));
 sky130_fd_sc_hd__and2_2 _1078_ (.A(_0450_),
    .B(_0453_),
    .X(_0454_));
 sky130_fd_sc_hd__xor2_2 _1079_ (.A(_0450_),
    .B(_0453_),
    .X(_0455_));
 sky130_fd_sc_hd__and2_2 _1080_ (.A(_0411_),
    .B(_0455_),
    .X(_0456_));
 sky130_fd_sc_hd__xnor2_2 _1081_ (.A(_0411_),
    .B(_0455_),
    .Y(_0457_));
 sky130_fd_sc_hd__nand2_2 _1082_ (.A(s_axis_tdata[12]),
    .B(s_axis_tdata[5]),
    .Y(_0458_));
 sky130_fd_sc_hd__and3_2 _1083_ (.A(s_axis_tdata[3]),
    .B(s_axis_tdata[4]),
    .C(s_axis_tdata[13]),
    .X(_0459_));
 sky130_fd_sc_hd__a22o_2 _1084_ (.A1(s_axis_tdata[3]),
    .A2(s_axis_tdata[14]),
    .B1(s_axis_tdata[13]),
    .B2(s_axis_tdata[4]),
    .X(_0460_));
 sky130_fd_sc_hd__a21bo_2 _1085_ (.A1(s_axis_tdata[14]),
    .A2(_0459_),
    .B1_N(_0460_),
    .X(_0461_));
 sky130_fd_sc_hd__xor2_2 _1086_ (.A(_0458_),
    .B(_0461_),
    .X(_0462_));
 sky130_fd_sc_hd__nand2_2 _1087_ (.A(s_axis_tdata[2]),
    .B(s_axis_tdata[15]),
    .Y(_0463_));
 sky130_fd_sc_hd__nand3_2 _1088_ (.A(_0422_),
    .B(_0423_),
    .C(_0463_),
    .Y(_0464_));
 sky130_fd_sc_hd__a21o_2 _1089_ (.A1(_0422_),
    .A2(_0423_),
    .B1(_0463_),
    .X(_0465_));
 sky130_fd_sc_hd__and4_2 _1090_ (.A(s_axis_tdata[0]),
    .B(s_axis_tdata[1]),
    .C(s_axis_tdata[2]),
    .D(s_axis_tdata[15]),
    .X(_0466_));
 sky130_fd_sc_hd__inv_2 _1091_ (.A(_0466_),
    .Y(_0467_));
 sky130_fd_sc_hd__nand4_2 _1092_ (.A(_0422_),
    .B(_0426_),
    .C(_0464_),
    .D(_0465_),
    .Y(_0468_));
 sky130_fd_sc_hd__and3_2 _1093_ (.A(_0462_),
    .B(_0467_),
    .C(_0468_),
    .X(_0469_));
 sky130_fd_sc_hd__a21oi_2 _1094_ (.A1(_0467_),
    .A2(_0468_),
    .B1(_0462_),
    .Y(_0470_));
 sky130_fd_sc_hd__a21bo_2 _1095_ (.A1(_0421_),
    .A2(_0429_),
    .B1_N(_0428_),
    .X(_0471_));
 sky130_fd_sc_hd__nor3b_2 _1096_ (.A(_0469_),
    .B(_0470_),
    .C_N(_0471_),
    .Y(_0472_));
 sky130_fd_sc_hd__o21ba_2 _1097_ (.A1(_0469_),
    .A2(_0470_),
    .B1_N(_0471_),
    .X(_0473_));
 sky130_fd_sc_hd__nor3_2 _1098_ (.A(_0457_),
    .B(_0472_),
    .C(_0473_),
    .Y(_0474_));
 sky130_fd_sc_hd__o21a_2 _1099_ (.A1(_0472_),
    .A2(_0473_),
    .B1(_0457_),
    .X(_0475_));
 sky130_fd_sc_hd__a211o_2 _1100_ (.A1(_0433_),
    .A2(_0436_),
    .B1(_0474_),
    .C1(_0475_),
    .X(_0476_));
 sky130_fd_sc_hd__o211ai_2 _1101_ (.A1(_0474_),
    .A2(_0475_),
    .B1(_0433_),
    .C1(_0436_),
    .Y(_0477_));
 sky130_fd_sc_hd__o211ai_2 _1102_ (.A1(_0413_),
    .A2(_0415_),
    .B1(_0476_),
    .C1(_0477_),
    .Y(_0478_));
 sky130_fd_sc_hd__a211o_2 _1103_ (.A1(_0476_),
    .A2(_0477_),
    .B1(_0413_),
    .C1(_0415_),
    .X(_0479_));
 sky130_fd_sc_hd__o211a_2 _1104_ (.A1(_0438_),
    .A2(_0440_),
    .B1(_0478_),
    .C1(_0479_),
    .X(_0480_));
 sky130_fd_sc_hd__a211o_2 _1105_ (.A1(_0478_),
    .A2(_0479_),
    .B1(_0438_),
    .C1(_0440_),
    .X(_0481_));
 sky130_fd_sc_hd__and2b_2 _1106_ (.A_N(_0480_),
    .B(_0481_),
    .X(_0482_));
 sky130_fd_sc_hd__a21oi_2 _1107_ (.A1(_0446_),
    .A2(_0447_),
    .B1(_0444_),
    .Y(_0483_));
 sky130_fd_sc_hd__nor2_2 _1108_ (.A(_0482_),
    .B(_0483_),
    .Y(_0484_));
 sky130_fd_sc_hd__a21o_2 _1109_ (.A1(_0482_),
    .A2(_0483_),
    .B1(_0055_),
    .X(_0485_));
 sky130_fd_sc_hd__o221a_2 _1110_ (.A1(\cnn_mac_wrapper.core_inst.product[9] ),
    .A2(_0054_),
    .B1(_0484_),
    .B2(_0485_),
    .C1(aresetn),
    .X(_0041_));
 sky130_fd_sc_hd__a32o_2 _1111_ (.A1(s_axis_tdata[12]),
    .A2(s_axis_tdata[5]),
    .A3(_0460_),
    .B1(_0459_),
    .B2(s_axis_tdata[14]),
    .X(_0486_));
 sky130_fd_sc_hd__o2bb2a_2 _1112_ (.A1_N(s_axis_tdata[12]),
    .A2_N(s_axis_tdata[6]),
    .B1(_0053_),
    .B2(s_axis_tdata[11]),
    .X(_0487_));
 sky130_fd_sc_hd__and4b_2 _1113_ (.A_N(s_axis_tdata[11]),
    .B(s_axis_tdata[12]),
    .C(s_axis_tdata[6]),
    .D(s_axis_tdata[7]),
    .X(_0488_));
 sky130_fd_sc_hd__or2_2 _1114_ (.A(_0487_),
    .B(_0488_),
    .X(_0489_));
 sky130_fd_sc_hd__and2b_2 _1115_ (.A_N(_0489_),
    .B(_0486_),
    .X(_0490_));
 sky130_fd_sc_hd__xnor2_2 _1116_ (.A(_0486_),
    .B(_0489_),
    .Y(_0491_));
 sky130_fd_sc_hd__xnor2_2 _1117_ (.A(_0452_),
    .B(_0491_),
    .Y(_0492_));
 sky130_fd_sc_hd__a22oi_2 _1118_ (.A1(s_axis_tdata[4]),
    .A2(s_axis_tdata[14]),
    .B1(s_axis_tdata[15]),
    .B2(s_axis_tdata[3]),
    .Y(_0493_));
 sky130_fd_sc_hd__and3_2 _1119_ (.A(s_axis_tdata[3]),
    .B(s_axis_tdata[4]),
    .C(s_axis_tdata[15]),
    .X(_0494_));
 sky130_fd_sc_hd__nand2_2 _1120_ (.A(s_axis_tdata[14]),
    .B(_0494_),
    .Y(_0495_));
 sky130_fd_sc_hd__a21oi_2 _1121_ (.A1(s_axis_tdata[14]),
    .A2(_0494_),
    .B1(_0493_),
    .Y(_0496_));
 sky130_fd_sc_hd__nand2_2 _1122_ (.A(s_axis_tdata[13]),
    .B(s_axis_tdata[5]),
    .Y(_0497_));
 sky130_fd_sc_hd__xor2_2 _1123_ (.A(_0496_),
    .B(_0497_),
    .X(_0498_));
 sky130_fd_sc_hd__a21o_2 _1124_ (.A1(_0424_),
    .A2(_0463_),
    .B1(_0466_),
    .X(_0499_));
 sky130_fd_sc_hd__xor2_2 _1125_ (.A(_0498_),
    .B(_0499_),
    .X(_0500_));
 sky130_fd_sc_hd__o21a_2 _1126_ (.A1(_0466_),
    .A2(_0469_),
    .B1(_0500_),
    .X(_0501_));
 sky130_fd_sc_hd__nor3_2 _1127_ (.A(_0466_),
    .B(_0469_),
    .C(_0500_),
    .Y(_0502_));
 sky130_fd_sc_hd__or2_2 _1128_ (.A(_0501_),
    .B(_0502_),
    .X(_0503_));
 sky130_fd_sc_hd__nor2_2 _1129_ (.A(_0492_),
    .B(_0503_),
    .Y(_0504_));
 sky130_fd_sc_hd__xor2_2 _1130_ (.A(_0492_),
    .B(_0503_),
    .X(_0505_));
 sky130_fd_sc_hd__nor2_2 _1131_ (.A(_0472_),
    .B(_0474_),
    .Y(_0506_));
 sky130_fd_sc_hd__nand2b_2 _1132_ (.A_N(_0506_),
    .B(_0505_),
    .Y(_0507_));
 sky130_fd_sc_hd__xnor2_2 _1133_ (.A(_0505_),
    .B(_0506_),
    .Y(_0508_));
 sky130_fd_sc_hd__o21ai_2 _1134_ (.A1(_0454_),
    .A2(_0456_),
    .B1(_0508_),
    .Y(_0509_));
 sky130_fd_sc_hd__or3_2 _1135_ (.A(_0454_),
    .B(_0456_),
    .C(_0508_),
    .X(_0510_));
 sky130_fd_sc_hd__nand2_2 _1136_ (.A(_0509_),
    .B(_0510_),
    .Y(_0511_));
 sky130_fd_sc_hd__nand2_2 _1137_ (.A(_0476_),
    .B(_0478_),
    .Y(_0512_));
 sky130_fd_sc_hd__and3_2 _1138_ (.A(_0509_),
    .B(_0510_),
    .C(_0512_),
    .X(_0513_));
 sky130_fd_sc_hd__xnor2_2 _1139_ (.A(_0511_),
    .B(_0512_),
    .Y(_0514_));
 sky130_fd_sc_hd__o21a_2 _1140_ (.A1(_0444_),
    .A2(_0480_),
    .B1(_0481_),
    .X(_0515_));
 sky130_fd_sc_hd__a31o_2 _1141_ (.A1(_0446_),
    .A2(_0447_),
    .A3(_0482_),
    .B1(_0515_),
    .X(_0516_));
 sky130_fd_sc_hd__xnor2_2 _1142_ (.A(_0514_),
    .B(_0516_),
    .Y(_0517_));
 sky130_fd_sc_hd__o21ai_2 _1143_ (.A1(\cnn_mac_wrapper.core_inst.product[10] ),
    .A2(_0054_),
    .B1(aresetn),
    .Y(_0518_));
 sky130_fd_sc_hd__a21oi_2 _1144_ (.A1(_0054_),
    .A2(_0517_),
    .B1(_0518_),
    .Y(_0042_));
 sky130_fd_sc_hd__a21oi_2 _1145_ (.A1(_0514_),
    .A2(_0516_),
    .B1(_0513_),
    .Y(_0519_));
 sky130_fd_sc_hd__a21o_2 _1146_ (.A1(_0452_),
    .A2(_0491_),
    .B1(_0490_),
    .X(_0520_));
 sky130_fd_sc_hd__o21a_2 _1147_ (.A1(_0493_),
    .A2(_0497_),
    .B1(_0495_),
    .X(_0521_));
 sky130_fd_sc_hd__o2bb2a_2 _1148_ (.A1_N(s_axis_tdata[13]),
    .A2_N(s_axis_tdata[6]),
    .B1(_0053_),
    .B2(s_axis_tdata[12]),
    .X(_0522_));
 sky130_fd_sc_hd__and4b_2 _1149_ (.A_N(s_axis_tdata[12]),
    .B(s_axis_tdata[13]),
    .C(s_axis_tdata[6]),
    .D(s_axis_tdata[7]),
    .X(_0523_));
 sky130_fd_sc_hd__or3_2 _1150_ (.A(_0521_),
    .B(_0522_),
    .C(_0523_),
    .X(_0524_));
 sky130_fd_sc_hd__o21ai_2 _1151_ (.A1(_0522_),
    .A2(_0523_),
    .B1(_0521_),
    .Y(_0525_));
 sky130_fd_sc_hd__and2_2 _1152_ (.A(_0524_),
    .B(_0525_),
    .X(_0526_));
 sky130_fd_sc_hd__xnor2_2 _1153_ (.A(_0488_),
    .B(_0526_),
    .Y(_0527_));
 sky130_fd_sc_hd__or2_2 _1154_ (.A(s_axis_tdata[3]),
    .B(s_axis_tdata[4]),
    .X(_0528_));
 sky130_fd_sc_hd__and3b_2 _1155_ (.A_N(_0494_),
    .B(_0528_),
    .C(s_axis_tdata[15]),
    .X(_0529_));
 sky130_fd_sc_hd__a21oi_2 _1156_ (.A1(s_axis_tdata[14]),
    .A2(s_axis_tdata[5]),
    .B1(_0529_),
    .Y(_0530_));
 sky130_fd_sc_hd__and3_2 _1157_ (.A(s_axis_tdata[14]),
    .B(s_axis_tdata[5]),
    .C(_0529_),
    .X(_0531_));
 sky130_fd_sc_hd__or2_2 _1158_ (.A(_0530_),
    .B(_0531_),
    .X(_0532_));
 sky130_fd_sc_hd__xor2_2 _1159_ (.A(_0499_),
    .B(_0532_),
    .X(_0533_));
 sky130_fd_sc_hd__o21ai_2 _1160_ (.A1(_0498_),
    .A2(_0499_),
    .B1(_0467_),
    .Y(_0534_));
 sky130_fd_sc_hd__nand2_2 _1161_ (.A(_0533_),
    .B(_0534_),
    .Y(_0535_));
 sky130_fd_sc_hd__xnor2_2 _1162_ (.A(_0533_),
    .B(_0534_),
    .Y(_0536_));
 sky130_fd_sc_hd__or2_2 _1163_ (.A(_0527_),
    .B(_0536_),
    .X(_0537_));
 sky130_fd_sc_hd__nand2_2 _1164_ (.A(_0527_),
    .B(_0536_),
    .Y(_0538_));
 sky130_fd_sc_hd__and2_2 _1165_ (.A(_0537_),
    .B(_0538_),
    .X(_0539_));
 sky130_fd_sc_hd__o21ai_2 _1166_ (.A1(_0501_),
    .A2(_0504_),
    .B1(_0539_),
    .Y(_0540_));
 sky130_fd_sc_hd__or3_2 _1167_ (.A(_0501_),
    .B(_0504_),
    .C(_0539_),
    .X(_0541_));
 sky130_fd_sc_hd__nand2_2 _1168_ (.A(_0540_),
    .B(_0541_),
    .Y(_0542_));
 sky130_fd_sc_hd__xor2_2 _1169_ (.A(_0520_),
    .B(_0542_),
    .X(_0543_));
 sky130_fd_sc_hd__and3_2 _1170_ (.A(_0507_),
    .B(_0509_),
    .C(_0543_),
    .X(_0544_));
 sky130_fd_sc_hd__a21o_2 _1171_ (.A1(_0507_),
    .A2(_0509_),
    .B1(_0543_),
    .X(_0545_));
 sky130_fd_sc_hd__and2b_2 _1172_ (.A_N(_0544_),
    .B(_0545_),
    .X(_0546_));
 sky130_fd_sc_hd__and2_2 _1173_ (.A(_0519_),
    .B(_0546_),
    .X(_0547_));
 sky130_fd_sc_hd__o21ai_2 _1174_ (.A1(_0519_),
    .A2(_0546_),
    .B1(_0054_),
    .Y(_0548_));
 sky130_fd_sc_hd__o221a_2 _1175_ (.A1(\cnn_mac_wrapper.core_inst.product[11] ),
    .A2(_0054_),
    .B1(_0547_),
    .B2(_0548_),
    .C1(aresetn),
    .X(_0043_));
 sky130_fd_sc_hd__a21bo_2 _1176_ (.A1(_0488_),
    .A2(_0526_),
    .B1_N(_0524_),
    .X(_0549_));
 sky130_fd_sc_hd__nand2_2 _1177_ (.A(s_axis_tdata[5]),
    .B(s_axis_tdata[15]),
    .Y(_0550_));
 sky130_fd_sc_hd__xnor2_2 _1178_ (.A(_0529_),
    .B(_0550_),
    .Y(_0551_));
 sky130_fd_sc_hd__xnor2_2 _1179_ (.A(_0499_),
    .B(_0551_),
    .Y(_0552_));
 sky130_fd_sc_hd__o21ai_2 _1180_ (.A1(_0499_),
    .A2(_0532_),
    .B1(_0467_),
    .Y(_0553_));
 sky130_fd_sc_hd__nand2_2 _1181_ (.A(_0552_),
    .B(_0553_),
    .Y(_0554_));
 sky130_fd_sc_hd__xnor2_2 _1182_ (.A(_0552_),
    .B(_0553_),
    .Y(_0555_));
 sky130_fd_sc_hd__or2_2 _1183_ (.A(_0494_),
    .B(_0531_),
    .X(_0556_));
 sky130_fd_sc_hd__a2bb2o_2 _1184_ (.A1_N(s_axis_tdata[13]),
    .A2_N(_0053_),
    .B1(s_axis_tdata[6]),
    .B2(s_axis_tdata[14]),
    .X(_0557_));
 sky130_fd_sc_hd__or4b_2 _1185_ (.A(_0052_),
    .B(_0053_),
    .C(s_axis_tdata[13]),
    .D_N(s_axis_tdata[6]),
    .X(_0558_));
 sky130_fd_sc_hd__nand2_2 _1186_ (.A(_0557_),
    .B(_0558_),
    .Y(_0559_));
 sky130_fd_sc_hd__xnor2_2 _1187_ (.A(_0556_),
    .B(_0559_),
    .Y(_0560_));
 sky130_fd_sc_hd__xnor2_2 _1188_ (.A(_0523_),
    .B(_0560_),
    .Y(_0561_));
 sky130_fd_sc_hd__or2_2 _1189_ (.A(_0555_),
    .B(_0561_),
    .X(_0562_));
 sky130_fd_sc_hd__nand2_2 _1190_ (.A(_0555_),
    .B(_0561_),
    .Y(_0563_));
 sky130_fd_sc_hd__nand2_2 _1191_ (.A(_0562_),
    .B(_0563_),
    .Y(_0564_));
 sky130_fd_sc_hd__a21oi_2 _1192_ (.A1(_0535_),
    .A2(_0537_),
    .B1(_0564_),
    .Y(_0565_));
 sky130_fd_sc_hd__and3_2 _1193_ (.A(_0535_),
    .B(_0537_),
    .C(_0564_),
    .X(_0566_));
 sky130_fd_sc_hd__nor2_2 _1194_ (.A(_0565_),
    .B(_0566_),
    .Y(_0567_));
 sky130_fd_sc_hd__and2_2 _1195_ (.A(_0549_),
    .B(_0567_),
    .X(_0568_));
 sky130_fd_sc_hd__xnor2_2 _1196_ (.A(_0549_),
    .B(_0567_),
    .Y(_0569_));
 sky130_fd_sc_hd__a21bo_2 _1197_ (.A1(_0520_),
    .A2(_0541_),
    .B1_N(_0540_),
    .X(_0570_));
 sky130_fd_sc_hd__nand2b_2 _1198_ (.A_N(_0569_),
    .B(_0570_),
    .Y(_0571_));
 sky130_fd_sc_hd__xor2_2 _1199_ (.A(_0569_),
    .B(_0570_),
    .X(_0572_));
 sky130_fd_sc_hd__a21o_2 _1200_ (.A1(_0519_),
    .A2(_0545_),
    .B1(_0544_),
    .X(_0573_));
 sky130_fd_sc_hd__a211o_2 _1201_ (.A1(_0519_),
    .A2(_0545_),
    .B1(_0572_),
    .C1(_0544_),
    .X(_0574_));
 sky130_fd_sc_hd__nand2_2 _1202_ (.A(_0572_),
    .B(_0573_),
    .Y(_0575_));
 sky130_fd_sc_hd__and2_2 _1203_ (.A(_0574_),
    .B(_0575_),
    .X(_0576_));
 sky130_fd_sc_hd__or2_2 _1204_ (.A(\cnn_mac_wrapper.core_inst.product[12] ),
    .B(_0054_),
    .X(_0577_));
 sky130_fd_sc_hd__o211a_2 _1205_ (.A1(_0055_),
    .A2(_0576_),
    .B1(_0577_),
    .C1(aresetn),
    .X(_0044_));
 sky130_fd_sc_hd__and2_2 _1206_ (.A(_0466_),
    .B(_0551_),
    .X(_0578_));
 sky130_fd_sc_hd__nor2_2 _1207_ (.A(_0466_),
    .B(_0551_),
    .Y(_0579_));
 sky130_fd_sc_hd__a21oi_2 _1208_ (.A1(_0499_),
    .A2(_0579_),
    .B1(_0578_),
    .Y(_0580_));
 sky130_fd_sc_hd__inv_2 _1209_ (.A(_0580_),
    .Y(_0581_));
 sky130_fd_sc_hd__a31o_2 _1210_ (.A1(s_axis_tdata[5]),
    .A2(s_axis_tdata[15]),
    .A3(_0528_),
    .B1(_0494_),
    .X(_0582_));
 sky130_fd_sc_hd__nand2_2 _1211_ (.A(s_axis_tdata[6]),
    .B(s_axis_tdata[15]),
    .Y(_0583_));
 sky130_fd_sc_hd__o21ai_2 _1212_ (.A1(s_axis_tdata[14]),
    .A2(_0053_),
    .B1(_0583_),
    .Y(_0584_));
 sky130_fd_sc_hd__and3b_2 _1213_ (.A_N(_0583_),
    .B(_0052_),
    .C(s_axis_tdata[7]),
    .X(_0585_));
 sky130_fd_sc_hd__or3_2 _1214_ (.A(s_axis_tdata[14]),
    .B(_0053_),
    .C(_0583_),
    .X(_0586_));
 sky130_fd_sc_hd__and3_2 _1215_ (.A(_0582_),
    .B(_0584_),
    .C(_0586_),
    .X(_0587_));
 sky130_fd_sc_hd__a21oi_2 _1216_ (.A1(_0584_),
    .A2(_0586_),
    .B1(_0582_),
    .Y(_0588_));
 sky130_fd_sc_hd__or2_2 _1217_ (.A(_0587_),
    .B(_0588_),
    .X(_0589_));
 sky130_fd_sc_hd__xnor2_2 _1218_ (.A(_0558_),
    .B(_0589_),
    .Y(_0590_));
 sky130_fd_sc_hd__nor2_2 _1219_ (.A(_0581_),
    .B(_0590_),
    .Y(_0591_));
 sky130_fd_sc_hd__and2_2 _1220_ (.A(_0581_),
    .B(_0590_),
    .X(_0592_));
 sky130_fd_sc_hd__or2_2 _1221_ (.A(_0591_),
    .B(_0592_),
    .X(_0593_));
 sky130_fd_sc_hd__a21oi_2 _1222_ (.A1(_0554_),
    .A2(_0562_),
    .B1(_0593_),
    .Y(_0594_));
 sky130_fd_sc_hd__and3_2 _1223_ (.A(_0554_),
    .B(_0562_),
    .C(_0593_),
    .X(_0595_));
 sky130_fd_sc_hd__or2_2 _1224_ (.A(_0594_),
    .B(_0595_),
    .X(_0596_));
 sky130_fd_sc_hd__a32o_2 _1225_ (.A1(_0556_),
    .A2(_0557_),
    .A3(_0558_),
    .B1(_0560_),
    .B2(_0523_),
    .X(_0597_));
 sky130_fd_sc_hd__and2b_2 _1226_ (.A_N(_0596_),
    .B(_0597_),
    .X(_0598_));
 sky130_fd_sc_hd__xnor2_2 _1227_ (.A(_0596_),
    .B(_0597_),
    .Y(_0599_));
 sky130_fd_sc_hd__nor3_2 _1228_ (.A(_0565_),
    .B(_0568_),
    .C(_0599_),
    .Y(_0600_));
 sky130_fd_sc_hd__o21ai_2 _1229_ (.A1(_0565_),
    .A2(_0568_),
    .B1(_0599_),
    .Y(_0601_));
 sky130_fd_sc_hd__and2b_2 _1230_ (.A_N(_0600_),
    .B(_0601_),
    .X(_0602_));
 sky130_fd_sc_hd__a21oi_2 _1231_ (.A1(_0571_),
    .A2(_0574_),
    .B1(_0602_),
    .Y(_0603_));
 sky130_fd_sc_hd__a31o_2 _1232_ (.A1(_0571_),
    .A2(_0574_),
    .A3(_0602_),
    .B1(_0055_),
    .X(_0604_));
 sky130_fd_sc_hd__o221a_2 _1233_ (.A1(\cnn_mac_wrapper.core_inst.product[13] ),
    .A2(_0054_),
    .B1(_0603_),
    .B2(_0604_),
    .C1(aresetn),
    .X(_0045_));
 sky130_fd_sc_hd__o21ai_2 _1234_ (.A1(s_axis_tdata[15]),
    .A2(_0053_),
    .B1(_0583_),
    .Y(_0605_));
 sky130_fd_sc_hd__nand2_2 _1235_ (.A(_0582_),
    .B(_0605_),
    .Y(_0606_));
 sky130_fd_sc_hd__nor2_2 _1236_ (.A(_0582_),
    .B(_0605_),
    .Y(_0607_));
 sky130_fd_sc_hd__nor2_2 _1237_ (.A(_0585_),
    .B(_0607_),
    .Y(_0608_));
 sky130_fd_sc_hd__a22o_2 _1238_ (.A1(_0582_),
    .A2(_0585_),
    .B1(_0606_),
    .B2(_0608_),
    .X(_0609_));
 sky130_fd_sc_hd__xor2_2 _1239_ (.A(_0580_),
    .B(_0609_),
    .X(_0610_));
 sky130_fd_sc_hd__o21ai_2 _1240_ (.A1(_0578_),
    .A2(_0591_),
    .B1(_0610_),
    .Y(_0611_));
 sky130_fd_sc_hd__or3_2 _1241_ (.A(_0578_),
    .B(_0591_),
    .C(_0610_),
    .X(_0612_));
 sky130_fd_sc_hd__and2_2 _1242_ (.A(_0611_),
    .B(_0612_),
    .X(_0613_));
 sky130_fd_sc_hd__o21ba_2 _1243_ (.A1(_0558_),
    .A2(_0588_),
    .B1_N(_0587_),
    .X(_0614_));
 sky130_fd_sc_hd__nand2b_2 _1244_ (.A_N(_0614_),
    .B(_0613_),
    .Y(_0615_));
 sky130_fd_sc_hd__xnor2_2 _1245_ (.A(_0613_),
    .B(_0614_),
    .Y(_0616_));
 sky130_fd_sc_hd__o21ai_2 _1246_ (.A1(_0594_),
    .A2(_0598_),
    .B1(_0616_),
    .Y(_0617_));
 sky130_fd_sc_hd__or3_2 _1247_ (.A(_0594_),
    .B(_0598_),
    .C(_0616_),
    .X(_0618_));
 sky130_fd_sc_hd__nand2_2 _1248_ (.A(_0617_),
    .B(_0618_),
    .Y(_0619_));
 sky130_fd_sc_hd__or2_2 _1249_ (.A(_0571_),
    .B(_0600_),
    .X(_0620_));
 sky130_fd_sc_hd__a311o_2 _1250_ (.A1(_0571_),
    .A2(_0574_),
    .A3(_0601_),
    .B1(_0619_),
    .C1(_0600_),
    .X(_0621_));
 sky130_fd_sc_hd__o2111ai_2 _1251_ (.A1(_0574_),
    .A2(_0600_),
    .B1(_0601_),
    .C1(_0619_),
    .D1(_0620_),
    .Y(_0622_));
 sky130_fd_sc_hd__a21o_2 _1252_ (.A1(_0621_),
    .A2(_0622_),
    .B1(_0055_),
    .X(_0623_));
 sky130_fd_sc_hd__o211a_2 _1253_ (.A1(\cnn_mac_wrapper.core_inst.product[14] ),
    .A2(_0054_),
    .B1(_0623_),
    .C1(aresetn),
    .X(_0046_));
 sky130_fd_sc_hd__nand2_2 _1254_ (.A(_0611_),
    .B(_0615_),
    .Y(_0624_));
 sky130_fd_sc_hd__a21oi_2 _1255_ (.A1(_0580_),
    .A2(_0609_),
    .B1(_0578_),
    .Y(_0625_));
 sky130_fd_sc_hd__o21ai_2 _1256_ (.A1(_0585_),
    .A2(_0607_),
    .B1(_0606_),
    .Y(_0626_));
 sky130_fd_sc_hd__xnor2_2 _1257_ (.A(_0580_),
    .B(_0626_),
    .Y(_0627_));
 sky130_fd_sc_hd__xnor2_2 _1258_ (.A(_0625_),
    .B(_0627_),
    .Y(_0628_));
 sky130_fd_sc_hd__xnor2_2 _1259_ (.A(_0624_),
    .B(_0628_),
    .Y(_0629_));
 sky130_fd_sc_hd__a31o_2 _1260_ (.A1(_0617_),
    .A2(_0621_),
    .A3(_0629_),
    .B1(_0055_),
    .X(_0630_));
 sky130_fd_sc_hd__o211a_2 _1261_ (.A1(\cnn_mac_wrapper.core_inst.product[15] ),
    .A2(_0054_),
    .B1(_0630_),
    .C1(aresetn),
    .X(_0047_));
 sky130_fd_sc_hd__mux2_1 _1262_ (.A0(\cnn_mac_wrapper.last_pipe[0] ),
    .A1(s_axis_tlast),
    .S(m_axis_tready),
    .X(_0631_));
 sky130_fd_sc_hd__and2_2 _1263_ (.A(aresetn),
    .B(_0631_),
    .X(_0048_));
 sky130_fd_sc_hd__mux2_1 _1264_ (.A0(m_axis_tlast),
    .A1(\cnn_mac_wrapper.last_pipe[0] ),
    .S(m_axis_tready),
    .X(_0632_));
 sky130_fd_sc_hd__and2_2 _1265_ (.A(aresetn),
    .B(_0632_),
    .X(_0049_));
 sky130_fd_sc_hd__and2b_2 _1266_ (.A_N(m_axis_tready),
    .B(\cnn_mac_wrapper.valid_pipe[0] ),
    .X(_0633_));
 sky130_fd_sc_hd__o21a_2 _1267_ (.A1(_0054_),
    .A2(_0633_),
    .B1(aresetn),
    .X(_0050_));
 sky130_fd_sc_hd__mux2_1 _1268_ (.A0(m_axis_tvalid),
    .A1(\cnn_mac_wrapper.valid_pipe[0] ),
    .S(m_axis_tready),
    .X(_0634_));
 sky130_fd_sc_hd__and2_2 _1269_ (.A(aresetn),
    .B(_0634_),
    .X(_0051_));
 sky130_fd_sc_hd__dfxtp_2 _1270_ (.CLK(aclk),
    .D(_0000_),
    .Q(m_axis_tdata[0]));
 sky130_fd_sc_hd__dfxtp_2 _1271_ (.CLK(aclk),
    .D(_0001_),
    .Q(m_axis_tdata[1]));
 sky130_fd_sc_hd__dfxtp_2 _1272_ (.CLK(aclk),
    .D(_0002_),
    .Q(m_axis_tdata[2]));
 sky130_fd_sc_hd__dfxtp_2 _1273_ (.CLK(aclk),
    .D(_0003_),
    .Q(m_axis_tdata[3]));
 sky130_fd_sc_hd__dfxtp_2 _1274_ (.CLK(aclk),
    .D(_0004_),
    .Q(m_axis_tdata[4]));
 sky130_fd_sc_hd__dfxtp_2 _1275_ (.CLK(aclk),
    .D(_0005_),
    .Q(m_axis_tdata[5]));
 sky130_fd_sc_hd__dfxtp_2 _1276_ (.CLK(aclk),
    .D(_0006_),
    .Q(m_axis_tdata[6]));
 sky130_fd_sc_hd__dfxtp_2 _1277_ (.CLK(aclk),
    .D(_0007_),
    .Q(m_axis_tdata[7]));
 sky130_fd_sc_hd__dfxtp_2 _1278_ (.CLK(aclk),
    .D(_0008_),
    .Q(m_axis_tdata[8]));
 sky130_fd_sc_hd__dfxtp_2 _1279_ (.CLK(aclk),
    .D(_0009_),
    .Q(m_axis_tdata[9]));
 sky130_fd_sc_hd__dfxtp_2 _1280_ (.CLK(aclk),
    .D(_0010_),
    .Q(m_axis_tdata[10]));
 sky130_fd_sc_hd__dfxtp_2 _1281_ (.CLK(aclk),
    .D(_0011_),
    .Q(m_axis_tdata[11]));
 sky130_fd_sc_hd__dfxtp_2 _1282_ (.CLK(aclk),
    .D(_0012_),
    .Q(m_axis_tdata[12]));
 sky130_fd_sc_hd__dfxtp_2 _1283_ (.CLK(aclk),
    .D(_0013_),
    .Q(m_axis_tdata[13]));
 sky130_fd_sc_hd__dfxtp_2 _1284_ (.CLK(aclk),
    .D(_0014_),
    .Q(m_axis_tdata[14]));
 sky130_fd_sc_hd__dfxtp_2 _1285_ (.CLK(aclk),
    .D(_0015_),
    .Q(m_axis_tdata[15]));
 sky130_fd_sc_hd__dfxtp_2 _1286_ (.CLK(aclk),
    .D(_0016_),
    .Q(m_axis_tdata[16]));
 sky130_fd_sc_hd__dfxtp_2 _1287_ (.CLK(aclk),
    .D(_0017_),
    .Q(m_axis_tdata[17]));
 sky130_fd_sc_hd__dfxtp_2 _1288_ (.CLK(aclk),
    .D(_0018_),
    .Q(m_axis_tdata[18]));
 sky130_fd_sc_hd__dfxtp_2 _1289_ (.CLK(aclk),
    .D(_0019_),
    .Q(m_axis_tdata[19]));
 sky130_fd_sc_hd__dfxtp_2 _1290_ (.CLK(aclk),
    .D(_0020_),
    .Q(m_axis_tdata[20]));
 sky130_fd_sc_hd__dfxtp_2 _1291_ (.CLK(aclk),
    .D(_0021_),
    .Q(m_axis_tdata[21]));
 sky130_fd_sc_hd__dfxtp_2 _1292_ (.CLK(aclk),
    .D(_0022_),
    .Q(m_axis_tdata[22]));
 sky130_fd_sc_hd__dfxtp_2 _1293_ (.CLK(aclk),
    .D(_0023_),
    .Q(m_axis_tdata[23]));
 sky130_fd_sc_hd__dfxtp_2 _1294_ (.CLK(aclk),
    .D(_0024_),
    .Q(m_axis_tdata[24]));
 sky130_fd_sc_hd__dfxtp_2 _1295_ (.CLK(aclk),
    .D(_0025_),
    .Q(m_axis_tdata[25]));
 sky130_fd_sc_hd__dfxtp_2 _1296_ (.CLK(aclk),
    .D(_0026_),
    .Q(m_axis_tdata[26]));
 sky130_fd_sc_hd__dfxtp_2 _1297_ (.CLK(aclk),
    .D(_0027_),
    .Q(m_axis_tdata[27]));
 sky130_fd_sc_hd__dfxtp_2 _1298_ (.CLK(aclk),
    .D(_0028_),
    .Q(m_axis_tdata[28]));
 sky130_fd_sc_hd__dfxtp_2 _1299_ (.CLK(aclk),
    .D(_0029_),
    .Q(m_axis_tdata[29]));
 sky130_fd_sc_hd__dfxtp_2 _1300_ (.CLK(aclk),
    .D(_0030_),
    .Q(m_axis_tdata[30]));
 sky130_fd_sc_hd__dfxtp_2 _1301_ (.CLK(aclk),
    .D(_0031_),
    .Q(m_axis_tdata[31]));
 sky130_fd_sc_hd__dfxtp_2 _1302_ (.CLK(aclk),
    .D(_0032_),
    .Q(\cnn_mac_wrapper.core_inst.product[0] ));
 sky130_fd_sc_hd__dfxtp_2 _1303_ (.CLK(aclk),
    .D(_0033_),
    .Q(\cnn_mac_wrapper.core_inst.product[1] ));
 sky130_fd_sc_hd__dfxtp_2 _1304_ (.CLK(aclk),
    .D(_0034_),
    .Q(\cnn_mac_wrapper.core_inst.product[2] ));
 sky130_fd_sc_hd__dfxtp_2 _1305_ (.CLK(aclk),
    .D(_0035_),
    .Q(\cnn_mac_wrapper.core_inst.product[3] ));
 sky130_fd_sc_hd__dfxtp_2 _1306_ (.CLK(aclk),
    .D(_0036_),
    .Q(\cnn_mac_wrapper.core_inst.product[4] ));
 sky130_fd_sc_hd__dfxtp_2 _1307_ (.CLK(aclk),
    .D(_0037_),
    .Q(\cnn_mac_wrapper.core_inst.product[5] ));
 sky130_fd_sc_hd__dfxtp_2 _1308_ (.CLK(aclk),
    .D(_0038_),
    .Q(\cnn_mac_wrapper.core_inst.product[6] ));
 sky130_fd_sc_hd__dfxtp_2 _1309_ (.CLK(aclk),
    .D(_0039_),
    .Q(\cnn_mac_wrapper.core_inst.product[7] ));
 sky130_fd_sc_hd__dfxtp_2 _1310_ (.CLK(aclk),
    .D(_0040_),
    .Q(\cnn_mac_wrapper.core_inst.product[8] ));
 sky130_fd_sc_hd__dfxtp_2 _1311_ (.CLK(aclk),
    .D(_0041_),
    .Q(\cnn_mac_wrapper.core_inst.product[9] ));
 sky130_fd_sc_hd__dfxtp_2 _1312_ (.CLK(aclk),
    .D(_0042_),
    .Q(\cnn_mac_wrapper.core_inst.product[10] ));
 sky130_fd_sc_hd__dfxtp_2 _1313_ (.CLK(aclk),
    .D(_0043_),
    .Q(\cnn_mac_wrapper.core_inst.product[11] ));
 sky130_fd_sc_hd__dfxtp_2 _1314_ (.CLK(aclk),
    .D(_0044_),
    .Q(\cnn_mac_wrapper.core_inst.product[12] ));
 sky130_fd_sc_hd__dfxtp_2 _1315_ (.CLK(aclk),
    .D(_0045_),
    .Q(\cnn_mac_wrapper.core_inst.product[13] ));
 sky130_fd_sc_hd__dfxtp_2 _1316_ (.CLK(aclk),
    .D(_0046_),
    .Q(\cnn_mac_wrapper.core_inst.product[14] ));
 sky130_fd_sc_hd__dfxtp_2 _1317_ (.CLK(aclk),
    .D(_0047_),
    .Q(\cnn_mac_wrapper.core_inst.product[15] ));
 sky130_fd_sc_hd__dfxtp_2 _1318_ (.CLK(aclk),
    .D(_0048_),
    .Q(\cnn_mac_wrapper.last_pipe[0] ));
 sky130_fd_sc_hd__dfxtp_2 _1319_ (.CLK(aclk),
    .D(_0049_),
    .Q(m_axis_tlast));
 sky130_fd_sc_hd__dfxtp_2 _1320_ (.CLK(aclk),
    .D(_0050_),
    .Q(\cnn_mac_wrapper.valid_pipe[0] ));
 sky130_fd_sc_hd__dfxtp_2 _1321_ (.CLK(aclk),
    .D(_0051_),
    .Q(m_axis_tvalid));
 sky130_fd_sc_hd__buf_2 _1322_ (.A(m_axis_tready),
    .X(s_axis_tready));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_0_Right_0 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_1_Right_1 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_2_Right_2 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_3_Right_3 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_4_Right_4 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_5_Right_5 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_6_Right_6 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_7_Right_7 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_8_Right_8 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_9_Right_9 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_10_Right_10 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_11_Right_11 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_12_Right_12 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_13_Right_13 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_14_Right_14 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_15_Right_15 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_16_Right_16 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_17_Right_17 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_18_Right_18 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_19_Right_19 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_20_Right_20 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_21_Right_21 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_22_Right_22 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_23_Right_23 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_24_Right_24 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_25_Right_25 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_26_Right_26 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_27_Right_27 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_28_Right_28 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_29_Right_29 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_30_Right_30 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_31_Right_31 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_32_Right_32 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_33_Right_33 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_34_Right_34 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_35_Right_35 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_36_Right_36 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_37_Right_37 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_38_Right_38 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_39_Right_39 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_40_Right_40 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_41_Right_41 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_42_Right_42 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_43_Right_43 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_44_Right_44 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_45_Right_45 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_46_Right_46 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_47_Right_47 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_0_Left_48 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_1_Left_49 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_2_Left_50 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_3_Left_51 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_4_Left_52 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_5_Left_53 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_6_Left_54 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_7_Left_55 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_8_Left_56 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_9_Left_57 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_10_Left_58 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_11_Left_59 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_12_Left_60 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_13_Left_61 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_14_Left_62 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_15_Left_63 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_16_Left_64 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_17_Left_65 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_18_Left_66 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_19_Left_67 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_20_Left_68 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_21_Left_69 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_22_Left_70 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_23_Left_71 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_24_Left_72 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_25_Left_73 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_26_Left_74 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_27_Left_75 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_28_Left_76 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_29_Left_77 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_30_Left_78 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_31_Left_79 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_32_Left_80 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_33_Left_81 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_34_Left_82 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_35_Left_83 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_36_Left_84 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_37_Left_85 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_38_Left_86 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_39_Left_87 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_40_Left_88 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_41_Left_89 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_42_Left_90 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_43_Left_91 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_44_Left_92 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_45_Left_93 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_46_Left_94 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_47_Left_95 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_0_96 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_0_97 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_0_98 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_0_99 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_0_100 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_0_101 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_0_102 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_0_103 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_0_104 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_0_105 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_1_106 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_1_107 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_1_108 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_1_109 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_1_110 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_2_111 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_2_112 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_2_113 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_2_114 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_2_115 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_3_116 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_3_117 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_3_118 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_3_119 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_3_120 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_4_121 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_4_122 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_4_123 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_4_124 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_4_125 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_5_126 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_5_127 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_5_128 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_5_129 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_5_130 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_6_131 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_6_132 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_6_133 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_6_134 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_6_135 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_7_136 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_7_137 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_7_138 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_7_139 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_7_140 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_8_141 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_8_142 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_8_143 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_8_144 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_8_145 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_9_146 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_9_147 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_9_148 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_9_149 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_9_150 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_10_151 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_10_152 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_10_153 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_10_154 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_10_155 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_11_156 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_11_157 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_11_158 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_11_159 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_11_160 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_12_161 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_12_162 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_12_163 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_12_164 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_12_165 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_13_166 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_13_167 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_13_168 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_13_169 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_13_170 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_14_171 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_14_172 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_14_173 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_14_174 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_14_175 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_15_176 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_15_177 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_15_178 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_15_179 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_15_180 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_16_181 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_16_182 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_16_183 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_16_184 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_16_185 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_17_186 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_17_187 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_17_188 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_17_189 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_17_190 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_18_191 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_18_192 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_18_193 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_18_194 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_18_195 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_19_196 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_19_197 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_19_198 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_19_199 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_19_200 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_20_201 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_20_202 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_20_203 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_20_204 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_20_205 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_21_206 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_21_207 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_21_208 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_21_209 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_21_210 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_22_211 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_22_212 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_22_213 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_22_214 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_22_215 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_23_216 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_23_217 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_23_218 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_23_219 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_23_220 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_24_221 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_24_222 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_24_223 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_24_224 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_24_225 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_25_226 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_25_227 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_25_228 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_25_229 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_25_230 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_26_231 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_26_232 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_26_233 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_26_234 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_26_235 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_27_236 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_27_237 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_27_238 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_27_239 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_27_240 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_28_241 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_28_242 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_28_243 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_28_244 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_28_245 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_29_246 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_29_247 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_29_248 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_29_249 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_29_250 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_30_251 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_30_252 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_30_253 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_30_254 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_30_255 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_31_256 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_31_257 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_31_258 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_31_259 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_31_260 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_32_261 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_32_262 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_32_263 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_32_264 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_32_265 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_33_266 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_33_267 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_33_268 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_33_269 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_33_270 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_34_271 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_34_272 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_34_273 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_34_274 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_34_275 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_35_276 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_35_277 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_35_278 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_35_279 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_35_280 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_36_281 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_36_282 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_36_283 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_36_284 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_36_285 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_37_286 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_37_287 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_37_288 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_37_289 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_37_290 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_38_291 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_38_292 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_38_293 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_38_294 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_38_295 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_39_296 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_39_297 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_39_298 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_39_299 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_39_300 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_40_301 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_40_302 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_40_303 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_40_304 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_40_305 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_41_306 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_41_307 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_41_308 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_41_309 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_41_310 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_42_311 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_42_312 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_42_313 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_42_314 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_42_315 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_43_316 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_43_317 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_43_318 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_43_319 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_43_320 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_44_321 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_44_322 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_44_323 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_44_324 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_44_325 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_45_326 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_45_327 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_45_328 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_45_329 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_45_330 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_46_331 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_46_332 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_46_333 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_46_334 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_46_335 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_47_336 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_47_337 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_47_338 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_47_339 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_47_340 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_47_341 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_47_342 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_47_343 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_47_344 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_47_345 ();
endmodule
