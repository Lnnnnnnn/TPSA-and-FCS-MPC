// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.1 (64-bit)
// Version: 2022.1
// Copyright (C) Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module MPCcore_MPCallocate_0627 (
        ap_ready,
        p_read,
        p_read16,
        p_read17,
        p_read18,
        p_read19,
        p_read20,
        p_read21,
        p_read22,
        p_read23,
        p_read24,
        p_read25,
        p_read26,
        p_read27,
        p_read28,
        p_read29,
        p_read30,
        p_read31,
        p_read32,
        p_read33,
        p_read34,
        p_read35,
        p_read36,
        p_read37,
        p_read38,
        p_read39,
        p_read40,
        p_read41,
        p_read42,
        p_read43,
        p_read44,
        p_read45,
        p_read46,
        p_read47,
        p_read48,
        p_read49,
        p_read50,
        p_read51,
        p_read52,
        p_read53,
        p_read54,
        p_read55,
        p_read56,
        p_read57,
        p_read58,
        p_read59,
        p_read60,
        p_read61,
        p_read62,
        p_read63,
        p_read64,
        p_read65,
        p_read66,
        p_read67,
        p_read68,
        p_read69,
        p_read70,
        p_read71,
        p_read72,
        p_read73,
        p_read74,
        p_read75,
        p_read76,
        p_read77,
        p_read78,
        p_read79,
        p_read80,
        p_read81,
        p_read82,
        p_read83,
        p_read84,
        p_read85,
        p_read86,
        p_read87,
        p_read88,
        p_read89,
        p_read90,
        p_read91,
        p_read92,
        p_read93,
        p_read94,
        p_read95,
        p_read96,
        p_read97,
        p_read98,
        p_read99,
        p_read100,
        p_read101,
        p_read102,
        p_read103,
        p_read104,
        p_read105,
        p_read106,
        p_read107,
        p_read108,
        p_read109,
        p_read110,
        p_read111,
        p_read112,
        p_read113,
        p_read114,
        p_read115,
        p_read116,
        p_read117,
        p_read118,
        p_read119,
        p_read120,
        p_read121,
        p_read122,
        p_read123,
        p_read124,
        p_read125,
        p_read126,
        p_read127,
        p_read128,
        p_read129,
        p_read130,
        p_read131,
        p_read132,
        p_read133,
        p_read134,
        p_read135,
        p_read136,
        p_read137,
        p_read138,
        p_read139,
        p_read140,
        p_read141,
        p_read142,
        p_read143,
        p_read144,
        p_read145,
        p_read146,
        p_read147,
        p_read148,
        p_read149,
        p_read150,
        p_read151,
        p_read152,
        p_read153,
        p_read154,
        p_read155,
        p_read156,
        p_read157,
        p_read158,
        p_read159,
        p_read160,
        p_read161,
        p_read162,
        p_read163,
        p_read164,
        p_read165,
        p_read166,
        p_read167,
        p_read168,
        p_read169,
        p_read170,
        p_read171,
        p_read172,
        p_read173,
        p_read174,
        p_read175,
        p_read176,
        p_read177,
        p_read178,
        p_read179,
        p_read180,
        p_read181,
        p_read182,
        p_read183,
        p_read184,
        p_read185,
        p_read186,
        p_read187,
        p_read188,
        p_read189,
        p_read190,
        p_read191,
        ap_return_0,
        ap_return_1,
        ap_return_2,
        ap_return_3,
        ap_return_4,
        ap_return_5,
        ap_return_6,
        ap_return_7,
        ap_return_8,
        ap_return_9,
        ap_return_10,
        ap_return_11,
        ap_return_12,
        ap_return_13,
        ap_return_14,
        ap_return_15,
        ap_return_16,
        ap_ce
);


output   ap_ready;
input  [7:0] p_read;
input  [7:0] p_read16;
input  [7:0] p_read17;
input  [7:0] p_read18;
input  [7:0] p_read19;
input  [7:0] p_read20;
input  [7:0] p_read21;
input  [7:0] p_read22;
input  [7:0] p_read23;
input  [7:0] p_read24;
input  [7:0] p_read25;
input  [7:0] p_read26;
input  [7:0] p_read27;
input  [7:0] p_read28;
input  [7:0] p_read29;
input  [7:0] p_read30;
input  [7:0] p_read31;
input  [7:0] p_read32;
input  [7:0] p_read33;
input  [7:0] p_read34;
input  [7:0] p_read35;
input  [7:0] p_read36;
input  [7:0] p_read37;
input  [7:0] p_read38;
input  [7:0] p_read39;
input  [7:0] p_read40;
input  [7:0] p_read41;
input  [7:0] p_read42;
input  [7:0] p_read43;
input  [7:0] p_read44;
input  [7:0] p_read45;
input  [7:0] p_read46;
input  [7:0] p_read47;
input  [7:0] p_read48;
input  [7:0] p_read49;
input  [7:0] p_read50;
input  [7:0] p_read51;
input  [7:0] p_read52;
input  [7:0] p_read53;
input  [7:0] p_read54;
input  [7:0] p_read55;
input  [7:0] p_read56;
input  [7:0] p_read57;
input  [7:0] p_read58;
input  [7:0] p_read59;
input  [7:0] p_read60;
input  [7:0] p_read61;
input  [7:0] p_read62;
input  [7:0] p_read63;
input  [7:0] p_read64;
input  [7:0] p_read65;
input  [7:0] p_read66;
input  [7:0] p_read67;
input  [7:0] p_read68;
input  [7:0] p_read69;
input  [7:0] p_read70;
input  [7:0] p_read71;
input  [7:0] p_read72;
input  [7:0] p_read73;
input  [7:0] p_read74;
input  [7:0] p_read75;
input  [7:0] p_read76;
input  [7:0] p_read77;
input  [7:0] p_read78;
input  [7:0] p_read79;
input  [7:0] p_read80;
input  [7:0] p_read81;
input  [7:0] p_read82;
input  [7:0] p_read83;
input  [7:0] p_read84;
input  [7:0] p_read85;
input  [7:0] p_read86;
input  [7:0] p_read87;
input  [7:0] p_read88;
input  [7:0] p_read89;
input  [7:0] p_read90;
input  [7:0] p_read91;
input  [7:0] p_read92;
input  [7:0] p_read93;
input  [7:0] p_read94;
input  [7:0] p_read95;
input  [7:0] p_read96;
input  [7:0] p_read97;
input  [7:0] p_read98;
input  [7:0] p_read99;
input  [7:0] p_read100;
input  [7:0] p_read101;
input  [7:0] p_read102;
input  [7:0] p_read103;
input  [7:0] p_read104;
input  [7:0] p_read105;
input  [7:0] p_read106;
input  [7:0] p_read107;
input  [7:0] p_read108;
input  [7:0] p_read109;
input  [7:0] p_read110;
input  [7:0] p_read111;
input  [7:0] p_read112;
input  [7:0] p_read113;
input  [7:0] p_read114;
input  [7:0] p_read115;
input  [7:0] p_read116;
input  [7:0] p_read117;
input  [7:0] p_read118;
input  [7:0] p_read119;
input  [7:0] p_read120;
input  [7:0] p_read121;
input  [7:0] p_read122;
input  [7:0] p_read123;
input  [7:0] p_read124;
input  [7:0] p_read125;
input  [7:0] p_read126;
input  [7:0] p_read127;
input  [7:0] p_read128;
input  [7:0] p_read129;
input  [7:0] p_read130;
input  [7:0] p_read131;
input  [7:0] p_read132;
input  [7:0] p_read133;
input  [7:0] p_read134;
input  [7:0] p_read135;
input  [7:0] p_read136;
input  [7:0] p_read137;
input  [7:0] p_read138;
input  [7:0] p_read139;
input  [7:0] p_read140;
input  [7:0] p_read141;
input  [7:0] p_read142;
input  [7:0] p_read143;
input  [7:0] p_read144;
input  [7:0] p_read145;
input  [7:0] p_read146;
input  [7:0] p_read147;
input  [7:0] p_read148;
input  [7:0] p_read149;
input  [7:0] p_read150;
input  [7:0] p_read151;
input  [7:0] p_read152;
input  [7:0] p_read153;
input  [7:0] p_read154;
input  [7:0] p_read155;
input  [7:0] p_read156;
input  [7:0] p_read157;
input  [7:0] p_read158;
input  [7:0] p_read159;
input  [7:0] p_read160;
input  [7:0] p_read161;
input  [7:0] p_read162;
input  [7:0] p_read163;
input  [7:0] p_read164;
input  [7:0] p_read165;
input  [7:0] p_read166;
input  [7:0] p_read167;
input  [7:0] p_read168;
input  [7:0] p_read169;
input  [7:0] p_read170;
input  [7:0] p_read171;
input  [7:0] p_read172;
input  [7:0] p_read173;
input  [7:0] p_read174;
input  [7:0] p_read175;
input  [7:0] p_read176;
input  [7:0] p_read177;
input  [7:0] p_read178;
input  [7:0] p_read179;
input  [7:0] p_read180;
input  [7:0] p_read181;
input  [7:0] p_read182;
input  [7:0] p_read183;
input  [7:0] p_read184;
input  [7:0] p_read185;
input  [7:0] p_read186;
input  [7:0] p_read187;
input  [7:0] p_read188;
input  [7:0] p_read189;
input  [7:0] p_read190;
input  [7:0] p_read191;
output  [7:0] ap_return_0;
output  [7:0] ap_return_1;
output  [7:0] ap_return_2;
output  [7:0] ap_return_3;
output  [7:0] ap_return_4;
output  [7:0] ap_return_5;
output  [7:0] ap_return_6;
output  [7:0] ap_return_7;
output  [7:0] ap_return_8;
output  [7:0] ap_return_9;
output  [7:0] ap_return_10;
output  [7:0] ap_return_11;
output  [7:0] ap_return_12;
output  [7:0] ap_return_13;
output  [7:0] ap_return_14;
output  [7:0] ap_return_15;
output  [7:0] ap_return_16;
input   ap_ce;

wire   [0:0] getHelperList_buffer_fu_1430_p2;
wire   [7:0] tmp_fu_1444_p11;
wire   [7:0] t1_V_fu_1468_p2;
wire   [0:0] icmp_ln1065_fu_1474_p2;
wire   [0:0] icmp_ln1073_fu_1480_p2;
wire   [0:0] icmp_ln1065_5_fu_1492_p2;
wire   [7:0] select_ln938_fu_1498_p3;
wire   [0:0] and_ln937_fu_1486_p2;
wire   [7:0] sub_ln938_fu_1506_p2;
wire   [7:0] tmp_s_fu_1520_p11;
wire   [7:0] t1_V_1_fu_1544_p2;
wire   [0:0] icmp_ln1065_6_fu_1556_p2;
wire   [7:0] t2_V_fu_1550_p2;
wire   [7:0] getWokerList_buffer_1_fu_1562_p2;
wire   [7:0] tmp_293_fu_1576_p11;
wire   [7:0] t1_V_2_fu_1600_p2;
wire   [0:0] icmp_ln1065_7_fu_1612_p2;
wire   [7:0] t2_V_1_fu_1606_p2;
wire   [7:0] getWokerList_buffer_3_fu_1618_p2;
wire   [7:0] tmp_294_fu_1632_p11;
wire   [7:0] t1_V_3_fu_1656_p2;
wire   [0:0] icmp_ln1065_8_fu_1668_p2;
wire   [7:0] t2_V_2_fu_1662_p2;
wire   [7:0] getWokerList_buffer_5_fu_1674_p2;
wire   [7:0] tmp_295_fu_1688_p11;
wire   [7:0] t1_V_4_fu_1712_p2;
wire   [0:0] icmp_ln1065_9_fu_1724_p2;
wire   [7:0] t2_V_3_fu_1718_p2;
wire   [7:0] getWokerList_buffer_7_fu_1730_p2;
wire   [7:0] tmp_296_fu_1744_p11;
wire   [7:0] t1_V_5_fu_1768_p2;
wire   [0:0] icmp_ln1065_10_fu_1780_p2;
wire   [7:0] t2_V_4_fu_1774_p2;
wire   [7:0] getWokerList_buffer_9_fu_1786_p2;
wire   [7:0] tmp_297_fu_1800_p11;
wire   [7:0] t1_V_6_fu_1824_p2;
wire   [0:0] icmp_ln1065_11_fu_1836_p2;
wire   [7:0] t2_V_5_fu_1830_p2;
wire   [7:0] getWokerList_buffer_11_fu_1842_p2;
wire   [7:0] tmp_298_fu_1856_p11;
wire   [7:0] t1_V_7_fu_1880_p2;
wire   [0:0] icmp_ln1065_12_fu_1892_p2;
wire   [7:0] t2_V_6_fu_1886_p2;
wire   [7:0] getWokerList_buffer_13_fu_1898_p2;
wire   [7:0] tmp_299_fu_1912_p11;
wire   [7:0] t1_V_8_fu_1936_p2;
wire   [0:0] icmp_ln1065_13_fu_1948_p2;
wire   [7:0] t2_V_7_fu_1942_p2;
wire   [7:0] getWokerList_buffer_15_fu_1954_p2;
wire   [7:0] tmp_300_fu_1968_p11;
wire   [7:0] t1_V_9_fu_1992_p2;
wire   [0:0] icmp_ln1065_14_fu_2004_p2;
wire   [7:0] t2_V_8_fu_1998_p2;
wire   [7:0] getWokerList_buffer_17_fu_2010_p2;
wire   [7:0] tmp_301_fu_2024_p11;
wire   [7:0] t1_V_10_fu_2048_p2;
wire   [0:0] icmp_ln1065_15_fu_2060_p2;
wire   [7:0] t2_V_9_fu_2054_p2;
wire   [7:0] getWokerList_buffer_19_fu_2066_p2;
wire   [7:0] tmp_302_fu_2080_p11;
wire   [7:0] t1_V_11_fu_2104_p2;
wire   [0:0] icmp_ln1065_16_fu_2116_p2;
wire   [7:0] t2_V_10_fu_2110_p2;
wire   [7:0] getWokerList_buffer_21_fu_2122_p2;
wire   [7:0] tmp_303_fu_2136_p11;
wire   [7:0] t1_V_12_fu_2160_p2;
wire   [0:0] icmp_ln1065_17_fu_2172_p2;
wire   [7:0] t2_V_11_fu_2166_p2;
wire   [7:0] getWokerList_buffer_23_fu_2178_p2;
wire   [7:0] tmp_304_fu_2192_p11;
wire   [7:0] t1_V_13_fu_2216_p2;
wire   [0:0] icmp_ln1065_18_fu_2228_p2;
wire   [7:0] t2_V_12_fu_2222_p2;
wire   [7:0] getWokerList_buffer_25_fu_2234_p2;
wire   [7:0] tmp_305_fu_2248_p11;
wire   [7:0] t1_V_14_fu_2272_p2;
wire   [0:0] icmp_ln1065_19_fu_2284_p2;
wire   [7:0] t2_V_13_fu_2278_p2;
wire   [7:0] getWokerList_buffer_27_fu_2290_p2;
wire   [7:0] tmp_306_fu_2304_p11;
wire   [7:0] t1_V_15_fu_2328_p2;
wire   [0:0] icmp_ln1065_20_fu_2340_p2;
wire   [7:0] t2_V_14_fu_2334_p2;
wire   [7:0] getWokerList_buffer_29_fu_2346_p2;
wire   [7:0] select_ln859_fu_1436_p3;
wire   [7:0] getWokerList_buffer_fu_1512_p3;
wire   [7:0] getWokerList_buffer_2_fu_1568_p3;
wire   [7:0] getWokerList_buffer_4_fu_1624_p3;
wire   [7:0] getWokerList_buffer_6_fu_1680_p3;
wire   [7:0] getWokerList_buffer_8_fu_1736_p3;
wire   [7:0] getWokerList_buffer_10_fu_1792_p3;
wire   [7:0] getWokerList_buffer_12_fu_1848_p3;
wire   [7:0] getWokerList_buffer_14_fu_1904_p3;
wire   [7:0] getWokerList_buffer_16_fu_1960_p3;
wire   [7:0] getWokerList_buffer_18_fu_2016_p3;
wire   [7:0] getWokerList_buffer_20_fu_2072_p3;
wire   [7:0] getWokerList_buffer_22_fu_2128_p3;
wire   [7:0] getWokerList_buffer_24_fu_2184_p3;
wire   [7:0] getWokerList_buffer_26_fu_2240_p3;
wire   [7:0] getWokerList_buffer_28_fu_2296_p3;
wire   [7:0] getWokerList_buffer_30_fu_2352_p3;
wire    ap_ce_reg;

MPCcore_mux_98_8_1_1 #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 8 ),
    .din1_WIDTH( 8 ),
    .din2_WIDTH( 8 ),
    .din3_WIDTH( 8 ),
    .din4_WIDTH( 8 ),
    .din5_WIDTH( 8 ),
    .din6_WIDTH( 8 ),
    .din7_WIDTH( 8 ),
    .din8_WIDTH( 8 ),
    .din9_WIDTH( 8 ),
    .dout_WIDTH( 8 ))
mux_98_8_1_1_U17(
    .din0(p_read48),
    .din1(p_read49),
    .din2(p_read50),
    .din3(p_read51),
    .din4(p_read52),
    .din5(p_read53),
    .din6(p_read54),
    .din7(p_read55),
    .din8(p_read56),
    .din9(p_read16),
    .dout(tmp_fu_1444_p11)
);

MPCcore_mux_98_8_1_1 #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 8 ),
    .din1_WIDTH( 8 ),
    .din2_WIDTH( 8 ),
    .din3_WIDTH( 8 ),
    .din4_WIDTH( 8 ),
    .din5_WIDTH( 8 ),
    .din6_WIDTH( 8 ),
    .din7_WIDTH( 8 ),
    .din8_WIDTH( 8 ),
    .din9_WIDTH( 8 ),
    .dout_WIDTH( 8 ))
mux_98_8_1_1_U18(
    .din0(p_read57),
    .din1(p_read58),
    .din2(p_read59),
    .din3(p_read60),
    .din4(p_read61),
    .din5(p_read62),
    .din6(p_read63),
    .din7(p_read64),
    .din8(p_read65),
    .din9(p_read17),
    .dout(tmp_s_fu_1520_p11)
);

MPCcore_mux_98_8_1_1 #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 8 ),
    .din1_WIDTH( 8 ),
    .din2_WIDTH( 8 ),
    .din3_WIDTH( 8 ),
    .din4_WIDTH( 8 ),
    .din5_WIDTH( 8 ),
    .din6_WIDTH( 8 ),
    .din7_WIDTH( 8 ),
    .din8_WIDTH( 8 ),
    .din9_WIDTH( 8 ),
    .dout_WIDTH( 8 ))
mux_98_8_1_1_U19(
    .din0(p_read66),
    .din1(p_read67),
    .din2(p_read68),
    .din3(p_read69),
    .din4(p_read70),
    .din5(p_read71),
    .din6(p_read72),
    .din7(p_read73),
    .din8(p_read74),
    .din9(p_read18),
    .dout(tmp_293_fu_1576_p11)
);

MPCcore_mux_98_8_1_1 #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 8 ),
    .din1_WIDTH( 8 ),
    .din2_WIDTH( 8 ),
    .din3_WIDTH( 8 ),
    .din4_WIDTH( 8 ),
    .din5_WIDTH( 8 ),
    .din6_WIDTH( 8 ),
    .din7_WIDTH( 8 ),
    .din8_WIDTH( 8 ),
    .din9_WIDTH( 8 ),
    .dout_WIDTH( 8 ))
mux_98_8_1_1_U20(
    .din0(p_read75),
    .din1(p_read76),
    .din2(p_read77),
    .din3(p_read78),
    .din4(p_read79),
    .din5(p_read80),
    .din6(p_read81),
    .din7(p_read82),
    .din8(p_read83),
    .din9(p_read19),
    .dout(tmp_294_fu_1632_p11)
);

MPCcore_mux_98_8_1_1 #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 8 ),
    .din1_WIDTH( 8 ),
    .din2_WIDTH( 8 ),
    .din3_WIDTH( 8 ),
    .din4_WIDTH( 8 ),
    .din5_WIDTH( 8 ),
    .din6_WIDTH( 8 ),
    .din7_WIDTH( 8 ),
    .din8_WIDTH( 8 ),
    .din9_WIDTH( 8 ),
    .dout_WIDTH( 8 ))
mux_98_8_1_1_U21(
    .din0(p_read84),
    .din1(p_read85),
    .din2(p_read86),
    .din3(p_read87),
    .din4(p_read88),
    .din5(p_read89),
    .din6(p_read90),
    .din7(p_read91),
    .din8(p_read92),
    .din9(p_read20),
    .dout(tmp_295_fu_1688_p11)
);

MPCcore_mux_98_8_1_1 #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 8 ),
    .din1_WIDTH( 8 ),
    .din2_WIDTH( 8 ),
    .din3_WIDTH( 8 ),
    .din4_WIDTH( 8 ),
    .din5_WIDTH( 8 ),
    .din6_WIDTH( 8 ),
    .din7_WIDTH( 8 ),
    .din8_WIDTH( 8 ),
    .din9_WIDTH( 8 ),
    .dout_WIDTH( 8 ))
mux_98_8_1_1_U22(
    .din0(p_read93),
    .din1(p_read94),
    .din2(p_read95),
    .din3(p_read96),
    .din4(p_read97),
    .din5(p_read98),
    .din6(p_read99),
    .din7(p_read100),
    .din8(p_read101),
    .din9(p_read21),
    .dout(tmp_296_fu_1744_p11)
);

MPCcore_mux_98_8_1_1 #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 8 ),
    .din1_WIDTH( 8 ),
    .din2_WIDTH( 8 ),
    .din3_WIDTH( 8 ),
    .din4_WIDTH( 8 ),
    .din5_WIDTH( 8 ),
    .din6_WIDTH( 8 ),
    .din7_WIDTH( 8 ),
    .din8_WIDTH( 8 ),
    .din9_WIDTH( 8 ),
    .dout_WIDTH( 8 ))
mux_98_8_1_1_U23(
    .din0(p_read102),
    .din1(p_read103),
    .din2(p_read104),
    .din3(p_read105),
    .din4(p_read106),
    .din5(p_read107),
    .din6(p_read108),
    .din7(p_read109),
    .din8(p_read110),
    .din9(p_read22),
    .dout(tmp_297_fu_1800_p11)
);

MPCcore_mux_98_8_1_1 #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 8 ),
    .din1_WIDTH( 8 ),
    .din2_WIDTH( 8 ),
    .din3_WIDTH( 8 ),
    .din4_WIDTH( 8 ),
    .din5_WIDTH( 8 ),
    .din6_WIDTH( 8 ),
    .din7_WIDTH( 8 ),
    .din8_WIDTH( 8 ),
    .din9_WIDTH( 8 ),
    .dout_WIDTH( 8 ))
mux_98_8_1_1_U24(
    .din0(p_read111),
    .din1(p_read112),
    .din2(p_read113),
    .din3(p_read114),
    .din4(p_read115),
    .din5(p_read116),
    .din6(p_read117),
    .din7(p_read118),
    .din8(p_read119),
    .din9(p_read23),
    .dout(tmp_298_fu_1856_p11)
);

MPCcore_mux_98_8_1_1 #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 8 ),
    .din1_WIDTH( 8 ),
    .din2_WIDTH( 8 ),
    .din3_WIDTH( 8 ),
    .din4_WIDTH( 8 ),
    .din5_WIDTH( 8 ),
    .din6_WIDTH( 8 ),
    .din7_WIDTH( 8 ),
    .din8_WIDTH( 8 ),
    .din9_WIDTH( 8 ),
    .dout_WIDTH( 8 ))
mux_98_8_1_1_U25(
    .din0(p_read120),
    .din1(p_read121),
    .din2(p_read122),
    .din3(p_read123),
    .din4(p_read124),
    .din5(p_read125),
    .din6(p_read126),
    .din7(p_read127),
    .din8(p_read128),
    .din9(p_read24),
    .dout(tmp_299_fu_1912_p11)
);

MPCcore_mux_98_8_1_1 #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 8 ),
    .din1_WIDTH( 8 ),
    .din2_WIDTH( 8 ),
    .din3_WIDTH( 8 ),
    .din4_WIDTH( 8 ),
    .din5_WIDTH( 8 ),
    .din6_WIDTH( 8 ),
    .din7_WIDTH( 8 ),
    .din8_WIDTH( 8 ),
    .din9_WIDTH( 8 ),
    .dout_WIDTH( 8 ))
mux_98_8_1_1_U26(
    .din0(p_read129),
    .din1(p_read130),
    .din2(p_read131),
    .din3(p_read132),
    .din4(p_read133),
    .din5(p_read134),
    .din6(p_read135),
    .din7(p_read136),
    .din8(p_read137),
    .din9(p_read25),
    .dout(tmp_300_fu_1968_p11)
);

MPCcore_mux_98_8_1_1 #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 8 ),
    .din1_WIDTH( 8 ),
    .din2_WIDTH( 8 ),
    .din3_WIDTH( 8 ),
    .din4_WIDTH( 8 ),
    .din5_WIDTH( 8 ),
    .din6_WIDTH( 8 ),
    .din7_WIDTH( 8 ),
    .din8_WIDTH( 8 ),
    .din9_WIDTH( 8 ),
    .dout_WIDTH( 8 ))
mux_98_8_1_1_U27(
    .din0(p_read138),
    .din1(p_read139),
    .din2(p_read140),
    .din3(p_read141),
    .din4(p_read142),
    .din5(p_read143),
    .din6(p_read144),
    .din7(p_read145),
    .din8(p_read146),
    .din9(p_read26),
    .dout(tmp_301_fu_2024_p11)
);

MPCcore_mux_98_8_1_1 #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 8 ),
    .din1_WIDTH( 8 ),
    .din2_WIDTH( 8 ),
    .din3_WIDTH( 8 ),
    .din4_WIDTH( 8 ),
    .din5_WIDTH( 8 ),
    .din6_WIDTH( 8 ),
    .din7_WIDTH( 8 ),
    .din8_WIDTH( 8 ),
    .din9_WIDTH( 8 ),
    .dout_WIDTH( 8 ))
mux_98_8_1_1_U28(
    .din0(p_read147),
    .din1(p_read148),
    .din2(p_read149),
    .din3(p_read150),
    .din4(p_read151),
    .din5(p_read152),
    .din6(p_read153),
    .din7(p_read154),
    .din8(p_read155),
    .din9(p_read27),
    .dout(tmp_302_fu_2080_p11)
);

MPCcore_mux_98_8_1_1 #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 8 ),
    .din1_WIDTH( 8 ),
    .din2_WIDTH( 8 ),
    .din3_WIDTH( 8 ),
    .din4_WIDTH( 8 ),
    .din5_WIDTH( 8 ),
    .din6_WIDTH( 8 ),
    .din7_WIDTH( 8 ),
    .din8_WIDTH( 8 ),
    .din9_WIDTH( 8 ),
    .dout_WIDTH( 8 ))
mux_98_8_1_1_U29(
    .din0(p_read156),
    .din1(p_read157),
    .din2(p_read158),
    .din3(p_read159),
    .din4(p_read160),
    .din5(p_read161),
    .din6(p_read162),
    .din7(p_read163),
    .din8(p_read164),
    .din9(p_read28),
    .dout(tmp_303_fu_2136_p11)
);

MPCcore_mux_98_8_1_1 #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 8 ),
    .din1_WIDTH( 8 ),
    .din2_WIDTH( 8 ),
    .din3_WIDTH( 8 ),
    .din4_WIDTH( 8 ),
    .din5_WIDTH( 8 ),
    .din6_WIDTH( 8 ),
    .din7_WIDTH( 8 ),
    .din8_WIDTH( 8 ),
    .din9_WIDTH( 8 ),
    .dout_WIDTH( 8 ))
mux_98_8_1_1_U30(
    .din0(p_read165),
    .din1(p_read166),
    .din2(p_read167),
    .din3(p_read168),
    .din4(p_read169),
    .din5(p_read170),
    .din6(p_read171),
    .din7(p_read172),
    .din8(p_read173),
    .din9(p_read29),
    .dout(tmp_304_fu_2192_p11)
);

MPCcore_mux_98_8_1_1 #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 8 ),
    .din1_WIDTH( 8 ),
    .din2_WIDTH( 8 ),
    .din3_WIDTH( 8 ),
    .din4_WIDTH( 8 ),
    .din5_WIDTH( 8 ),
    .din6_WIDTH( 8 ),
    .din7_WIDTH( 8 ),
    .din8_WIDTH( 8 ),
    .din9_WIDTH( 8 ),
    .dout_WIDTH( 8 ))
mux_98_8_1_1_U31(
    .din0(p_read174),
    .din1(p_read175),
    .din2(p_read176),
    .din3(p_read177),
    .din4(p_read178),
    .din5(p_read179),
    .din6(p_read180),
    .din7(p_read181),
    .din8(p_read182),
    .din9(p_read30),
    .dout(tmp_305_fu_2248_p11)
);

MPCcore_mux_98_8_1_1 #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 8 ),
    .din1_WIDTH( 8 ),
    .din2_WIDTH( 8 ),
    .din3_WIDTH( 8 ),
    .din4_WIDTH( 8 ),
    .din5_WIDTH( 8 ),
    .din6_WIDTH( 8 ),
    .din7_WIDTH( 8 ),
    .din8_WIDTH( 8 ),
    .din9_WIDTH( 8 ),
    .dout_WIDTH( 8 ))
mux_98_8_1_1_U32(
    .din0(p_read183),
    .din1(p_read184),
    .din2(p_read185),
    .din3(p_read186),
    .din4(p_read187),
    .din5(p_read188),
    .din6(p_read189),
    .din7(p_read190),
    .din8(p_read191),
    .din9(p_read31),
    .dout(tmp_306_fu_2304_p11)
);

assign and_ln937_fu_1486_p2 = (icmp_ln1073_fu_1480_p2 & icmp_ln1065_fu_1474_p2);

assign ap_ready = 1'b1;

assign ap_return_0 = select_ln859_fu_1436_p3;

assign ap_return_1 = getWokerList_buffer_fu_1512_p3;

assign ap_return_10 = getWokerList_buffer_18_fu_2016_p3;

assign ap_return_11 = getWokerList_buffer_20_fu_2072_p3;

assign ap_return_12 = getWokerList_buffer_22_fu_2128_p3;

assign ap_return_13 = getWokerList_buffer_24_fu_2184_p3;

assign ap_return_14 = getWokerList_buffer_26_fu_2240_p3;

assign ap_return_15 = getWokerList_buffer_28_fu_2296_p3;

assign ap_return_16 = getWokerList_buffer_30_fu_2352_p3;

assign ap_return_2 = getWokerList_buffer_2_fu_1568_p3;

assign ap_return_3 = getWokerList_buffer_4_fu_1624_p3;

assign ap_return_4 = getWokerList_buffer_6_fu_1680_p3;

assign ap_return_5 = getWokerList_buffer_8_fu_1736_p3;

assign ap_return_6 = getWokerList_buffer_10_fu_1792_p3;

assign ap_return_7 = getWokerList_buffer_12_fu_1848_p3;

assign ap_return_8 = getWokerList_buffer_14_fu_1904_p3;

assign ap_return_9 = getWokerList_buffer_16_fu_1960_p3;

assign getHelperList_buffer_fu_1430_p2 = ((p_read != 8'd2) ? 1'b1 : 1'b0);

assign getWokerList_buffer_10_fu_1792_p3 = ((icmp_ln1065_10_fu_1780_p2[0:0] == 1'b1) ? t2_V_4_fu_1774_p2 : getWokerList_buffer_9_fu_1786_p2);

assign getWokerList_buffer_11_fu_1842_p2 = (8'd26 - t1_V_6_fu_1824_p2);

assign getWokerList_buffer_12_fu_1848_p3 = ((icmp_ln1065_11_fu_1836_p2[0:0] == 1'b1) ? t2_V_5_fu_1830_p2 : getWokerList_buffer_11_fu_1842_p2);

assign getWokerList_buffer_13_fu_1898_p2 = (8'd26 - t1_V_7_fu_1880_p2);

assign getWokerList_buffer_14_fu_1904_p3 = ((icmp_ln1065_12_fu_1892_p2[0:0] == 1'b1) ? t2_V_6_fu_1886_p2 : getWokerList_buffer_13_fu_1898_p2);

assign getWokerList_buffer_15_fu_1954_p2 = (8'd26 - t1_V_8_fu_1936_p2);

assign getWokerList_buffer_16_fu_1960_p3 = ((icmp_ln1065_13_fu_1948_p2[0:0] == 1'b1) ? t2_V_7_fu_1942_p2 : getWokerList_buffer_15_fu_1954_p2);

assign getWokerList_buffer_17_fu_2010_p2 = (8'd26 - t1_V_9_fu_1992_p2);

assign getWokerList_buffer_18_fu_2016_p3 = ((icmp_ln1065_14_fu_2004_p2[0:0] == 1'b1) ? t2_V_8_fu_1998_p2 : getWokerList_buffer_17_fu_2010_p2);

assign getWokerList_buffer_19_fu_2066_p2 = (8'd26 - t1_V_10_fu_2048_p2);

assign getWokerList_buffer_1_fu_1562_p2 = (8'd26 - t1_V_1_fu_1544_p2);

assign getWokerList_buffer_20_fu_2072_p3 = ((icmp_ln1065_15_fu_2060_p2[0:0] == 1'b1) ? t2_V_9_fu_2054_p2 : getWokerList_buffer_19_fu_2066_p2);

assign getWokerList_buffer_21_fu_2122_p2 = (8'd26 - t1_V_11_fu_2104_p2);

assign getWokerList_buffer_22_fu_2128_p3 = ((icmp_ln1065_16_fu_2116_p2[0:0] == 1'b1) ? t2_V_10_fu_2110_p2 : getWokerList_buffer_21_fu_2122_p2);

assign getWokerList_buffer_23_fu_2178_p2 = (8'd26 - t1_V_12_fu_2160_p2);

assign getWokerList_buffer_24_fu_2184_p3 = ((icmp_ln1065_17_fu_2172_p2[0:0] == 1'b1) ? t2_V_11_fu_2166_p2 : getWokerList_buffer_23_fu_2178_p2);

assign getWokerList_buffer_25_fu_2234_p2 = (8'd26 - t1_V_13_fu_2216_p2);

assign getWokerList_buffer_26_fu_2240_p3 = ((icmp_ln1065_18_fu_2228_p2[0:0] == 1'b1) ? t2_V_12_fu_2222_p2 : getWokerList_buffer_25_fu_2234_p2);

assign getWokerList_buffer_27_fu_2290_p2 = (8'd26 - t1_V_14_fu_2272_p2);

assign getWokerList_buffer_28_fu_2296_p3 = ((icmp_ln1065_19_fu_2284_p2[0:0] == 1'b1) ? t2_V_13_fu_2278_p2 : getWokerList_buffer_27_fu_2290_p2);

assign getWokerList_buffer_29_fu_2346_p2 = (8'd26 - t1_V_15_fu_2328_p2);

assign getWokerList_buffer_2_fu_1568_p3 = ((icmp_ln1065_6_fu_1556_p2[0:0] == 1'b1) ? t2_V_fu_1550_p2 : getWokerList_buffer_1_fu_1562_p2);

assign getWokerList_buffer_30_fu_2352_p3 = ((icmp_ln1065_20_fu_2340_p2[0:0] == 1'b1) ? t2_V_14_fu_2334_p2 : getWokerList_buffer_29_fu_2346_p2);

assign getWokerList_buffer_3_fu_1618_p2 = (8'd26 - t1_V_2_fu_1600_p2);

assign getWokerList_buffer_4_fu_1624_p3 = ((icmp_ln1065_7_fu_1612_p2[0:0] == 1'b1) ? t2_V_1_fu_1606_p2 : getWokerList_buffer_3_fu_1618_p2);

assign getWokerList_buffer_5_fu_1674_p2 = (8'd26 - t1_V_3_fu_1656_p2);

assign getWokerList_buffer_6_fu_1680_p3 = ((icmp_ln1065_8_fu_1668_p2[0:0] == 1'b1) ? t2_V_2_fu_1662_p2 : getWokerList_buffer_5_fu_1674_p2);

assign getWokerList_buffer_7_fu_1730_p2 = (8'd26 - t1_V_4_fu_1712_p2);

assign getWokerList_buffer_8_fu_1736_p3 = ((icmp_ln1065_9_fu_1724_p2[0:0] == 1'b1) ? t2_V_3_fu_1718_p2 : getWokerList_buffer_7_fu_1730_p2);

assign getWokerList_buffer_9_fu_1786_p2 = (8'd26 - t1_V_5_fu_1768_p2);

assign getWokerList_buffer_fu_1512_p3 = ((and_ln937_fu_1486_p2[0:0] == 1'b1) ? sub_ln938_fu_1506_p2 : 8'd255);

assign icmp_ln1065_10_fu_1780_p2 = ((p_read21 == 8'd0) ? 1'b1 : 1'b0);

assign icmp_ln1065_11_fu_1836_p2 = ((p_read22 == 8'd0) ? 1'b1 : 1'b0);

assign icmp_ln1065_12_fu_1892_p2 = ((p_read23 == 8'd0) ? 1'b1 : 1'b0);

assign icmp_ln1065_13_fu_1948_p2 = ((p_read24 == 8'd0) ? 1'b1 : 1'b0);

assign icmp_ln1065_14_fu_2004_p2 = ((p_read25 == 8'd0) ? 1'b1 : 1'b0);

assign icmp_ln1065_15_fu_2060_p2 = ((p_read26 == 8'd0) ? 1'b1 : 1'b0);

assign icmp_ln1065_16_fu_2116_p2 = ((p_read27 == 8'd0) ? 1'b1 : 1'b0);

assign icmp_ln1065_17_fu_2172_p2 = ((p_read28 == 8'd0) ? 1'b1 : 1'b0);

assign icmp_ln1065_18_fu_2228_p2 = ((p_read29 == 8'd0) ? 1'b1 : 1'b0);

assign icmp_ln1065_19_fu_2284_p2 = ((p_read30 == 8'd0) ? 1'b1 : 1'b0);

assign icmp_ln1065_20_fu_2340_p2 = ((p_read31 == 8'd0) ? 1'b1 : 1'b0);

assign icmp_ln1065_5_fu_1492_p2 = ((p_read16 == 8'd0) ? 1'b1 : 1'b0);

assign icmp_ln1065_6_fu_1556_p2 = ((p_read17 == 8'd0) ? 1'b1 : 1'b0);

assign icmp_ln1065_7_fu_1612_p2 = ((p_read18 == 8'd0) ? 1'b1 : 1'b0);

assign icmp_ln1065_8_fu_1668_p2 = ((p_read19 == 8'd0) ? 1'b1 : 1'b0);

assign icmp_ln1065_9_fu_1724_p2 = ((p_read20 == 8'd0) ? 1'b1 : 1'b0);

assign icmp_ln1065_fu_1474_p2 = ((p_read == 8'd0) ? 1'b1 : 1'b0);

assign icmp_ln1073_fu_1480_p2 = (($signed(t1_V_fu_1468_p2) < $signed(8'd26)) ? 1'b1 : 1'b0);

assign select_ln859_fu_1436_p3 = ((getHelperList_buffer_fu_1430_p2[0:0] == 1'b1) ? 8'd255 : 8'd0);

assign select_ln938_fu_1498_p3 = ((icmp_ln1065_5_fu_1492_p2[0:0] == 1'b1) ? 8'd2 : 8'd26);

assign sub_ln938_fu_1506_p2 = (select_ln938_fu_1498_p3 - t1_V_fu_1468_p2);

assign t1_V_10_fu_2048_p2 = (tmp_301_fu_2024_p11 + p_read42);

assign t1_V_11_fu_2104_p2 = (tmp_302_fu_2080_p11 + p_read43);

assign t1_V_12_fu_2160_p2 = (tmp_303_fu_2136_p11 + p_read44);

assign t1_V_13_fu_2216_p2 = (tmp_304_fu_2192_p11 + p_read45);

assign t1_V_14_fu_2272_p2 = (tmp_305_fu_2248_p11 + p_read46);

assign t1_V_15_fu_2328_p2 = (tmp_306_fu_2304_p11 + p_read47);

assign t1_V_1_fu_1544_p2 = (tmp_s_fu_1520_p11 + p_read33);

assign t1_V_2_fu_1600_p2 = (tmp_293_fu_1576_p11 + p_read34);

assign t1_V_3_fu_1656_p2 = (tmp_294_fu_1632_p11 + p_read35);

assign t1_V_4_fu_1712_p2 = (tmp_295_fu_1688_p11 + p_read36);

assign t1_V_5_fu_1768_p2 = (tmp_296_fu_1744_p11 + p_read37);

assign t1_V_6_fu_1824_p2 = (tmp_297_fu_1800_p11 + p_read38);

assign t1_V_7_fu_1880_p2 = (tmp_298_fu_1856_p11 + p_read39);

assign t1_V_8_fu_1936_p2 = (tmp_299_fu_1912_p11 + p_read40);

assign t1_V_9_fu_1992_p2 = (tmp_300_fu_1968_p11 + p_read41);

assign t1_V_fu_1468_p2 = (tmp_fu_1444_p11 + p_read32);

assign t2_V_10_fu_2110_p2 = (t1_V_11_fu_2104_p2 ^ 8'd255);

assign t2_V_11_fu_2166_p2 = (t1_V_12_fu_2160_p2 ^ 8'd255);

assign t2_V_12_fu_2222_p2 = (t1_V_13_fu_2216_p2 ^ 8'd255);

assign t2_V_13_fu_2278_p2 = (t1_V_14_fu_2272_p2 ^ 8'd255);

assign t2_V_14_fu_2334_p2 = (t1_V_15_fu_2328_p2 ^ 8'd255);

assign t2_V_1_fu_1606_p2 = (t1_V_2_fu_1600_p2 ^ 8'd255);

assign t2_V_2_fu_1662_p2 = (t1_V_3_fu_1656_p2 ^ 8'd255);

assign t2_V_3_fu_1718_p2 = (t1_V_4_fu_1712_p2 ^ 8'd255);

assign t2_V_4_fu_1774_p2 = (t1_V_5_fu_1768_p2 ^ 8'd255);

assign t2_V_5_fu_1830_p2 = (t1_V_6_fu_1824_p2 ^ 8'd255);

assign t2_V_6_fu_1886_p2 = (t1_V_7_fu_1880_p2 ^ 8'd255);

assign t2_V_7_fu_1942_p2 = (t1_V_8_fu_1936_p2 ^ 8'd255);

assign t2_V_8_fu_1998_p2 = (t1_V_9_fu_1992_p2 ^ 8'd255);

assign t2_V_9_fu_2054_p2 = (t1_V_10_fu_2048_p2 ^ 8'd255);

assign t2_V_fu_1550_p2 = (t1_V_1_fu_1544_p2 ^ 8'd255);

endmodule //MPCcore_MPCallocate_0627