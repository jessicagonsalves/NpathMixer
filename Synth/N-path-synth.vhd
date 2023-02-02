library IEEE;

use IEEE.std_logic_1164.all;

package CONV_PACK_npath_width8_width_coeff4_width_phases4 is

-- define attributes
attribute ENUM_ENCODING : STRING;

end CONV_PACK_npath_width8_width_coeff4_width_phases4;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_npath_width8_width_coeff4_width_phases4.all;

entity npath_width8_width_coeff4_width_phases4_DW01_inc_1 is

   port( A : in std_logic_vector (30 downto 0);  SUM : out std_logic_vector (30
         downto 0));

end npath_width8_width_coeff4_width_phases4_DW01_inc_1;

architecture SYN_cla of npath_width8_width_coeff4_width_phases4_DW01_inc_1 is

   component CLKIN3
      port( A : in std_logic;  Q : out std_logic);
   end component;
   
   component INV3
      port( A : in std_logic;  Q : out std_logic);
   end component;
   
   component NAND22
      port( A, B : in std_logic;  Q : out std_logic);
   end component;
   
   component XOR21
      port( A, B : in std_logic;  Q : out std_logic);
   end component;
   
   component NOR21
      port( A, B : in std_logic;  Q : out std_logic);
   end component;
   
   component XNR21
      port( A, B : in std_logic;  Q : out std_logic);
   end component;
   
   component NAND31
      port( A, B, C : in std_logic;  Q : out std_logic);
   end component;
   
   component NAND41
      port( A, B, C, D : in std_logic;  Q : out std_logic);
   end component;
   
   component NOR31
      port( A, B, C : in std_logic;  Q : out std_logic);
   end component;
   
   signal SUM_30_port, SUM_29_port, SUM_28_port, SUM_27_port, SUM_26_port,
      SUM_25_port, SUM_24_port, SUM_23_port, SUM_22_port, SUM_21_port,
      SUM_20_port, SUM_19_port, SUM_18_port, SUM_17_port, SUM_16_port,
      SUM_15_port, SUM_14_port, SUM_13_port, SUM_12_port, SUM_11_port,
      SUM_10_port, SUM_9_port, SUM_8_port, SUM_7_port, SUM_6_port, SUM_5_port,
      SUM_4_port, SUM_3_port, SUM_2_port, SUM_1_port, SUM_0_port, n1, n2, n3,
      n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19,
      n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34
      , n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48,
      n49, n50, n51, n52, n53, n54, n55, n56, n57, n58, n59, n60, n61, n62, n63
      , n64, n65, n66, n67, n68, n69, n70, n71, n72, n73, n74, n75, n76, n77,
      n78, n79, n80, n81, n82, n83, n84, n85, n86, n87, n88, n89, n90, n91, n92
      , n93, n94 : std_logic;

begin
   SUM <= ( SUM_30_port, SUM_29_port, SUM_28_port, SUM_27_port, SUM_26_port,
      SUM_25_port, SUM_24_port, SUM_23_port, SUM_22_port, SUM_21_port,
      SUM_20_port, SUM_19_port, SUM_18_port, SUM_17_port, SUM_16_port,
      SUM_15_port, SUM_14_port, SUM_13_port, SUM_12_port, SUM_11_port,
      SUM_10_port, SUM_9_port, SUM_8_port, SUM_7_port, SUM_6_port, SUM_5_port,
      SUM_4_port, SUM_3_port, SUM_2_port, SUM_1_port, SUM_0_port );
   
   U2 : NAND22 port map( A => n37, B => n52, Q => n51);
   U3 : NAND22 port map( A => n78, B => n1, Q => n77);
   U4 : XOR21 port map( A => n43, B => n46, Q => SUM_23_port);
   U5 : XOR21 port map( A => n30, B => n31, Q => SUM_27_port);
   U6 : NAND22 port map( A => n32, B => n33, Q => n31);
   U7 : NOR21 port map( A => n34, B => n35, Q => n32);
   U8 : NAND22 port map( A => n47, B => n48, Q => n46);
   U9 : NOR21 port map( A => n49, B => n42, Q => n47);
   U10 : XOR21 port map( A => n22, B => n21, Q => SUM_29_port);
   U11 : XNR21 port map( A => n34, B => n36, Q => SUM_26_port);
   U12 : NOR21 port map( A => n25, B => n35, Q => n36);
   U13 : XNR21 port map( A => n56, B => n62, Q => SUM_18_port);
   U14 : NOR21 port map( A => n55, B => n63, Q => n62);
   U15 : XNR21 port map( A => n68, B => n76, Q => SUM_14_port);
   U16 : NOR21 port map( A => n75, B => n77, Q => n76);
   U17 : XNR21 port map( A => n42, B => n50, Q => SUM_22_port);
   U18 : NOR21 port map( A => n49, B => n51, Q => n50);
   U19 : XOR21 port map( A => n57, B => n60, Q => SUM_19_port);
   U20 : NAND22 port map( A => n87, B => n1, Q => n86);
   U21 : NOR21 port map( A => n81, B => n82, Q => n87);
   U22 : XOR21 port map( A => n4, B => n5, Q => SUM_7_port);
   U23 : XOR21 port map( A => n69, B => n72, Q => SUM_15_port);
   U24 : XNR21 port map( A => n84, B => n85, Q => SUM_12_port);
   U25 : NOR21 port map( A => n83, B => n86, Q => n85);
   U26 : XNR21 port map( A => n58, B => n59, Q => SUM_20_port);
   U27 : NOR21 port map( A => n57, B => n60, Q => n59);
   U28 : NAND22 port map( A => n61, B => n37, Q => n60);
   U29 : NOR21 port map( A => n55, B => n56, Q => n61);
   U30 : NAND22 port map( A => n6, B => n7, Q => n5);
   U31 : NOR21 port map( A => n8, B => n9, Q => n6);
   U32 : NAND22 port map( A => n73, B => n74, Q => n72);
   U33 : NOR21 port map( A => n75, B => n68, Q => n73);
   U34 : NAND22 port map( A => n79, B => n80, Q => n65);
   U35 : NOR21 port map( A => n83, B => n84, Q => n79);
   U36 : NOR21 port map( A => n81, B => n82, Q => n80);
   U37 : NAND22 port map( A => n53, B => n54, Q => n39);
   U38 : NOR21 port map( A => n57, B => n58, Q => n53);
   U39 : NOR21 port map( A => n55, B => n56, Q => n54);
   U40 : XOR21 port map( A => n17, B => n18, Q => SUM_3_port);
   U41 : XNR21 port map( A => n9, B => n10, Q => SUM_6_port);
   U42 : NOR21 port map( A => n8, B => n11, Q => n10);
   U43 : XNR21 port map( A => n82, B => n89, Q => SUM_10_port);
   U44 : NOR21 port map( A => n81, B => n88, Q => n89);
   U45 : NAND41 port map( A => A(1), B => A(2), C => n90, D => n91, Q => n88);
   U46 : NOR21 port map( A => n92, B => n93, Q => n91);
   U47 : NOR21 port map( A => SUM_0_port, B => n94, Q => n90);
   U48 : NAND22 port map( A => A(8), B => A(7), Q => n93);
   U49 : NAND22 port map( A => n37, B => n38, Q => n25);
   U50 : NOR21 port map( A => n39, B => n40, Q => n38);
   U51 : NAND31 port map( A => n41, B => A(24), C => A(21), Q => n40);
   U52 : NOR21 port map( A => n42, B => n43, Q => n41);
   U53 : XOR21 port map( A => A(25), B => n33, Q => SUM_25_port);
   U54 : XNR21 port map( A => n19, B => n20, Q => SUM_30_port);
   U55 : INV3 port map( A => A(30), Q => n19);
   U56 : NOR21 port map( A => n21, B => n22, Q => n20);
   U57 : XNR21 port map( A => n44, B => n45, Q => SUM_24_port);
   U58 : INV3 port map( A => A(24), Q => n44);
   U59 : NOR21 port map( A => n43, B => n46, Q => n45);
   U60 : XNR21 port map( A => n28, B => n29, Q => SUM_28_port);
   U61 : INV3 port map( A => A(28), Q => n28);
   U62 : NOR21 port map( A => n30, B => n31, Q => n29);
   U63 : NAND22 port map( A => n1, B => n64, Q => n63);
   U64 : NOR21 port map( A => n65, B => n66, Q => n64);
   U65 : NAND31 port map( A => n67, B => A(16), C => A(13), Q => n66);
   U66 : NOR21 port map( A => n68, B => n69, Q => n67);
   U67 : INV3 port map( A => A(0), Q => SUM_0_port);
   U68 : NAND22 port map( A => A(6), B => A(5), Q => n92);
   U69 : NAND22 port map( A => A(4), B => A(3), Q => n94);
   U70 : INV3 port map( A => n24, Q => n21);
   U71 : NOR31 port map( A => n25, B => n26, C => n27, Q => n24);
   U72 : NAND22 port map( A => A(25), B => A(26), Q => n27);
   U73 : NAND22 port map( A => A(28), B => A(27), Q => n26);
   U74 : XOR21 port map( A => A(13), B => n74, Q => SUM_13_port);
   U75 : XOR21 port map( A => A(21), B => n48, Q => SUM_21_port);
   U76 : XOR21 port map( A => A(9), B => n1, Q => SUM_9_port);
   U77 : XOR21 port map( A => A(17), B => n37, Q => SUM_17_port);
   U78 : XNR21 port map( A => A(11), B => n86, Q => SUM_11_port);
   U79 : XNR21 port map( A => n70, B => n71, Q => SUM_16_port);
   U80 : INV3 port map( A => A(16), Q => n70);
   U81 : NOR21 port map( A => n69, B => n72, Q => n71);
   U82 : XNR21 port map( A => n2, B => n3, Q => SUM_8_port);
   U83 : INV3 port map( A => A(8), Q => n2);
   U84 : NOR21 port map( A => n4, B => n5, Q => n3);
   U85 : INV3 port map( A => A(9), Q => n81);
   U86 : INV3 port map( A => A(17), Q => n55);
   U87 : INV3 port map( A => A(19), Q => n57);
   U88 : INV3 port map( A => A(14), Q => n68);
   U89 : INV3 port map( A => A(22), Q => n42);
   U90 : INV3 port map( A => A(15), Q => n69);
   U91 : INV3 port map( A => A(23), Q => n43);
   U92 : INV3 port map( A => A(10), Q => n82);
   U93 : INV3 port map( A => A(18), Q => n56);
   U94 : INV3 port map( A => A(11), Q => n83);
   U95 : INV3 port map( A => A(2), Q => n13);
   U96 : INV3 port map( A => A(20), Q => n58);
   U97 : INV3 port map( A => A(12), Q => n84);
   U98 : NAND41 port map( A => A(4), B => A(3), C => A(0), D => n12, Q => n11);
   U99 : NOR21 port map( A => n13, B => n14, Q => n12);
   U100 : INV3 port map( A => A(1), Q => n14);
   U101 : NAND31 port map( A => A(1), B => A(2), C => A(0), Q => n18);
   U102 : XOR21 port map( A => A(1), B => A(0), Q => SUM_1_port);
   U103 : XOR21 port map( A => A(5), B => n7, Q => SUM_5_port);
   U104 : XNR21 port map( A => n15, B => n16, Q => SUM_4_port);
   U105 : INV3 port map( A => A(4), Q => n15);
   U106 : NOR21 port map( A => n17, B => n18, Q => n16);
   U107 : XOR21 port map( A => n13, B => n23, Q => SUM_2_port);
   U108 : NAND22 port map( A => A(1), B => A(0), Q => n23);
   U109 : INV3 port map( A => A(5), Q => n8);
   U110 : INV3 port map( A => A(13), Q => n75);
   U111 : INV3 port map( A => A(21), Q => n49);
   U112 : INV3 port map( A => A(3), Q => n17);
   U113 : INV3 port map( A => A(25), Q => n35);
   U114 : INV3 port map( A => A(26), Q => n34);
   U115 : INV3 port map( A => A(7), Q => n4);
   U116 : INV3 port map( A => A(27), Q => n30);
   U117 : INV3 port map( A => A(6), Q => n9);
   U118 : INV3 port map( A => A(29), Q => n22);
   U119 : CLKIN3 port map( A => n11, Q => n7);
   U120 : CLKIN3 port map( A => n25, Q => n33);
   U121 : CLKIN3 port map( A => n51, Q => n48);
   U122 : CLKIN3 port map( A => n39, Q => n52);
   U123 : CLKIN3 port map( A => n63, Q => n37);
   U124 : CLKIN3 port map( A => n77, Q => n74);
   U125 : CLKIN3 port map( A => n65, Q => n78);
   U126 : CLKIN3 port map( A => n88, Q => n1);

end SYN_cla;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_npath_width8_width_coeff4_width_phases4.all;

entity npath_width8_width_coeff4_width_phases4_DW01_sub_0 is

   port( A, B : in std_logic_vector (8 downto 0);  CI : in std_logic;  DIFF :
         out std_logic_vector (8 downto 0);  CO : out std_logic);

end npath_width8_width_coeff4_width_phases4_DW01_sub_0;

architecture SYN_rpl of npath_width8_width_coeff4_width_phases4_DW01_sub_0 is

   component INV3
      port( A : in std_logic;  Q : out std_logic);
   end component;
   
   component NOR21
      port( A, B : in std_logic;  Q : out std_logic);
   end component;
   
   component XNR21
      port( A, B : in std_logic;  Q : out std_logic);
   end component;
   
   component ADD32
      port( A, B, CI : in std_logic;  CO, S : out std_logic);
   end component;
   
   signal carry_8_port, carry_7_port, carry_6_port, carry_5_port, carry_4_port,
      carry_3_port, carry_2_port, carry_1_port, n1, n2, n3, n4, n5, n6, n7, n8,
      n9, n10, n_1002 : std_logic;

begin
   
   U2_8 : ADD32 port map( A => A(8), B => n2, CI => carry_8_port, CO => n_1002,
                           S => DIFF(8));
   U2_7 : ADD32 port map( A => A(7), B => n3, CI => carry_7_port, CO =>
                           carry_8_port, S => DIFF(7));
   U2_6 : ADD32 port map( A => A(6), B => n4, CI => carry_6_port, CO =>
                           carry_7_port, S => DIFF(6));
   U2_5 : ADD32 port map( A => A(5), B => n5, CI => carry_5_port, CO =>
                           carry_6_port, S => DIFF(5));
   U2_4 : ADD32 port map( A => A(4), B => n6, CI => carry_4_port, CO =>
                           carry_5_port, S => DIFF(4));
   U2_3 : ADD32 port map( A => A(3), B => n7, CI => carry_3_port, CO =>
                           carry_4_port, S => DIFF(3));
   U2_2 : ADD32 port map( A => A(2), B => n8, CI => carry_2_port, CO =>
                           carry_3_port, S => DIFF(2));
   U2_1 : ADD32 port map( A => A(1), B => n9, CI => carry_1_port, CO =>
                           carry_2_port, S => DIFF(1));
   U1 : XNR21 port map( A => A(0), B => n10, Q => DIFF(0));
   U2 : INV3 port map( A => B(3), Q => n7);
   U3 : INV3 port map( A => B(4), Q => n6);
   U4 : INV3 port map( A => B(5), Q => n5);
   U5 : INV3 port map( A => B(6), Q => n4);
   U6 : INV3 port map( A => B(7), Q => n3);
   U7 : INV3 port map( A => B(2), Q => n8);
   U8 : INV3 port map( A => n1, Q => carry_1_port);
   U9 : INV3 port map( A => B(1), Q => n9);
   U10 : NOR21 port map( A => n10, B => A(0), Q => n1);
   U11 : INV3 port map( A => B(0), Q => n10);
   U12 : INV3 port map( A => B(8), Q => n2);

end SYN_rpl;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_npath_width8_width_coeff4_width_phases4.all;

entity fir_width10_width_coeff4_DW01_add_3 is

   port( A, B : in std_logic_vector (12 downto 0);  CI : in std_logic;  SUM :
         out std_logic_vector (12 downto 0);  CO : out std_logic);

end fir_width10_width_coeff4_DW01_add_3;

architecture SYN_cla of fir_width10_width_coeff4_DW01_add_3 is

   component INV3
      port( A : in std_logic;  Q : out std_logic);
   end component;
   
   component XNR21
      port( A, B : in std_logic;  Q : out std_logic);
   end component;
   
   component XOR21
      port( A, B : in std_logic;  Q : out std_logic);
   end component;
   
   component NAND22
      port( A, B : in std_logic;  Q : out std_logic);
   end component;
   
   component AOI2111
      port( A, B, C, D : in std_logic;  Q : out std_logic);
   end component;
   
   component OAI2111
      port( A, B, C, D : in std_logic;  Q : out std_logic);
   end component;
   
   component NAND31
      port( A, B, C : in std_logic;  Q : out std_logic);
   end component;
   
   component NOR21
      port( A, B : in std_logic;  Q : out std_logic);
   end component;
   
   component IMUX21
      port( A, B, S : in std_logic;  Q : out std_logic);
   end component;
   
   component NOR31
      port( A, B, C : in std_logic;  Q : out std_logic);
   end component;
   
   component AOI211
      port( A, B, C : in std_logic;  Q : out std_logic);
   end component;
   
   component OAI212
      port( A, B, C : in std_logic;  Q : out std_logic);
   end component;
   
   component XOR31
      port( A, B, C : in std_logic;  Q : out std_logic);
   end component;
   
   signal SUM_12_port, SUM_11_port, SUM_10_port, SUM_9_port, SUM_8_port,
      SUM_7_port, SUM_6_port, SUM_5_port, SUM_4_port, n13, n14, n15, n16, n17,
      n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32
      , n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46,
      n47, n48, n49, SUM_3_port : std_logic;

begin
   SUM <= ( SUM_12_port, SUM_11_port, SUM_10_port, SUM_9_port, SUM_8_port,
      SUM_7_port, SUM_6_port, SUM_5_port, SUM_4_port, SUM_3_port, A(2), A(1),
      A(0) );
   
   U17 : OAI212 port map( A => B(8), B => n15, C => n16, Q => SUM_8_port);
   U27 : OAI212 port map( A => B(3), B => A(3), C => n23, Q => n24);
   U31 : OAI212 port map( A => A(11), B => n31, C => B(11), Q => n26);
   U32 : OAI212 port map( A => n30, B => n32, C => n33, Q => n31);
   U34 : XOR31 port map( A => B(11), B => A(11), C => n34, Q => SUM_11_port);
   U35 : OAI212 port map( A => n30, B => n35, C => n33, Q => n34);
   U2 : AOI211 port map( A => n39, B => n44, C => n43, Q => n35);
   U3 : AOI211 port map( A => n18, B => n44, C => n43, Q => n32);
   U4 : NOR21 port map( A => n41, B => n47, Q => n18);
   U5 : INV3 port map( A => A(8), Q => n47);
   U6 : XNR21 port map( A => n39, B => n13, Q => SUM_9_port);
   U7 : NAND22 port map( A => n44, B => n14, Q => n13);
   U8 : XNR21 port map( A => n35, B => n36, Q => SUM_10_port);
   U9 : NOR21 port map( A => n42, B => n30, Q => n36);
   U10 : INV3 port map( A => n33, Q => n42);
   U11 : INV3 port map( A => n37, Q => n39);
   U12 : AOI211 port map( A => n38, B => n46, C => n18, Q => n37);
   U13 : NAND22 port map( A => n47, B => n41, Q => n38);
   U14 : INV3 port map( A => n29, Q => n44);
   U15 : INV3 port map( A => n14, Q => n43);
   U16 : INV3 port map( A => B(8), Q => n41);
   U18 : INV3 port map( A => n19, Q => n46);
   U19 : NOR31 port map( A => n49, B => n23, C => n48, Q => n21);
   U20 : NAND22 port map( A => B(9), B => A(9), Q => n14);
   U21 : NOR21 port map( A => B(9), B => A(9), Q => n29);
   U22 : XNR21 port map( A => n47, B => n19, Q => n15);
   U23 : IMUX21 port map( A => n17, B => n18, S => n46, Q => n16);
   U24 : NOR21 port map( A => A(8), B => n41, Q => n17);
   U25 : NOR21 port map( A => B(10), B => A(10), Q => n30);
   U26 : NAND22 port map( A => B(10), B => A(10), Q => n33);
   U28 : XNR21 port map( A => n48, B => n22, Q => SUM_5_port);
   U29 : NOR21 port map( A => n23, B => n49, Q => n22);
   U30 : NAND31 port map( A => A(6), B => n21, C => A(7), Q => n19);
   U33 : XNR21 port map( A => n25, B => B(12), Q => SUM_12_port);
   U36 : OAI2111 port map( A => n40, B => B(12), C => n26, D => n27, Q => n25);
   U37 : OAI2111 port map( A => B(8), B => A(8), C => n46, D => n28, Q => n27);
   U38 : INV3 port map( A => n31, Q => n40);
   U39 : AOI2111 port map( A => B(12), B => n45, C => n29, D => n30, Q => n28);
   U40 : INV3 port map( A => B(11), Q => n45);
   U41 : INV3 port map( A => A(4), Q => n49);
   U42 : INV3 port map( A => A(5), Q => n48);
   U43 : XNR21 port map( A => n20, B => A(7), Q => SUM_7_port);
   U44 : NAND22 port map( A => A(6), B => n21, Q => n20);
   U45 : NAND22 port map( A => B(3), B => A(3), Q => n23);
   U46 : XOR21 port map( A => A(6), B => n21, Q => SUM_6_port);
   U47 : XNR21 port map( A => n23, B => A(4), Q => SUM_4_port);
   U48 : INV3 port map( A => n24, Q => SUM_3_port);

end SYN_cla;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_npath_width8_width_coeff4_width_phases4.all;

entity fir_width10_width_coeff4_DW01_add_5 is

   port( A, B : in std_logic_vector (14 downto 0);  CI : in std_logic;  SUM :
         out std_logic_vector (14 downto 0);  CO : out std_logic);

end fir_width10_width_coeff4_DW01_add_5;

architecture SYN_cla of fir_width10_width_coeff4_DW01_add_5 is

   component XNR21
      port( A, B : in std_logic;  Q : out std_logic);
   end component;
   
   component INV3
      port( A : in std_logic;  Q : out std_logic);
   end component;
   
   component NOR21
      port( A, B : in std_logic;  Q : out std_logic);
   end component;
   
   component XOR21
      port( A, B : in std_logic;  Q : out std_logic);
   end component;
   
   component AOI211
      port( A, B, C : in std_logic;  Q : out std_logic);
   end component;
   
   component NAND22
      port( A, B : in std_logic;  Q : out std_logic);
   end component;
   
   component OAI212
      port( A, B, C : in std_logic;  Q : out std_logic);
   end component;
   
   component XOR31
      port( A, B, C : in std_logic;  Q : out std_logic);
   end component;
   
   component XNR31
      port( A, B, C : in std_logic;  Q : out std_logic);
   end component;
   
   signal SUM_14_port, SUM_13_port, SUM_12_port, SUM_11_port, SUM_10_port,
      SUM_9_port, SUM_8_port, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20,
      n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35
      , n36, n37 : std_logic;

begin
   SUM <= ( SUM_14_port, SUM_13_port, SUM_12_port, SUM_11_port, SUM_10_port,
      SUM_9_port, SUM_8_port, A(7), A(6), A(5), A(4), A(3), A(2), A(1), A(0) );
   
   U6 : XNR31 port map( A => B(11), B => A(11), C => n24, Q => SUM_11_port);
   U16 : OAI212 port map( A => n20, B => n36, C => n21, Q => n18);
   U19 : OAI212 port map( A => B(8), B => n37, C => n30, Q => SUM_8_port);
   U22 : OAI212 port map( A => A(12), B => n18, C => B(12), Q => n19);
   U23 : XOR31 port map( A => B(12), B => A(12), C => n18, Q => SUM_12_port);
   U24 : OAI212 port map( A => A(11), B => n32, C => B(11), Q => n21);
   U26 : OAI212 port map( A => n15, B => n12, C => n13, Q => n23);
   U32 : OAI212 port map( A => n15, B => n12, C => n13, Q => n25);
   U2 : AOI211 port map( A => n35, B => n23, C => n34, Q => n20);
   U3 : NOR21 port map( A => B(9), B => A(9), Q => n12);
   U4 : NAND22 port map( A => B(9), B => A(9), Q => n13);
   U5 : INV3 port map( A => n26, Q => n34);
   U7 : XNR21 port map( A => n15, B => n11, Q => SUM_9_port);
   U8 : NOR21 port map( A => n33, B => n12, Q => n11);
   U9 : INV3 port map( A => n13, Q => n33);
   U10 : XNR21 port map( A => n25, B => n27, Q => SUM_10_port);
   U11 : NAND22 port map( A => n35, B => n26, Q => n27);
   U12 : INV3 port map( A => A(11), Q => n36);
   U13 : INV3 port map( A => n20, Q => n32);
   U14 : NAND22 port map( A => B(8), B => A(8), Q => n15);
   U15 : NAND22 port map( A => B(10), B => A(10), Q => n26);
   U17 : INV3 port map( A => n22, Q => n35);
   U18 : NOR21 port map( A => B(10), B => A(10), Q => n22);
   U20 : AOI211 port map( A => n35, B => n25, C => n34, Q => n24);
   U21 : INV3 port map( A => B(8), Q => n31);
   U25 : INV3 port map( A => A(8), Q => n37);
   U27 : INV3 port map( A => n14, Q => n30);
   U28 : NOR21 port map( A => A(8), B => n31, Q => n14);
   U29 : AOI211 port map( A => n18, B => A(12), C => n29, Q => n17);
   U30 : INV3 port map( A => n19, Q => n29);
   U31 : XOR21 port map( A => A(14), B => n16, Q => SUM_14_port);
   U33 : NOR21 port map( A => n17, B => n28, Q => n16);
   U34 : INV3 port map( A => A(14), Q => n28);
   U35 : XNR21 port map( A => A(13), B => n17, Q => SUM_13_port);

end SYN_cla;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_npath_width8_width_coeff4_width_phases4.all;

entity fir_width10_width_coeff4_DW01_add_6 is

   port( A, B : in std_logic_vector (14 downto 0);  CI : in std_logic;  SUM :
         out std_logic_vector (14 downto 0);  CO : out std_logic);

end fir_width10_width_coeff4_DW01_add_6;

architecture SYN_cla of fir_width10_width_coeff4_DW01_add_6 is

   component XNR21
      port( A, B : in std_logic;  Q : out std_logic);
   end component;
   
   component INV3
      port( A : in std_logic;  Q : out std_logic);
   end component;
   
   component NOR21
      port( A, B : in std_logic;  Q : out std_logic);
   end component;
   
   component XOR21
      port( A, B : in std_logic;  Q : out std_logic);
   end component;
   
   component AOI211
      port( A, B, C : in std_logic;  Q : out std_logic);
   end component;
   
   component NAND22
      port( A, B : in std_logic;  Q : out std_logic);
   end component;
   
   component OAI212
      port( A, B, C : in std_logic;  Q : out std_logic);
   end component;
   
   component XOR31
      port( A, B, C : in std_logic;  Q : out std_logic);
   end component;
   
   component XNR31
      port( A, B, C : in std_logic;  Q : out std_logic);
   end component;
   
   signal SUM_14_port, SUM_13_port, SUM_12_port, SUM_11_port, SUM_10_port,
      SUM_9_port, SUM_8_port, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20,
      n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35
      , n36, n37 : std_logic;

begin
   SUM <= ( SUM_14_port, SUM_13_port, SUM_12_port, SUM_11_port, SUM_10_port,
      SUM_9_port, SUM_8_port, A(7), A(6), A(5), A(4), A(3), A(2), A(1), A(0) );
   
   U3 : XNR31 port map( A => B(11), B => A(11), C => n24, Q => SUM_11_port);
   U16 : OAI212 port map( A => n20, B => n29, C => n21, Q => n18);
   U19 : OAI212 port map( A => B(8), B => n34, C => n35, Q => SUM_8_port);
   U22 : OAI212 port map( A => A(12), B => n18, C => B(12), Q => n19);
   U23 : XOR31 port map( A => B(12), B => A(12), C => n18, Q => SUM_12_port);
   U24 : OAI212 port map( A => A(11), B => n30, C => B(11), Q => n21);
   U26 : OAI212 port map( A => n15, B => n12, C => n13, Q => n23);
   U32 : OAI212 port map( A => n15, B => n12, C => n13, Q => n25);
   U2 : AOI211 port map( A => n32, B => n23, C => n31, Q => n20);
   U4 : NOR21 port map( A => B(9), B => A(9), Q => n12);
   U5 : NAND22 port map( A => B(9), B => A(9), Q => n13);
   U6 : XNR21 port map( A => n25, B => n27, Q => SUM_10_port);
   U7 : NAND22 port map( A => n32, B => n26, Q => n27);
   U8 : XNR21 port map( A => n15, B => n11, Q => SUM_9_port);
   U9 : NOR21 port map( A => n33, B => n12, Q => n11);
   U10 : INV3 port map( A => n13, Q => n33);
   U11 : INV3 port map( A => n26, Q => n31);
   U12 : INV3 port map( A => A(11), Q => n29);
   U13 : INV3 port map( A => n20, Q => n30);
   U14 : NAND22 port map( A => B(8), B => A(8), Q => n15);
   U15 : NAND22 port map( A => B(10), B => A(10), Q => n26);
   U17 : AOI211 port map( A => n32, B => n25, C => n31, Q => n24);
   U18 : INV3 port map( A => n14, Q => n35);
   U20 : INV3 port map( A => A(8), Q => n34);
   U21 : NOR21 port map( A => A(8), B => n36, Q => n14);
   U25 : INV3 port map( A => n22, Q => n32);
   U27 : NOR21 port map( A => B(10), B => A(10), Q => n22);
   U28 : INV3 port map( A => B(8), Q => n36);
   U29 : AOI211 port map( A => n18, B => A(12), C => n28, Q => n17);
   U30 : INV3 port map( A => n19, Q => n28);
   U31 : XOR21 port map( A => A(14), B => n16, Q => SUM_14_port);
   U33 : NOR21 port map( A => n17, B => n37, Q => n16);
   U34 : INV3 port map( A => A(14), Q => n37);
   U35 : XNR21 port map( A => A(13), B => n17, Q => SUM_13_port);

end SYN_cla;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_npath_width8_width_coeff4_width_phases4.all;

entity fir_width10_width_coeff4_DW01_add_4 is

   port( A, B : in std_logic_vector (15 downto 0);  CI : in std_logic;  SUM :
         out std_logic_vector (15 downto 0);  CO : out std_logic);

end fir_width10_width_coeff4_DW01_add_4;

architecture SYN_cla of fir_width10_width_coeff4_DW01_add_4 is

   component INV3
      port( A : in std_logic;  Q : out std_logic);
   end component;
   
   component NAND22
      port( A, B : in std_logic;  Q : out std_logic);
   end component;
   
   component NOR21
      port( A, B : in std_logic;  Q : out std_logic);
   end component;
   
   component AOI211
      port( A, B, C : in std_logic;  Q : out std_logic);
   end component;
   
   component XNR21
      port( A, B : in std_logic;  Q : out std_logic);
   end component;
   
   component XOR21
      port( A, B : in std_logic;  Q : out std_logic);
   end component;
   
   component OAI212
      port( A, B, C : in std_logic;  Q : out std_logic);
   end component;
   
   component XOR31
      port( A, B, C : in std_logic;  Q : out std_logic);
   end component;
   
   signal SUM_15_port, SUM_14_port, SUM_13_port, SUM_12_port, SUM_11_port,
      SUM_10_port, SUM_9_port, SUM_8_port, n13, n14, n15, n16, n17, n18, n19,
      n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34
      , n35, n36, n37, n38, n39, n40, n41, n42, n43 : std_logic;

begin
   SUM <= ( SUM_15_port, SUM_14_port, SUM_13_port, SUM_12_port, SUM_11_port,
      SUM_10_port, SUM_9_port, SUM_8_port, A(7), A(6), A(5), A(4), A(3), A(2),
      A(1), A(0) );
   
   U17 : OAI212 port map( A => n35, B => n39, C => n23, Q => n22);
   U20 : OAI212 port map( A => B(8), B => n43, C => n36, Q => SUM_8_port);
   U23 : OAI212 port map( A => A(13), B => n19, C => B(13), Q => n20);
   U24 : XOR31 port map( A => B(13), B => A(13), C => n19, Q => SUM_13_port);
   U25 : OAI212 port map( A => n34, B => n38, C => n21, Q => n19);
   U26 : OAI212 port map( A => A(12), B => n22, C => B(12), Q => n21);
   U27 : XOR31 port map( A => n34, B => B(12), C => n38, Q => SUM_12_port);
   U28 : OAI212 port map( A => A(11), B => n26, C => B(11), Q => n23);
   U29 : OAI212 port map( A => n25, B => n27, C => n28, Q => n26);
   U31 : XOR31 port map( A => B(11), B => A(11), C => n29, Q => SUM_11_port);
   U32 : OAI212 port map( A => n25, B => n30, C => n28, Q => n29);
   U2 : NOR21 port map( A => n37, B => n43, Q => n16);
   U3 : INV3 port map( A => B(8), Q => n37);
   U4 : INV3 port map( A => n14, Q => n41);
   U5 : AOI211 port map( A => n16, B => n42, C => n41, Q => n30);
   U6 : XNR21 port map( A => n16, B => n13, Q => SUM_9_port);
   U7 : NAND22 port map( A => n42, B => n14, Q => n13);
   U8 : AOI211 port map( A => n16, B => n42, C => n41, Q => n27);
   U9 : XOR21 port map( A => A(15), B => n17, Q => SUM_15_port);
   U10 : NOR21 port map( A => n18, B => n32, Q => n17);
   U11 : INV3 port map( A => A(15), Q => n32);
   U12 : INV3 port map( A => A(8), Q => n43);
   U13 : XNR21 port map( A => A(14), B => n18, Q => SUM_14_port);
   U14 : INV3 port map( A => n22, Q => n34);
   U15 : NAND22 port map( A => B(9), B => A(9), Q => n14);
   U16 : INV3 port map( A => n24, Q => n42);
   U18 : NOR21 port map( A => B(9), B => A(9), Q => n24);
   U19 : INV3 port map( A => n15, Q => n36);
   U21 : NOR21 port map( A => A(8), B => n37, Q => n15);
   U22 : XNR21 port map( A => n30, B => n31, Q => SUM_10_port);
   U30 : NOR21 port map( A => n40, B => n25, Q => n31);
   U33 : INV3 port map( A => n28, Q => n40);
   U34 : AOI211 port map( A => n19, B => A(13), C => n33, Q => n18);
   U35 : INV3 port map( A => n20, Q => n33);
   U36 : INV3 port map( A => A(11), Q => n39);
   U37 : INV3 port map( A => n26, Q => n35);
   U38 : NOR21 port map( A => B(10), B => A(10), Q => n25);
   U39 : NAND22 port map( A => B(10), B => A(10), Q => n28);
   U40 : INV3 port map( A => A(12), Q => n38);

end SYN_cla;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_npath_width8_width_coeff4_width_phases4.all;

entity fir_width10_width_coeff4_DW02_mult_0 is

   port( A : in std_logic_vector (9 downto 0);  B : in std_logic_vector (4
         downto 0);  TC : in std_logic;  PRODUCT : out std_logic_vector (14
         downto 0));

end fir_width10_width_coeff4_DW02_mult_0;

architecture SYN_csa of fir_width10_width_coeff4_DW02_mult_0 is

   component LOGIC0
      port( Q : out std_logic);
   end component;
   
   component LOGIC1
      port( Q : out std_logic);
   end component;
   
   component XNR21
      port( A, B : in std_logic;  Q : out std_logic);
   end component;
   
   component INV3
      port( A : in std_logic;  Q : out std_logic);
   end component;
   
   component NOR21
      port( A, B : in std_logic;  Q : out std_logic);
   end component;
   
   component AOI211
      port( A, B, C : in std_logic;  Q : out std_logic);
   end component;
   
   component NAND22
      port( A, B : in std_logic;  Q : out std_logic);
   end component;
   
   component XOR21
      port( A, B : in std_logic;  Q : out std_logic);
   end component;
   
   component NOR31
      port( A, B, C : in std_logic;  Q : out std_logic);
   end component;
   
   component fir_width10_width_coeff4_DW01_add_3
      port( A, B : in std_logic_vector (12 downto 0);  CI : in std_logic;  SUM
            : out std_logic_vector (12 downto 0);  CO : out std_logic);
   end component;
   
   component OAI212
      port( A, B, C : in std_logic;  Q : out std_logic);
   end component;
   
   component ADD32
      port( A, B, CI : in std_logic;  CO, S : out std_logic);
   end component;
   
   signal PRODUCT_14_port, PRODUCT_13_port, PRODUCT_12_port, PRODUCT_11_port,
      PRODUCT_10_port, PRODUCT_9_port, PRODUCT_8_port, PRODUCT_7_port,
      PRODUCT_6_port, PRODUCT_5_port, PRODUCT_4_port, PRODUCT_3_port,
      PRODUCT_2_port, PRODUCT_1_port, CARRYB_9_3_port, CARRYB_8_1_port,
      CARRYB_8_0_port, CARRYB_7_1_port, CARRYB_7_0_port, CARRYB_6_1_port,
      CARRYB_6_0_port, CARRYB_5_1_port, CARRYB_5_0_port, CARRYB_4_1_port,
      CARRYB_4_0_port, CARRYB_3_1_port, CARRYB_3_0_port, CARRYB_2_0_port,
      CARRYB_1_0_port, SUMB_8_1_port, SUMB_7_1_port, SUMB_6_1_port,
      SUMB_5_1_port, SUMB_4_1_port, SUMB_3_1_port, PROD1_4_port, A1_10_port,
      A1_9_port, A1_8_port, A1_7_port, A1_6_port, A1_5_port, A1_4_port,
      A1_3_port, A1_1_port, A1_0_port, A2_10_port, A2_9_port, A2_8_port, n26,
      n27, n42, n43, n44, n45, n46, n47, n48, n49, n28, n29, n30, n31, n32, n33
      , n34, n35, n36, n37, n38, n39, n40, n41, n_1055 : std_logic;

begin
   PRODUCT <= ( PRODUCT_14_port, PRODUCT_13_port, PRODUCT_12_port,
      PRODUCT_11_port, PRODUCT_10_port, PRODUCT_9_port, PRODUCT_8_port,
      PRODUCT_7_port, PRODUCT_6_port, PRODUCT_5_port, PRODUCT_4_port,
      PRODUCT_3_port, PRODUCT_2_port, PRODUCT_1_port, A(0) );
   
   S1_8_0 : ADD32 port map( A => A(8), B => CARRYB_7_0_port, CI =>
                           SUMB_7_1_port, CO => CARRYB_8_0_port, S => A1_6_port
                           );
   S2_8_1 : ADD32 port map( A => A(8), B => CARRYB_7_1_port, CI => n35, CO =>
                           CARRYB_8_1_port, S => SUMB_8_1_port);
   S1_7_0 : ADD32 port map( A => A(7), B => CARRYB_6_0_port, CI =>
                           SUMB_6_1_port, CO => CARRYB_7_0_port, S => A1_5_port
                           );
   S2_7_1 : ADD32 port map( A => A(7), B => CARRYB_6_1_port, CI => n36, CO =>
                           CARRYB_7_1_port, S => SUMB_7_1_port);
   S1_6_0 : ADD32 port map( A => A(6), B => CARRYB_5_0_port, CI =>
                           SUMB_5_1_port, CO => CARRYB_6_0_port, S => A1_4_port
                           );
   S2_6_1 : ADD32 port map( A => A(6), B => CARRYB_5_1_port, CI => n38, CO =>
                           CARRYB_6_1_port, S => SUMB_6_1_port);
   S1_5_0 : ADD32 port map( A => A(5), B => CARRYB_4_0_port, CI =>
                           SUMB_4_1_port, CO => CARRYB_5_0_port, S => A1_3_port
                           );
   S2_5_1 : ADD32 port map( A => A(5), B => CARRYB_4_1_port, CI => n39, CO =>
                           CARRYB_5_1_port, S => SUMB_5_1_port);
   S1_4_0 : ADD32 port map( A => A(4), B => CARRYB_3_0_port, CI =>
                           SUMB_3_1_port, CO => CARRYB_4_0_port, S =>
                           PROD1_4_port);
   S2_4_1 : ADD32 port map( A => A(4), B => CARRYB_3_1_port, CI => n40, CO =>
                           CARRYB_4_1_port, S => SUMB_4_1_port);
   S1_3_0 : ADD32 port map( A => A(3), B => CARRYB_2_0_port, CI => A(2), CO =>
                           CARRYB_3_0_port, S => A1_1_port);
   S1_2_0 : ADD32 port map( A => A(2), B => CARRYB_1_0_port, CI => A(1), CO =>
                           CARRYB_2_0_port, S => A1_0_port);
   U16 : OAI212 port map( A => CARRYB_8_1_port, B => n34, C => n47, Q => n42);
   FS_1 : fir_width10_width_coeff4_DW01_add_3 port map( A(12) => n27,
                           A(11) => n30, A(10) => A1_10_port, A(9) => A1_9_port
                           , A(8) => A1_8_port, A(7) => A1_7_port, A(6) =>
                           A1_6_port, A(5) => A1_5_port, A(4) => A1_4_port,
                           A(3) => A1_3_port, A(2) => n37, A(1) => A1_1_port,
                           A(0) => A1_0_port, B(12) => CARRYB_9_3_port, B(11)
                           => n29, B(10) => A2_10_port, B(9) => A2_9_port, B(8)
                           => A2_8_port, B(7) => n26, B(6) => n26, B(5) => n26,
                           B(4) => n26, B(3) => PROD1_4_port, B(2) => n26, B(1)
                           => n26, B(0) => n26, CI => n26, SUM(12) =>
                           PRODUCT_14_port, SUM(11) => PRODUCT_13_port, SUM(10)
                           => PRODUCT_12_port, SUM(9) => PRODUCT_11_port,
                           SUM(8) => PRODUCT_10_port, SUM(7) => PRODUCT_9_port,
                           SUM(6) => PRODUCT_8_port, SUM(5) => PRODUCT_7_port,
                           SUM(4) => PRODUCT_6_port, SUM(3) => PRODUCT_5_port,
                           SUM(2) => PRODUCT_4_port, SUM(1) => PRODUCT_3_port,
                           SUM(0) => PRODUCT_2_port, CO => n_1055);
   U2 : XNR21 port map( A => n42, B => n49, Q => A1_8_port);
   U3 : NOR21 port map( A => n33, B => n32, Q => n49);
   U4 : NOR31 port map( A => n32, B => n42, C => n33, Q => A2_9_port);
   U5 : XNR21 port map( A => SUMB_8_1_port, B => CARRYB_8_0_port, Q => n43);
   U6 : NOR21 port map( A => n43, B => n31, Q => A2_8_port);
   U7 : INV3 port map( A => CARRYB_8_0_port, Q => n33);
   U8 : XNR21 port map( A => n48, B => n47, Q => A1_9_port);
   U9 : NAND22 port map( A => CARRYB_8_1_port, B => n34, Q => n47);
   U10 : INV3 port map( A => SUMB_8_1_port, Q => n32);
   U11 : NOR21 port map( A => n28, B => n47, Q => A2_10_port);
   U12 : INV3 port map( A => n48, Q => n28);
   U13 : XOR21 port map( A => n45, B => n46, Q => A1_10_port);
   U14 : INV3 port map( A => n44, Q => n29);
   U15 : NAND22 port map( A => n45, B => n46, Q => n44);
   U17 : INV3 port map( A => CARRYB_9_3_port, Q => n30);
   U18 : INV3 port map( A => PROD1_4_port, Q => n37);
   U19 : XNR21 port map( A => n43, B => A(9), Q => A1_7_port);
   U20 : XNR21 port map( A => n38, B => n41, Q => SUMB_3_1_port);
   U21 : NOR21 port map( A => n40, B => n41, Q => CARRYB_1_0_port);
   U22 : INV3 port map( A => A(0), Q => n41);
   U23 : INV3 port map( A => A(1), Q => n40);
   U24 : INV3 port map( A => A(5), Q => n35);
   U25 : INV3 port map( A => A(4), Q => n36);
   U26 : INV3 port map( A => A(2), Q => n39);
   U27 : NOR21 port map( A => A(0), B => n38, Q => CARRYB_3_1_port);
   U28 : INV3 port map( A => A(3), Q => n38);
   U29 : AOI211 port map( A => n31, B => A(7), C => n46, Q => n48);
   U30 : AOI211 port map( A => n31, B => A(8), C => CARRYB_9_3_port, Q => n45);
   U31 : NOR21 port map( A => n31, B => A(8), Q => CARRYB_9_3_port);
   U32 : NOR21 port map( A => n31, B => A(7), Q => n46);
   U33 : INV3 port map( A => A(9), Q => n31);
   U34 : INV3 port map( A => A(6), Q => n34);
   U35 : XNR21 port map( A => A(1), B => n41, Q => PRODUCT_1_port);
   U36 : LOGIC1 port map( Q => n27);
   U37 : LOGIC0 port map( Q => n26);

end SYN_csa;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_npath_width8_width_coeff4_width_phases4.all;

entity fir_width10_width_coeff4_DW02_mult_2 is

   port( A : in std_logic_vector (9 downto 0);  B : in std_logic_vector (6
         downto 0);  TC : in std_logic;  PRODUCT : out std_logic_vector (16
         downto 0));

end fir_width10_width_coeff4_DW02_mult_2;

architecture SYN_csa of fir_width10_width_coeff4_DW02_mult_2 is

   component LOGIC0
      port( Q : out std_logic);
   end component;
   
   component XNR21
      port( A, B : in std_logic;  Q : out std_logic);
   end component;
   
   component INV3
      port( A : in std_logic;  Q : out std_logic);
   end component;
   
   component NOR21
      port( A, B : in std_logic;  Q : out std_logic);
   end component;
   
   component NAND22
      port( A, B : in std_logic;  Q : out std_logic);
   end component;
   
   component NOR31
      port( A, B, C : in std_logic;  Q : out std_logic);
   end component;
   
   component XOR21
      port( A, B : in std_logic;  Q : out std_logic);
   end component;
   
   component fir_width10_width_coeff4_DW01_add_5
      port( A, B : in std_logic_vector (14 downto 0);  CI : in std_logic;  SUM
            : out std_logic_vector (14 downto 0);  CO : out std_logic);
   end component;
   
   component ADD32
      port( A, B, CI : in std_logic;  CO, S : out std_logic);
   end component;
   
   signal PRODUCT_16_port, PRODUCT_15_port, PRODUCT_14_port, PRODUCT_13_port,
      PRODUCT_12_port, PRODUCT_11_port, PRODUCT_10_port, PRODUCT_9_port,
      PRODUCT_8_port, PRODUCT_7_port, PRODUCT_6_port, PRODUCT_5_port,
      PRODUCT_4_port, PRODUCT_3_port, PRODUCT_2_port, PRODUCT_1_port,
      CARRYB_9_4_port, CARRYB_8_3_port, CARRYB_8_1_port, CARRYB_8_0_port,
      CARRYB_7_3_port, CARRYB_7_1_port, CARRYB_7_0_port, CARRYB_6_3_port,
      CARRYB_6_1_port, CARRYB_6_0_port, CARRYB_5_3_port, CARRYB_5_1_port,
      CARRYB_5_0_port, CARRYB_4_3_port, CARRYB_4_1_port, CARRYB_4_0_port,
      CARRYB_3_3_port, CARRYB_3_1_port, CARRYB_3_0_port, CARRYB_2_0_port,
      CARRYB_1_0_port, SUMB_8_3_port, SUMB_8_1_port, SUMB_7_3_port,
      SUMB_7_1_port, SUMB_6_3_port, SUMB_6_1_port, SUMB_5_3_port, SUMB_5_1_port
      , SUMB_4_3_port, SUMB_4_1_port, SUMB_3_3_port, SUMB_3_1_port,
      SUMB_2_3_port, PROD1_6_port, A1_11_port, A1_10_port, A1_9_port, A1_8_port
      , A1_7_port, A1_6_port, A1_5_port, A1_3_port, A1_2_port, A1_1_port,
      A1_0_port, A2_12_port, A2_11_port, A2_10_port, A2_9_port, A2_8_port, n24,
      n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n25, n26, n27, n28, n29
      , n30, n31, n32, n33, n34, n_1064 : std_logic;

begin
   PRODUCT <= ( PRODUCT_16_port, PRODUCT_15_port, PRODUCT_14_port,
      PRODUCT_13_port, PRODUCT_12_port, PRODUCT_11_port, PRODUCT_10_port,
      PRODUCT_9_port, PRODUCT_8_port, PRODUCT_7_port, PRODUCT_6_port,
      PRODUCT_5_port, PRODUCT_4_port, PRODUCT_3_port, PRODUCT_2_port,
      PRODUCT_1_port, A(0) );
   
   S1_8_0 : ADD32 port map( A => A(8), B => CARRYB_7_0_port, CI =>
                           SUMB_7_1_port, CO => CARRYB_8_0_port, S => A1_6_port
                           );
   S2_8_1 : ADD32 port map( A => A(8), B => CARRYB_7_1_port, CI =>
                           SUMB_6_3_port, CO => CARRYB_8_1_port, S =>
                           SUMB_8_1_port);
   S2_8_3 : ADD32 port map( A => A(8), B => CARRYB_7_3_port, CI => A(6), CO =>
                           CARRYB_8_3_port, S => SUMB_8_3_port);
   S1_7_0 : ADD32 port map( A => A(7), B => CARRYB_6_0_port, CI =>
                           SUMB_6_1_port, CO => CARRYB_7_0_port, S => A1_5_port
                           );
   S2_7_1 : ADD32 port map( A => A(7), B => CARRYB_6_1_port, CI =>
                           SUMB_5_3_port, CO => CARRYB_7_1_port, S =>
                           SUMB_7_1_port);
   S2_7_3 : ADD32 port map( A => A(7), B => CARRYB_6_3_port, CI => A(5), CO =>
                           CARRYB_7_3_port, S => SUMB_7_3_port);
   S1_6_0 : ADD32 port map( A => A(6), B => CARRYB_5_0_port, CI =>
                           SUMB_5_1_port, CO => CARRYB_6_0_port, S =>
                           PROD1_6_port);
   S2_6_1 : ADD32 port map( A => A(6), B => CARRYB_5_1_port, CI =>
                           SUMB_4_3_port, CO => CARRYB_6_1_port, S =>
                           SUMB_6_1_port);
   S2_6_3 : ADD32 port map( A => A(6), B => CARRYB_5_3_port, CI => A(4), CO =>
                           CARRYB_6_3_port, S => SUMB_6_3_port);
   S1_5_0 : ADD32 port map( A => A(5), B => CARRYB_4_0_port, CI =>
                           SUMB_4_1_port, CO => CARRYB_5_0_port, S => A1_3_port
                           );
   S2_5_1 : ADD32 port map( A => A(5), B => CARRYB_4_1_port, CI =>
                           SUMB_3_3_port, CO => CARRYB_5_1_port, S =>
                           SUMB_5_1_port);
   S2_5_3 : ADD32 port map( A => A(5), B => CARRYB_4_3_port, CI => A(3), CO =>
                           CARRYB_5_3_port, S => SUMB_5_3_port);
   S1_4_0 : ADD32 port map( A => A(4), B => CARRYB_3_0_port, CI =>
                           SUMB_3_1_port, CO => CARRYB_4_0_port, S => A1_2_port
                           );
   S2_4_1 : ADD32 port map( A => A(4), B => CARRYB_3_1_port, CI =>
                           SUMB_2_3_port, CO => CARRYB_4_1_port, S =>
                           SUMB_4_1_port);
   S2_4_3 : ADD32 port map( A => A(4), B => CARRYB_3_3_port, CI => A(2), CO =>
                           CARRYB_4_3_port, S => SUMB_4_3_port);
   S1_3_0 : ADD32 port map( A => A(3), B => CARRYB_2_0_port, CI =>
                           SUMB_2_3_port, CO => CARRYB_3_0_port, S => A1_1_port
                           );
   S2_3_1 : ADD32 port map( A => A(3), B => n32, CI => A(1), CO =>
                           CARRYB_3_1_port, S => SUMB_3_1_port);
   S2_3_3 : ADD32 port map( A => A(3), B => n32, CI => A(1), CO =>
                           CARRYB_3_3_port, S => SUMB_3_3_port);
   S1_2_0 : ADD32 port map( A => A(2), B => CARRYB_1_0_port, CI => A(1), CO =>
                           CARRYB_2_0_port, S => A1_0_port);
   FS_1 : fir_width10_width_coeff4_DW01_add_5 port map( A(14) => A(9),
                           A(13) => A(9), A(12) => CARRYB_9_4_port, A(11) =>
                           A1_11_port, A(10) => A1_10_port, A(9) => A1_9_port,
                           A(8) => A1_8_port, A(7) => A1_7_port, A(6) =>
                           A1_6_port, A(5) => A1_5_port, A(4) => PROD1_6_port,
                           A(3) => A1_3_port, A(2) => A1_2_port, A(1) =>
                           A1_1_port, A(0) => A1_0_port, B(14) => n24, B(13) =>
                           n24, B(12) => A2_12_port, B(11) => A2_11_port, B(10)
                           => A2_10_port, B(9) => A2_9_port, B(8) => A2_8_port,
                           B(7) => n24, B(6) => n24, B(5) => n24, B(4) => n24,
                           B(3) => n24, B(2) => n24, B(1) => n24, B(0) => n24,
                           CI => n24, SUM(14) => PRODUCT_16_port, SUM(13) =>
                           PRODUCT_15_port, SUM(12) => PRODUCT_14_port, SUM(11)
                           => PRODUCT_13_port, SUM(10) => PRODUCT_12_port,
                           SUM(9) => PRODUCT_11_port, SUM(8) => PRODUCT_10_port
                           , SUM(7) => PRODUCT_9_port, SUM(6) => PRODUCT_8_port
                           , SUM(5) => PRODUCT_7_port, SUM(4) => PRODUCT_6_port
                           , SUM(3) => PRODUCT_5_port, SUM(2) => PRODUCT_4_port
                           , SUM(1) => PRODUCT_3_port, SUM(0) => PRODUCT_2_port
                           , CO => n_1064);
   U2 : XNR21 port map( A => n36, B => n43, Q => A1_8_port);
   U3 : NOR21 port map( A => n30, B => n29, Q => n43);
   U4 : XNR21 port map( A => n29, B => n30, Q => n37);
   U5 : XNR21 port map( A => n31, B => n28, Q => n36);
   U6 : XNR21 port map( A => n41, B => n42, Q => A1_9_port);
   U7 : NOR21 port map( A => n31, B => n28, Q => n42);
   U8 : NOR31 port map( A => n29, B => n36, C => n30, Q => A2_9_port);
   U9 : NOR31 port map( A => n28, B => n41, C => n31, Q => A2_10_port);
   U10 : NOR21 port map( A => n37, B => n25, Q => A2_8_port);
   U11 : INV3 port map( A => CARRYB_8_1_port, Q => n28);
   U12 : INV3 port map( A => CARRYB_8_0_port, Q => n30);
   U13 : XNR21 port map( A => n25, B => n27, Q => n41);
   U14 : XNR21 port map( A => n40, B => n44, Q => A1_10_port);
   U15 : NOR21 port map( A => n25, B => n27, Q => n44);
   U16 : INV3 port map( A => SUMB_8_1_port, Q => n29);
   U17 : INV3 port map( A => SUMB_7_3_port, Q => n31);
   U18 : INV3 port map( A => SUMB_8_3_port, Q => n27);
   U19 : XOR21 port map( A => n38, B => n39, Q => A1_11_port);
   U20 : NOR31 port map( A => n27, B => n40, C => n25, Q => A2_11_port);
   U21 : NOR21 port map( A => n38, B => n39, Q => A2_12_port);
   U22 : NOR21 port map( A => n34, B => n33, Q => CARRYB_1_0_port);
   U23 : INV3 port map( A => n35, Q => n32);
   U24 : NAND22 port map( A => A(0), B => A(2), Q => n35);
   U25 : INV3 port map( A => A(1), Q => n33);
   U26 : XNR21 port map( A => A(7), B => CARRYB_8_3_port, Q => n40);
   U27 : XNR21 port map( A => A(2), B => n34, Q => SUMB_2_3_port);
   U28 : INV3 port map( A => A(0), Q => n34);
   U29 : NAND22 port map( A => A(7), B => CARRYB_8_3_port, Q => n39);
   U30 : XNR21 port map( A => n37, B => A(9), Q => A1_7_port);
   U31 : INV3 port map( A => A(9), Q => n25);
   U32 : XNR21 port map( A => A(9), B => A(8), Q => n38);
   U33 : NOR21 port map( A => n26, B => n25, Q => CARRYB_9_4_port);
   U34 : INV3 port map( A => A(8), Q => n26);
   U35 : XNR21 port map( A => n33, B => A(0), Q => PRODUCT_1_port);
   U36 : LOGIC0 port map( Q => n24);

end SYN_csa;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_npath_width8_width_coeff4_width_phases4.all;

entity fir_width10_width_coeff4_DW02_mult_3 is

   port( A : in std_logic_vector (9 downto 0);  B : in std_logic_vector (6
         downto 0);  TC : in std_logic;  PRODUCT : out std_logic_vector (16
         downto 0));

end fir_width10_width_coeff4_DW02_mult_3;

architecture SYN_csa of fir_width10_width_coeff4_DW02_mult_3 is

   component LOGIC0
      port( Q : out std_logic);
   end component;
   
   component XNR21
      port( A, B : in std_logic;  Q : out std_logic);
   end component;
   
   component NAND22
      port( A, B : in std_logic;  Q : out std_logic);
   end component;
   
   component INV3
      port( A : in std_logic;  Q : out std_logic);
   end component;
   
   component NOR21
      port( A, B : in std_logic;  Q : out std_logic);
   end component;
   
   component NOR31
      port( A, B, C : in std_logic;  Q : out std_logic);
   end component;
   
   component XOR21
      port( A, B : in std_logic;  Q : out std_logic);
   end component;
   
   component fir_width10_width_coeff4_DW01_add_6
      port( A, B : in std_logic_vector (14 downto 0);  CI : in std_logic;  SUM
            : out std_logic_vector (14 downto 0);  CO : out std_logic);
   end component;
   
   component ADD32
      port( A, B, CI : in std_logic;  CO, S : out std_logic);
   end component;
   
   signal PRODUCT_16_port, PRODUCT_15_port, PRODUCT_14_port, PRODUCT_13_port,
      PRODUCT_12_port, PRODUCT_11_port, PRODUCT_10_port, PRODUCT_9_port,
      PRODUCT_8_port, PRODUCT_7_port, PRODUCT_6_port, PRODUCT_5_port,
      PRODUCT_4_port, PRODUCT_3_port, PRODUCT_2_port, PRODUCT_1_port,
      CARRYB_9_4_port, CARRYB_8_3_port, CARRYB_8_1_port, CARRYB_8_0_port,
      CARRYB_7_3_port, CARRYB_7_1_port, CARRYB_7_0_port, CARRYB_6_3_port,
      CARRYB_6_1_port, CARRYB_6_0_port, CARRYB_5_3_port, CARRYB_5_1_port,
      CARRYB_5_0_port, CARRYB_4_3_port, CARRYB_4_1_port, CARRYB_4_0_port,
      CARRYB_3_3_port, CARRYB_3_1_port, CARRYB_3_0_port, CARRYB_2_0_port,
      CARRYB_1_0_port, SUMB_8_3_port, SUMB_8_1_port, SUMB_7_3_port,
      SUMB_7_1_port, SUMB_6_3_port, SUMB_6_1_port, SUMB_5_3_port, SUMB_5_1_port
      , SUMB_4_3_port, SUMB_4_1_port, SUMB_3_3_port, SUMB_3_1_port,
      SUMB_2_3_port, PROD1_6_port, A1_11_port, A1_10_port, A1_9_port, A1_8_port
      , A1_7_port, A1_6_port, A1_5_port, A1_3_port, A1_2_port, A1_1_port,
      A1_0_port, A2_12_port, A2_11_port, A2_10_port, A2_9_port, A2_8_port, n24,
      n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n25, n26, n27, n28, n29
      , n30, n31, n32, n33, n34, n_1073 : std_logic;

begin
   PRODUCT <= ( PRODUCT_16_port, PRODUCT_15_port, PRODUCT_14_port,
      PRODUCT_13_port, PRODUCT_12_port, PRODUCT_11_port, PRODUCT_10_port,
      PRODUCT_9_port, PRODUCT_8_port, PRODUCT_7_port, PRODUCT_6_port,
      PRODUCT_5_port, PRODUCT_4_port, PRODUCT_3_port, PRODUCT_2_port,
      PRODUCT_1_port, A(0) );
   
   S1_8_0 : ADD32 port map( A => A(8), B => CARRYB_7_0_port, CI =>
                           SUMB_7_1_port, CO => CARRYB_8_0_port, S => A1_6_port
                           );
   S2_8_1 : ADD32 port map( A => A(8), B => CARRYB_7_1_port, CI =>
                           SUMB_6_3_port, CO => CARRYB_8_1_port, S =>
                           SUMB_8_1_port);
   S2_8_3 : ADD32 port map( A => A(8), B => CARRYB_7_3_port, CI => A(6), CO =>
                           CARRYB_8_3_port, S => SUMB_8_3_port);
   S1_7_0 : ADD32 port map( A => A(7), B => CARRYB_6_0_port, CI =>
                           SUMB_6_1_port, CO => CARRYB_7_0_port, S => A1_5_port
                           );
   S2_7_1 : ADD32 port map( A => A(7), B => CARRYB_6_1_port, CI =>
                           SUMB_5_3_port, CO => CARRYB_7_1_port, S =>
                           SUMB_7_1_port);
   S2_7_3 : ADD32 port map( A => A(7), B => CARRYB_6_3_port, CI => A(5), CO =>
                           CARRYB_7_3_port, S => SUMB_7_3_port);
   S1_6_0 : ADD32 port map( A => A(6), B => CARRYB_5_0_port, CI =>
                           SUMB_5_1_port, CO => CARRYB_6_0_port, S =>
                           PROD1_6_port);
   S2_6_1 : ADD32 port map( A => A(6), B => CARRYB_5_1_port, CI =>
                           SUMB_4_3_port, CO => CARRYB_6_1_port, S =>
                           SUMB_6_1_port);
   S2_6_3 : ADD32 port map( A => A(6), B => CARRYB_5_3_port, CI => A(4), CO =>
                           CARRYB_6_3_port, S => SUMB_6_3_port);
   S1_5_0 : ADD32 port map( A => A(5), B => CARRYB_4_0_port, CI =>
                           SUMB_4_1_port, CO => CARRYB_5_0_port, S => A1_3_port
                           );
   S2_5_1 : ADD32 port map( A => A(5), B => CARRYB_4_1_port, CI =>
                           SUMB_3_3_port, CO => CARRYB_5_1_port, S =>
                           SUMB_5_1_port);
   S2_5_3 : ADD32 port map( A => A(5), B => CARRYB_4_3_port, CI => A(3), CO =>
                           CARRYB_5_3_port, S => SUMB_5_3_port);
   S1_4_0 : ADD32 port map( A => A(4), B => CARRYB_3_0_port, CI =>
                           SUMB_3_1_port, CO => CARRYB_4_0_port, S => A1_2_port
                           );
   S2_4_1 : ADD32 port map( A => A(4), B => CARRYB_3_1_port, CI =>
                           SUMB_2_3_port, CO => CARRYB_4_1_port, S =>
                           SUMB_4_1_port);
   S2_4_3 : ADD32 port map( A => A(4), B => CARRYB_3_3_port, CI => A(2), CO =>
                           CARRYB_4_3_port, S => SUMB_4_3_port);
   S1_3_0 : ADD32 port map( A => A(3), B => CARRYB_2_0_port, CI =>
                           SUMB_2_3_port, CO => CARRYB_3_0_port, S => A1_1_port
                           );
   S2_3_1 : ADD32 port map( A => A(3), B => n32, CI => A(1), CO =>
                           CARRYB_3_1_port, S => SUMB_3_1_port);
   S2_3_3 : ADD32 port map( A => A(3), B => n32, CI => A(1), CO =>
                           CARRYB_3_3_port, S => SUMB_3_3_port);
   S1_2_0 : ADD32 port map( A => A(2), B => CARRYB_1_0_port, CI => A(1), CO =>
                           CARRYB_2_0_port, S => A1_0_port);
   FS_1 : fir_width10_width_coeff4_DW01_add_6 port map( A(14) => A(9),
                           A(13) => A(9), A(12) => CARRYB_9_4_port, A(11) =>
                           A1_11_port, A(10) => A1_10_port, A(9) => A1_9_port,
                           A(8) => A1_8_port, A(7) => A1_7_port, A(6) =>
                           A1_6_port, A(5) => A1_5_port, A(4) => PROD1_6_port,
                           A(3) => A1_3_port, A(2) => A1_2_port, A(1) =>
                           A1_1_port, A(0) => A1_0_port, B(14) => n24, B(13) =>
                           n24, B(12) => A2_12_port, B(11) => A2_11_port, B(10)
                           => A2_10_port, B(9) => A2_9_port, B(8) => A2_8_port,
                           B(7) => n24, B(6) => n24, B(5) => n24, B(4) => n24,
                           B(3) => n24, B(2) => n24, B(1) => n24, B(0) => n24,
                           CI => n24, SUM(14) => PRODUCT_16_port, SUM(13) =>
                           PRODUCT_15_port, SUM(12) => PRODUCT_14_port, SUM(11)
                           => PRODUCT_13_port, SUM(10) => PRODUCT_12_port,
                           SUM(9) => PRODUCT_11_port, SUM(8) => PRODUCT_10_port
                           , SUM(7) => PRODUCT_9_port, SUM(6) => PRODUCT_8_port
                           , SUM(5) => PRODUCT_7_port, SUM(4) => PRODUCT_6_port
                           , SUM(3) => PRODUCT_5_port, SUM(2) => PRODUCT_4_port
                           , SUM(1) => PRODUCT_3_port, SUM(0) => PRODUCT_2_port
                           , CO => n_1073);
   U2 : XNR21 port map( A => n36, B => n43, Q => A1_8_port);
   U3 : NOR21 port map( A => n29, B => n28, Q => n43);
   U4 : XNR21 port map( A => n28, B => n29, Q => n37);
   U5 : XNR21 port map( A => n31, B => n27, Q => n36);
   U6 : XNR21 port map( A => n41, B => n42, Q => A1_9_port);
   U7 : NOR21 port map( A => n31, B => n27, Q => n42);
   U8 : NOR31 port map( A => n28, B => n36, C => n29, Q => A2_9_port);
   U9 : NOR31 port map( A => n27, B => n41, C => n31, Q => A2_10_port);
   U10 : XOR21 port map( A => n38, B => n39, Q => A1_11_port);
   U11 : XNR21 port map( A => n30, B => n26, Q => n41);
   U12 : XNR21 port map( A => n40, B => n44, Q => A1_10_port);
   U13 : NOR21 port map( A => n30, B => n26, Q => n44);
   U14 : NOR21 port map( A => n37, B => n30, Q => A2_8_port);
   U15 : NOR31 port map( A => n26, B => n40, C => n30, Q => A2_11_port);
   U16 : INV3 port map( A => SUMB_8_1_port, Q => n28);
   U17 : INV3 port map( A => CARRYB_8_1_port, Q => n27);
   U18 : INV3 port map( A => SUMB_7_3_port, Q => n31);
   U19 : INV3 port map( A => SUMB_8_3_port, Q => n26);
   U20 : INV3 port map( A => CARRYB_8_0_port, Q => n29);
   U21 : NOR21 port map( A => n38, B => n39, Q => A2_12_port);
   U22 : INV3 port map( A => A(9), Q => n30);
   U23 : XNR21 port map( A => A(7), B => CARRYB_8_3_port, Q => n40);
   U24 : XNR21 port map( A => A(9), B => A(8), Q => n38);
   U25 : XNR21 port map( A => A(2), B => n34, Q => SUMB_2_3_port);
   U26 : NAND22 port map( A => A(7), B => CARRYB_8_3_port, Q => n39);
   U27 : NOR21 port map( A => n25, B => n30, Q => CARRYB_9_4_port);
   U28 : INV3 port map( A => A(8), Q => n25);
   U29 : NOR21 port map( A => n34, B => n33, Q => CARRYB_1_0_port);
   U30 : INV3 port map( A => A(1), Q => n33);
   U31 : INV3 port map( A => A(0), Q => n34);
   U32 : INV3 port map( A => n35, Q => n32);
   U33 : NAND22 port map( A => A(0), B => A(2), Q => n35);
   U34 : XNR21 port map( A => n37, B => A(9), Q => A1_7_port);
   U35 : XNR21 port map( A => n33, B => A(0), Q => PRODUCT_1_port);
   U36 : LOGIC0 port map( Q => n24);

end SYN_csa;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_npath_width8_width_coeff4_width_phases4.all;

entity fir_width10_width_coeff4_DW02_mult_1 is

   port( A : in std_logic_vector (9 downto 0);  B : in std_logic_vector (7
         downto 0);  TC : in std_logic;  PRODUCT : out std_logic_vector (17
         downto 0));

end fir_width10_width_coeff4_DW02_mult_1;

architecture SYN_csa of fir_width10_width_coeff4_DW02_mult_1 is

   component LOGIC0
      port( Q : out std_logic);
   end component;
   
   component XNR21
      port( A, B : in std_logic;  Q : out std_logic);
   end component;
   
   component NAND31
      port( A, B, C : in std_logic;  Q : out std_logic);
   end component;
   
   component INV3
      port( A : in std_logic;  Q : out std_logic);
   end component;
   
   component NAND22
      port( A, B : in std_logic;  Q : out std_logic);
   end component;
   
   component NOR31
      port( A, B, C : in std_logic;  Q : out std_logic);
   end component;
   
   component XOR21
      port( A, B : in std_logic;  Q : out std_logic);
   end component;
   
   component NOR21
      port( A, B : in std_logic;  Q : out std_logic);
   end component;
   
   component fir_width10_width_coeff4_DW01_add_4
      port( A, B : in std_logic_vector (15 downto 0);  CI : in std_logic;  SUM
            : out std_logic_vector (15 downto 0);  CO : out std_logic);
   end component;
   
   component ADD32
      port( A, B, CI : in std_logic;  CO, S : out std_logic);
   end component;
   
   signal PRODUCT_17_port, PRODUCT_16_port, PRODUCT_15_port, PRODUCT_14_port,
      PRODUCT_13_port, PRODUCT_12_port, PRODUCT_11_port, PRODUCT_10_port,
      PRODUCT_9_port, PRODUCT_8_port, PRODUCT_7_port, PRODUCT_6_port,
      PRODUCT_5_port, PRODUCT_4_port, PRODUCT_3_port, PRODUCT_2_port,
      PRODUCT_1_port, CARRYB_8_1_port, CARRYB_8_0_port, CARRYB_7_1_port,
      CARRYB_7_0_port, CARRYB_6_1_port, CARRYB_6_0_port, CARRYB_5_1_port,
      CARRYB_5_0_port, CARRYB_4_0_port, CARRYB_3_0_port, CARRYB_2_0_port,
      SUMB_8_1_port, SUMB_7_1_port, SUMB_6_1_port, SUMB_5_1_port, PROD1_7_port,
      A1_12_port, A1_11_port, A1_10_port, A1_9_port, A1_8_port, A1_7_port,
      A1_6_port, A1_4_port, A1_3_port, A1_2_port, A1_1_port, A1_0_port,
      A2_11_port, A2_10_port, A2_9_port, A2_8_port, n25, n37, n38, n39, n40,
      n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n26, n27, n28, n29
      , n30, n31, n32, n33, n34, n35, n36, n_1083 : std_logic;

begin
   PRODUCT <= ( PRODUCT_17_port, PRODUCT_16_port, PRODUCT_15_port,
      PRODUCT_14_port, PRODUCT_13_port, PRODUCT_12_port, PRODUCT_11_port,
      PRODUCT_10_port, PRODUCT_9_port, PRODUCT_8_port, PRODUCT_7_port,
      PRODUCT_6_port, PRODUCT_5_port, PRODUCT_4_port, PRODUCT_3_port,
      PRODUCT_2_port, PRODUCT_1_port, A(0) );
   
   S1_8_0 : ADD32 port map( A => A(8), B => CARRYB_7_0_port, CI =>
                           SUMB_7_1_port, CO => CARRYB_8_0_port, S => A1_6_port
                           );
   S2_8_1 : ADD32 port map( A => A(8), B => CARRYB_7_1_port, CI => A(3), CO =>
                           CARRYB_8_1_port, S => SUMB_8_1_port);
   S1_7_0 : ADD32 port map( A => A(7), B => CARRYB_6_0_port, CI =>
                           SUMB_6_1_port, CO => CARRYB_7_0_port, S =>
                           PROD1_7_port);
   S2_7_1 : ADD32 port map( A => A(7), B => CARRYB_6_1_port, CI => A(2), CO =>
                           CARRYB_7_1_port, S => SUMB_7_1_port);
   S1_6_0 : ADD32 port map( A => A(6), B => CARRYB_5_0_port, CI =>
                           SUMB_5_1_port, CO => CARRYB_6_0_port, S => A1_4_port
                           );
   S2_6_1 : ADD32 port map( A => A(6), B => CARRYB_5_1_port, CI => A(1), CO =>
                           CARRYB_6_1_port, S => SUMB_6_1_port);
   S1_5_0 : ADD32 port map( A => A(5), B => CARRYB_4_0_port, CI => A(4), CO =>
                           CARRYB_5_0_port, S => A1_3_port);
   S1_4_0 : ADD32 port map( A => A(4), B => CARRYB_3_0_port, CI => A(3), CO =>
                           CARRYB_4_0_port, S => A1_2_port);
   S1_3_0 : ADD32 port map( A => A(3), B => CARRYB_2_0_port, CI => A(2), CO =>
                           CARRYB_3_0_port, S => A1_1_port);
   S1_2_0 : ADD32 port map( A => A(2), B => n35, CI => A(1), CO =>
                           CARRYB_2_0_port, S => A1_0_port);
   FS_1 : fir_width10_width_coeff4_DW01_add_4 port map( A(15) => A(9),
                           A(14) => A(9), A(13) => n29, A(12) => A1_12_port,
                           A(11) => A1_11_port, A(10) => A1_10_port, A(9) =>
                           A1_9_port, A(8) => A1_8_port, A(7) => A1_7_port,
                           A(6) => A1_6_port, A(5) => PROD1_7_port, A(4) =>
                           A1_4_port, A(3) => A1_3_port, A(2) => A1_2_port,
                           A(1) => A1_1_port, A(0) => A1_0_port, B(15) => n25,
                           B(14) => n25, B(13) => n27, B(12) => n28, B(11) =>
                           A2_11_port, B(10) => A2_10_port, B(9) => A2_9_port,
                           B(8) => A2_8_port, B(7) => n25, B(6) => n25, B(5) =>
                           n25, B(4) => n25, B(3) => n25, B(2) => n25, B(1) =>
                           n25, B(0) => n25, CI => n25, SUM(15) =>
                           PRODUCT_17_port, SUM(14) => PRODUCT_16_port, SUM(13)
                           => PRODUCT_15_port, SUM(12) => PRODUCT_14_port,
                           SUM(11) => PRODUCT_13_port, SUM(10) =>
                           PRODUCT_12_port, SUM(9) => PRODUCT_11_port, SUM(8)
                           => PRODUCT_10_port, SUM(7) => PRODUCT_9_port, SUM(6)
                           => PRODUCT_8_port, SUM(5) => PRODUCT_7_port, SUM(4)
                           => PRODUCT_6_port, SUM(3) => PRODUCT_5_port, SUM(2)
                           => PRODUCT_4_port, SUM(1) => PRODUCT_3_port, SUM(0)
                           => PRODUCT_2_port, CO => n_1083);
   U2 : NOR21 port map( A => n40, B => n26, Q => A2_8_port);
   U3 : XNR21 port map( A => n40, B => A(9), Q => A1_7_port);
   U4 : XNR21 port map( A => SUMB_8_1_port, B => CARRYB_8_0_port, Q => n40);
   U5 : XNR21 port map( A => n39, B => n48, Q => A1_8_port);
   U6 : NOR21 port map( A => n32, B => n31, Q => n48);
   U7 : INV3 port map( A => CARRYB_8_0_port, Q => n32);
   U8 : NOR31 port map( A => n31, B => n39, C => n32, Q => A2_9_port);
   U9 : XNR21 port map( A => n46, B => n47, Q => A1_9_port);
   U10 : NOR21 port map( A => n34, B => n30, Q => n47);
   U11 : NOR31 port map( A => n30, B => n46, C => n34, Q => A2_10_port);
   U12 : INV3 port map( A => CARRYB_8_1_port, Q => n30);
   U13 : INV3 port map( A => SUMB_8_1_port, Q => n31);
   U14 : INV3 port map( A => n38, Q => n35);
   U15 : NAND22 port map( A => A(0), B => A(1), Q => n38);
   U16 : XNR21 port map( A => A(4), B => CARRYB_8_1_port, Q => n39);
   U17 : XNR21 port map( A => A(5), B => n36, Q => SUMB_5_1_port);
   U18 : NOR21 port map( A => SUMB_5_1_port, B => n36, Q => CARRYB_5_1_port);
   U19 : INV3 port map( A => A(0), Q => n36);
   U20 : XNR21 port map( A => A(9), B => A(5), Q => n46);
   U21 : INV3 port map( A => A(9), Q => n26);
   U22 : XOR21 port map( A => n51, B => n45, Q => A1_10_port);
   U23 : NAND22 port map( A => A(9), B => A(5), Q => n51);
   U24 : XNR21 port map( A => n50, B => n44, Q => A1_11_port);
   U25 : NAND22 port map( A => A(6), B => A(9), Q => n50);
   U26 : XNR21 port map( A => A(9), B => A(6), Q => n45);
   U27 : XNR21 port map( A => n26, B => A(7), Q => n44);
   U28 : XNR21 port map( A => n26, B => A(8), Q => n42);
   U29 : XNR21 port map( A => n49, B => n42, Q => A1_12_port);
   U30 : NAND22 port map( A => A(7), B => A(9), Q => n49);
   U31 : NOR31 port map( A => n26, B => n45, C => n33, Q => A2_11_port);
   U32 : INV3 port map( A => A(5), Q => n33);
   U33 : INV3 port map( A => A(4), Q => n34);
   U34 : INV3 port map( A => n43, Q => n28);
   U35 : NAND31 port map( A => A(6), B => n44, C => A(9), Q => n43);
   U36 : INV3 port map( A => n37, Q => n29);
   U37 : NAND22 port map( A => A(8), B => A(9), Q => n37);
   U38 : INV3 port map( A => n41, Q => n27);
   U39 : NAND31 port map( A => A(7), B => n42, C => A(9), Q => n41);
   U40 : XNR21 port map( A => A(1), B => n36, Q => PRODUCT_1_port);
   U41 : LOGIC0 port map( Q => n25);

end SYN_csa;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_npath_width8_width_coeff4_width_phases4.all;

entity fir_width10_width_coeff4_DW01_add_2 is

   port( A, B : in std_logic_vector (17 downto 0);  CI : in std_logic;  SUM :
         out std_logic_vector (17 downto 0);  CO : out std_logic);

end fir_width10_width_coeff4_DW01_add_2;

architecture SYN_rpl of fir_width10_width_coeff4_DW01_add_2 is

   component INV3
      port( A : in std_logic;  Q : out std_logic);
   end component;
   
   component NOR21
      port( A, B : in std_logic;  Q : out std_logic);
   end component;
   
   component XOR21
      port( A, B : in std_logic;  Q : out std_logic);
   end component;
   
   component ADD32
      port( A, B, CI : in std_logic;  CO, S : out std_logic);
   end component;
   
   signal carry_17_port, carry_16_port, carry_15_port, carry_14_port,
      carry_13_port, carry_12_port, carry_11_port, carry_10_port, carry_9_port,
      carry_8_port, carry_7_port, carry_6_port, carry_5_port, carry_4_port,
      carry_3_port, carry_2_port, carry_1_port, n3, n4, n_1086 : std_logic;

begin
   
   U1_17 : ADD32 port map( A => A(17), B => B(17), CI => carry_17_port, CO =>
                           n_1086, S => SUM(17));
   U1_16 : ADD32 port map( A => A(16), B => B(16), CI => carry_16_port, CO =>
                           carry_17_port, S => SUM(16));
   U1_15 : ADD32 port map( A => A(15), B => B(15), CI => carry_15_port, CO =>
                           carry_16_port, S => SUM(15));
   U1_14 : ADD32 port map( A => A(14), B => B(14), CI => carry_14_port, CO =>
                           carry_15_port, S => SUM(14));
   U1_13 : ADD32 port map( A => A(13), B => B(13), CI => carry_13_port, CO =>
                           carry_14_port, S => SUM(13));
   U1_12 : ADD32 port map( A => A(12), B => B(12), CI => carry_12_port, CO =>
                           carry_13_port, S => SUM(12));
   U1_11 : ADD32 port map( A => A(11), B => B(11), CI => carry_11_port, CO =>
                           carry_12_port, S => SUM(11));
   U1_10 : ADD32 port map( A => A(10), B => B(10), CI => carry_10_port, CO =>
                           carry_11_port, S => SUM(10));
   U1_9 : ADD32 port map( A => A(9), B => B(9), CI => carry_9_port, CO =>
                           carry_10_port, S => SUM(9));
   U1_8 : ADD32 port map( A => A(8), B => B(8), CI => carry_8_port, CO =>
                           carry_9_port, S => SUM(8));
   U1_7 : ADD32 port map( A => A(7), B => B(7), CI => carry_7_port, CO =>
                           carry_8_port, S => SUM(7));
   U1_6 : ADD32 port map( A => A(6), B => B(6), CI => carry_6_port, CO =>
                           carry_7_port, S => SUM(6));
   U1_5 : ADD32 port map( A => A(5), B => B(5), CI => carry_5_port, CO =>
                           carry_6_port, S => SUM(5));
   U1_4 : ADD32 port map( A => A(4), B => B(4), CI => carry_4_port, CO =>
                           carry_5_port, S => SUM(4));
   U1_3 : ADD32 port map( A => A(3), B => B(3), CI => carry_3_port, CO =>
                           carry_4_port, S => SUM(3));
   U1_2 : ADD32 port map( A => A(2), B => B(2), CI => carry_2_port, CO =>
                           carry_3_port, S => SUM(2));
   U1_1 : ADD32 port map( A => A(1), B => B(1), CI => carry_1_port, CO =>
                           carry_2_port, S => SUM(1));
   U1 : XOR21 port map( A => A(0), B => B(0), Q => SUM(0));
   U2 : NOR21 port map( A => n3, B => n4, Q => carry_1_port);
   U3 : INV3 port map( A => A(0), Q => n4);
   U4 : INV3 port map( A => B(0), Q => n3);

end SYN_rpl;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_npath_width8_width_coeff4_width_phases4.all;

entity fir_width10_width_coeff4_DW01_add_1 is

   port( A, B : in std_logic_vector (17 downto 0);  CI : in std_logic;  SUM :
         out std_logic_vector (17 downto 0);  CO : out std_logic);

end fir_width10_width_coeff4_DW01_add_1;

architecture SYN_rpl of fir_width10_width_coeff4_DW01_add_1 is

   component INV3
      port( A : in std_logic;  Q : out std_logic);
   end component;
   
   component NOR21
      port( A, B : in std_logic;  Q : out std_logic);
   end component;
   
   component XOR21
      port( A, B : in std_logic;  Q : out std_logic);
   end component;
   
   component ADD32
      port( A, B, CI : in std_logic;  CO, S : out std_logic);
   end component;
   
   signal carry_17_port, carry_16_port, carry_15_port, carry_14_port,
      carry_13_port, carry_12_port, carry_11_port, carry_10_port, carry_9_port,
      carry_8_port, carry_7_port, carry_6_port, carry_5_port, carry_4_port,
      carry_3_port, carry_2_port, carry_1_port, n3, n4, n_1089 : std_logic;

begin
   
   U1_17 : ADD32 port map( A => A(17), B => B(17), CI => carry_17_port, CO =>
                           n_1089, S => SUM(17));
   U1_16 : ADD32 port map( A => A(16), B => B(16), CI => carry_16_port, CO =>
                           carry_17_port, S => SUM(16));
   U1_15 : ADD32 port map( A => A(15), B => B(15), CI => carry_15_port, CO =>
                           carry_16_port, S => SUM(15));
   U1_14 : ADD32 port map( A => A(14), B => B(14), CI => carry_14_port, CO =>
                           carry_15_port, S => SUM(14));
   U1_13 : ADD32 port map( A => A(13), B => B(13), CI => carry_13_port, CO =>
                           carry_14_port, S => SUM(13));
   U1_12 : ADD32 port map( A => A(12), B => B(12), CI => carry_12_port, CO =>
                           carry_13_port, S => SUM(12));
   U1_11 : ADD32 port map( A => A(11), B => B(11), CI => carry_11_port, CO =>
                           carry_12_port, S => SUM(11));
   U1_10 : ADD32 port map( A => A(10), B => B(10), CI => carry_10_port, CO =>
                           carry_11_port, S => SUM(10));
   U1_9 : ADD32 port map( A => A(9), B => B(9), CI => carry_9_port, CO =>
                           carry_10_port, S => SUM(9));
   U1_8 : ADD32 port map( A => A(8), B => B(8), CI => carry_8_port, CO =>
                           carry_9_port, S => SUM(8));
   U1_7 : ADD32 port map( A => A(7), B => B(7), CI => carry_7_port, CO =>
                           carry_8_port, S => SUM(7));
   U1_6 : ADD32 port map( A => A(6), B => B(6), CI => carry_6_port, CO =>
                           carry_7_port, S => SUM(6));
   U1_5 : ADD32 port map( A => A(5), B => B(5), CI => carry_5_port, CO =>
                           carry_6_port, S => SUM(5));
   U1_4 : ADD32 port map( A => A(4), B => B(4), CI => carry_4_port, CO =>
                           carry_5_port, S => SUM(4));
   U1_3 : ADD32 port map( A => A(3), B => B(3), CI => carry_3_port, CO =>
                           carry_4_port, S => SUM(3));
   U1_2 : ADD32 port map( A => A(2), B => B(2), CI => carry_2_port, CO =>
                           carry_3_port, S => SUM(2));
   U1_1 : ADD32 port map( A => A(1), B => B(1), CI => carry_1_port, CO =>
                           carry_2_port, S => SUM(1));
   U1 : XOR21 port map( A => A(0), B => B(0), Q => SUM(0));
   U2 : NOR21 port map( A => n3, B => n4, Q => carry_1_port);
   U3 : INV3 port map( A => A(0), Q => n4);
   U4 : INV3 port map( A => B(0), Q => n3);

end SYN_rpl;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_npath_width8_width_coeff4_width_phases4.all;

entity fir_width10_width_coeff4_DW01_add_0 is

   port( A, B : in std_logic_vector (18 downto 0);  CI : in std_logic;  SUM :
         out std_logic_vector (18 downto 0);  CO : out std_logic);

end fir_width10_width_coeff4_DW01_add_0;

architecture SYN_rpl of fir_width10_width_coeff4_DW01_add_0 is

   component INV3
      port( A : in std_logic;  Q : out std_logic);
   end component;
   
   component NOR21
      port( A, B : in std_logic;  Q : out std_logic);
   end component;
   
   component XOR21
      port( A, B : in std_logic;  Q : out std_logic);
   end component;
   
   component ADD32
      port( A, B, CI : in std_logic;  CO, S : out std_logic);
   end component;
   
   signal carry_18_port, carry_17_port, carry_16_port, carry_15_port,
      carry_14_port, carry_13_port, carry_12_port, carry_11_port, carry_10_port
      , carry_9_port, carry_8_port, carry_7_port, carry_6_port, carry_5_port,
      carry_4_port, carry_3_port, carry_2_port, carry_1_port, n3, n4, n_1092 :
      std_logic;

begin
   
   U1_18 : ADD32 port map( A => A(18), B => B(18), CI => carry_18_port, CO =>
                           n_1092, S => SUM(18));
   U1_17 : ADD32 port map( A => A(17), B => B(17), CI => carry_17_port, CO =>
                           carry_18_port, S => SUM(17));
   U1_16 : ADD32 port map( A => A(16), B => B(16), CI => carry_16_port, CO =>
                           carry_17_port, S => SUM(16));
   U1_15 : ADD32 port map( A => A(15), B => B(15), CI => carry_15_port, CO =>
                           carry_16_port, S => SUM(15));
   U1_14 : ADD32 port map( A => A(14), B => B(14), CI => carry_14_port, CO =>
                           carry_15_port, S => SUM(14));
   U1_13 : ADD32 port map( A => A(13), B => B(13), CI => carry_13_port, CO =>
                           carry_14_port, S => SUM(13));
   U1_12 : ADD32 port map( A => A(12), B => B(12), CI => carry_12_port, CO =>
                           carry_13_port, S => SUM(12));
   U1_11 : ADD32 port map( A => A(11), B => B(11), CI => carry_11_port, CO =>
                           carry_12_port, S => SUM(11));
   U1_10 : ADD32 port map( A => A(10), B => B(10), CI => carry_10_port, CO =>
                           carry_11_port, S => SUM(10));
   U1_9 : ADD32 port map( A => A(9), B => B(9), CI => carry_9_port, CO =>
                           carry_10_port, S => SUM(9));
   U1_8 : ADD32 port map( A => A(8), B => B(8), CI => carry_8_port, CO =>
                           carry_9_port, S => SUM(8));
   U1_7 : ADD32 port map( A => A(7), B => B(7), CI => carry_7_port, CO =>
                           carry_8_port, S => SUM(7));
   U1_6 : ADD32 port map( A => A(6), B => B(6), CI => carry_6_port, CO =>
                           carry_7_port, S => SUM(6));
   U1_5 : ADD32 port map( A => A(5), B => B(5), CI => carry_5_port, CO =>
                           carry_6_port, S => SUM(5));
   U1_4 : ADD32 port map( A => A(4), B => B(4), CI => carry_4_port, CO =>
                           carry_5_port, S => SUM(4));
   U1_3 : ADD32 port map( A => A(3), B => B(3), CI => carry_3_port, CO =>
                           carry_4_port, S => SUM(3));
   U1_2 : ADD32 port map( A => A(2), B => B(2), CI => carry_2_port, CO =>
                           carry_3_port, S => SUM(2));
   U1_1 : ADD32 port map( A => A(1), B => B(1), CI => carry_1_port, CO =>
                           carry_2_port, S => SUM(1));
   U1 : XOR21 port map( A => A(0), B => B(0), Q => SUM(0));
   U2 : NOR21 port map( A => n3, B => n4, Q => carry_1_port);
   U3 : INV3 port map( A => A(0), Q => n4);
   U4 : INV3 port map( A => B(0), Q => n3);

end SYN_rpl;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_npath_width8_width_coeff4_width_phases4.all;

entity fir_width10_width_coeff4_DW01_inc_0 is

   port( A : in std_logic_vector (12 downto 0);  SUM : out std_logic_vector (12
         downto 0));

end fir_width10_width_coeff4_DW01_inc_0;

architecture SYN_rpl of fir_width10_width_coeff4_DW01_inc_0 is

   component INV3
      port( A : in std_logic;  Q : out std_logic);
   end component;
   
   component XOR21
      port( A, B : in std_logic;  Q : out std_logic);
   end component;
   
   component ADD22
      port( A, B : in std_logic;  CO, S : out std_logic);
   end component;
   
   signal carry_12_port, carry_11_port, carry_10_port, carry_9_port,
      carry_8_port, carry_7_port, carry_6_port, carry_5_port, carry_4_port,
      carry_3_port, carry_2_port : std_logic;

begin
   
   U1_1_11 : ADD22 port map( A => A(11), B => carry_11_port, CO =>
                           carry_12_port, S => SUM(11));
   U1_1_10 : ADD22 port map( A => A(10), B => carry_10_port, CO =>
                           carry_11_port, S => SUM(10));
   U1_1_9 : ADD22 port map( A => A(9), B => carry_9_port, CO => carry_10_port,
                           S => SUM(9));
   U1_1_8 : ADD22 port map( A => A(8), B => carry_8_port, CO => carry_9_port, S
                           => SUM(8));
   U1_1_7 : ADD22 port map( A => A(7), B => carry_7_port, CO => carry_8_port, S
                           => SUM(7));
   U1_1_6 : ADD22 port map( A => A(6), B => carry_6_port, CO => carry_7_port, S
                           => SUM(6));
   U1_1_5 : ADD22 port map( A => A(5), B => carry_5_port, CO => carry_6_port, S
                           => SUM(5));
   U1_1_4 : ADD22 port map( A => A(4), B => carry_4_port, CO => carry_5_port, S
                           => SUM(4));
   U1_1_3 : ADD22 port map( A => A(3), B => carry_3_port, CO => carry_4_port, S
                           => SUM(3));
   U1_1_2 : ADD22 port map( A => A(2), B => carry_2_port, CO => carry_3_port, S
                           => SUM(2));
   U1_1_1 : ADD22 port map( A => A(1), B => A(0), CO => carry_2_port, S =>
                           SUM(1));
   U1 : XOR21 port map( A => carry_12_port, B => A(12), Q => SUM(12));
   U2 : INV3 port map( A => A(0), Q => SUM(0));

end SYN_rpl;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_npath_width8_width_coeff4_width_phases4.all;

entity fir_width10_width_coeff4 is

   port( clk : in std_logic;  vin : in std_logic_vector (9 downto 0);  vout :
         out std_logic_vector (12 downto 0));

end fir_width10_width_coeff4;

architecture SYN_behavior of fir_width10_width_coeff4 is

   component LOGIC0
      port( Q : out std_logic);
   end component;
   
   component LOGIC1
      port( Q : out std_logic);
   end component;
   
   component AOI221
      port( A, B, C, D : in std_logic;  Q : out std_logic);
   end component;
   
   component INV3
      port( A : in std_logic;  Q : out std_logic);
   end component;
   
   component NAND22
      port( A, B : in std_logic;  Q : out std_logic);
   end component;
   
   component NOR31
      port( A, B, C : in std_logic;  Q : out std_logic);
   end component;
   
   component fir_width10_width_coeff4_DW02_mult_0
      port( A : in std_logic_vector (9 downto 0);  B : in std_logic_vector (4
            downto 0);  TC : in std_logic;  PRODUCT : out std_logic_vector (14
            downto 0));
   end component;
   
   component fir_width10_width_coeff4_DW02_mult_2
      port( A : in std_logic_vector (9 downto 0);  B : in std_logic_vector (6
            downto 0);  TC : in std_logic;  PRODUCT : out std_logic_vector (16
            downto 0));
   end component;
   
   component fir_width10_width_coeff4_DW02_mult_3
      port( A : in std_logic_vector (9 downto 0);  B : in std_logic_vector (6
            downto 0);  TC : in std_logic;  PRODUCT : out std_logic_vector (16
            downto 0));
   end component;
   
   component fir_width10_width_coeff4_DW02_mult_1
      port( A : in std_logic_vector (9 downto 0);  B : in std_logic_vector (7
            downto 0);  TC : in std_logic;  PRODUCT : out std_logic_vector (17
            downto 0));
   end component;
   
   component fir_width10_width_coeff4_DW01_add_2
      port( A, B : in std_logic_vector (17 downto 0);  CI : in std_logic;  SUM
            : out std_logic_vector (17 downto 0);  CO : out std_logic);
   end component;
   
   component fir_width10_width_coeff4_DW01_add_1
      port( A, B : in std_logic_vector (17 downto 0);  CI : in std_logic;  SUM
            : out std_logic_vector (17 downto 0);  CO : out std_logic);
   end component;
   
   component fir_width10_width_coeff4_DW01_add_0
      port( A, B : in std_logic_vector (18 downto 0);  CI : in std_logic;  SUM
            : out std_logic_vector (18 downto 0);  CO : out std_logic);
   end component;
   
   component fir_width10_width_coeff4_DW01_inc_0
      port( A : in std_logic_vector (12 downto 0);  SUM : out std_logic_vector
            (12 downto 0));
   end component;
   
   component OAI212
      port( A, B, C : in std_logic;  Q : out std_logic);
   end component;
   
   component DF3
      port( D, C : in std_logic;  Q, QN : out std_logic);
   end component;
   
   signal q_s_3_9_port, q_s_3_8_port, q_s_3_7_port, q_s_3_6_port, q_s_3_5_port,
      q_s_3_4_port, q_s_3_3_port, q_s_3_2_port, q_s_3_1_port, q_s_3_0_port,
      q_s_2_9_port, q_s_2_8_port, q_s_2_7_port, q_s_2_6_port, q_s_2_5_port,
      q_s_2_4_port, q_s_2_3_port, q_s_2_2_port, q_s_2_1_port, q_s_2_0_port,
      q_s_1_9_port, q_s_1_8_port, q_s_1_7_port, q_s_1_6_port, q_s_1_5_port,
      q_s_1_4_port, q_s_1_3_port, q_s_1_2_port, q_s_1_1_port, q_s_1_0_port, N1,
      N2, N3, N4, N5, N6, N7, N8, N9, N10, N11, N12, N13, N14, N15, N16, N17,
      vec_2w_3_17_port, vec_2w_3_16_port, vec_2w_3_15_port, vec_2w_3_14_port,
      vec_2w_3_13_port, vec_2w_3_12_port, vec_2w_3_11_port, vec_2w_3_10_port,
      vec_2w_3_9_port, vec_2w_3_8_port, vec_2w_3_7_port, vec_2w_3_6_port,
      vec_2w_3_5_port, vec_2w_3_4_port, vec_2w_3_3_port, vec_2w_3_2_port,
      vec_2w_3_1_port, vec_2w_3_0_port, vec_2w_2_17_port, vec_2w_2_16_port,
      vec_2w_2_15_port, vec_2w_2_14_port, vec_2w_2_13_port, vec_2w_2_12_port,
      vec_2w_2_11_port, vec_2w_2_10_port, vec_2w_2_9_port, vec_2w_2_8_port,
      vec_2w_2_7_port, vec_2w_2_6_port, vec_2w_2_5_port, vec_2w_2_4_port,
      vec_2w_2_3_port, vec_2w_2_2_port, vec_2w_2_1_port, vec_2w_2_0_port,
      vec_2w_1_17_port, vec_2w_1_16_port, vec_2w_1_15_port, vec_2w_1_14_port,
      vec_2w_1_13_port, vec_2w_1_12_port, vec_2w_1_11_port, vec_2w_1_10_port,
      vec_2w_1_9_port, vec_2w_1_8_port, vec_2w_1_7_port, vec_2w_1_6_port,
      vec_2w_1_5_port, vec_2w_1_4_port, vec_2w_1_3_port, vec_2w_1_2_port,
      vec_2w_1_1_port, vec_2w_1_0_port, vec_2w_0_17_port, vec_2w_0_16_port,
      vec_2w_0_15_port, vec_2w_0_14_port, vec_2w_0_13_port, vec_2w_0_12_port,
      vec_2w_0_11_port, vec_2w_0_10_port, vec_2w_0_9_port, vec_2w_0_8_port,
      vec_2w_0_7_port, vec_2w_0_6_port, vec_2w_0_5_port, vec_2w_0_4_port,
      vec_2w_0_3_port, vec_2w_0_2_port, vec_2w_0_1_port, vec_2w_0_0_port, N18,
      N19, N20, N21, N22, N23, N24, N25, N26, N27, N28, N29, N30, N31, N32, N33
      , N34, N35, N36, N37, N38, N39, N40, N41, N42, N43, N44, N45, N46, N47,
      N48, N49, N50, N51, N52, N53, N54, N55, N56, N57, N58, N59, N60, N61, N62
      , N63, N64, N65, N66, N67, q_sum_1_0_19_port, q_sum_1_0_17_port,
      q_sum_1_0_16_port, q_sum_1_0_15_port, q_sum_1_0_14_port,
      q_sum_1_0_13_port, q_sum_1_0_12_port, q_sum_1_0_11_port,
      q_sum_1_0_10_port, q_sum_1_0_9_port, q_sum_1_0_8_port, q_sum_1_0_7_port,
      q_sum_1_0_6_port, q_sum_1_0_5_port, q_sum_1_0_4_port, q_sum_1_0_3_port,
      q_sum_1_0_2_port, q_sum_1_0_1_port, q_sum_1_0_0_port, N70, N71, N72, N73,
      N74, N75, N76, N77, N78, N79, N80, N81, N82, q_sum_0_1_9_port,
      q_sum_0_1_8_port, q_sum_0_1_7_port, q_sum_0_1_6_port, q_sum_0_1_5_port,
      q_sum_0_1_4_port, q_sum_0_1_3_port, q_sum_0_1_2_port, q_sum_0_1_1_port,
      q_sum_0_1_19_port, q_sum_0_1_16_port, q_sum_0_1_15_port,
      q_sum_0_1_14_port, q_sum_0_1_13_port, q_sum_0_1_12_port,
      q_sum_0_1_11_port, q_sum_0_1_10_port, q_sum_0_1_0_port, q_sum_0_0_9_port,
      q_sum_0_0_8_port, q_sum_0_0_7_port, q_sum_0_0_6_port, q_sum_0_0_5_port,
      q_sum_0_0_4_port, q_sum_0_0_3_port, q_sum_0_0_2_port, q_sum_0_0_1_port,
      q_sum_0_0_19_port, q_sum_0_0_16_port, q_sum_0_0_15_port,
      q_sum_0_0_14_port, q_sum_0_0_13_port, q_sum_0_0_12_port,
      q_sum_0_0_11_port, q_sum_0_0_10_port, q_sum_0_0_0_port, n1_port, n2_port,
      n120, n121, n122, n123, n124, n125, n126, n127, n128, n129, n130, n131,
      n132, n133, n134, n135, n136, n21_port, n33_port, n_1093, n_1094, n_1095,
      n_1096, n_1097, n_1098, n_1099, n_1100, n_1101, n_1102, n_1103, n_1104,
      n_1105, n_1106, n_1107, n_1108, n_1109, n_1110, n_1111, n_1112, n_1113,
      n_1114, n_1115, n_1116, n_1117, n_1118, n_1119, n_1120, n_1121, n_1122,
      n_1123, n_1124, n_1125, n_1126, n_1127, n_1128, n_1129, n_1130, n_1131,
      n_1132, n_1133, n_1134, n_1135, n_1136, n_1137, n_1138, n_1139, n_1140,
      n_1141, n_1142, n_1143, n_1144, n_1145, n_1146, n_1147, n_1148, n_1149,
      n_1150, n_1151, n_1152, n_1153, n_1154, n_1155, n_1156, n_1157, n_1158,
      n_1159, n_1160, n_1161, n_1162, n_1163, n_1164, n_1165, n_1166, n_1167,
      n_1168, n_1169, n_1170, n_1171, n_1172, n_1173, n_1174, n_1175, n_1176,
      n_1177, n_1178, n_1179, n_1180, n_1181, n_1182, n_1183, n_1184, n_1185,
      n_1186, n_1187, n_1188, n_1189, n_1190, n_1191, n_1192, n_1193, n_1194,
      n_1195, n_1196, n_1197 : std_logic;

begin
   
   q_s_reg_3_9_inst : DF3 port map( D => vin(9), C => clk, Q => q_s_3_9_port,
                           QN => n_1093);
   q_s_reg_3_8_inst : DF3 port map( D => vin(8), C => clk, Q => q_s_3_8_port,
                           QN => n_1094);
   q_s_reg_3_7_inst : DF3 port map( D => vin(7), C => clk, Q => q_s_3_7_port,
                           QN => n_1095);
   q_s_reg_3_6_inst : DF3 port map( D => vin(6), C => clk, Q => q_s_3_6_port,
                           QN => n_1096);
   q_s_reg_3_5_inst : DF3 port map( D => vin(5), C => clk, Q => q_s_3_5_port,
                           QN => n_1097);
   q_s_reg_3_4_inst : DF3 port map( D => vin(4), C => clk, Q => q_s_3_4_port,
                           QN => n_1098);
   q_s_reg_3_3_inst : DF3 port map( D => vin(3), C => clk, Q => q_s_3_3_port,
                           QN => n_1099);
   q_s_reg_3_2_inst : DF3 port map( D => vin(2), C => clk, Q => q_s_3_2_port,
                           QN => n_1100);
   q_s_reg_3_1_inst : DF3 port map( D => vin(1), C => clk, Q => q_s_3_1_port,
                           QN => n_1101);
   q_s_reg_3_0_inst : DF3 port map( D => vin(0), C => clk, Q => q_s_3_0_port,
                           QN => n_1102);
   q_s_reg_2_9_inst : DF3 port map( D => q_s_3_9_port, C => clk, Q =>
                           q_s_2_9_port, QN => n_1103);
   q_s_reg_2_8_inst : DF3 port map( D => q_s_3_8_port, C => clk, Q =>
                           q_s_2_8_port, QN => n_1104);
   q_s_reg_2_7_inst : DF3 port map( D => q_s_3_7_port, C => clk, Q =>
                           q_s_2_7_port, QN => n_1105);
   q_s_reg_2_6_inst : DF3 port map( D => q_s_3_6_port, C => clk, Q =>
                           q_s_2_6_port, QN => n_1106);
   q_s_reg_2_5_inst : DF3 port map( D => q_s_3_5_port, C => clk, Q =>
                           q_s_2_5_port, QN => n_1107);
   q_s_reg_2_4_inst : DF3 port map( D => q_s_3_4_port, C => clk, Q =>
                           q_s_2_4_port, QN => n_1108);
   q_s_reg_2_3_inst : DF3 port map( D => q_s_3_3_port, C => clk, Q =>
                           q_s_2_3_port, QN => n_1109);
   q_s_reg_2_2_inst : DF3 port map( D => q_s_3_2_port, C => clk, Q =>
                           q_s_2_2_port, QN => n_1110);
   q_s_reg_2_1_inst : DF3 port map( D => q_s_3_1_port, C => clk, Q =>
                           q_s_2_1_port, QN => n_1111);
   q_s_reg_2_0_inst : DF3 port map( D => q_s_3_0_port, C => clk, Q =>
                           q_s_2_0_port, QN => n_1112);
   q_s_reg_1_9_inst : DF3 port map( D => q_s_2_9_port, C => clk, Q =>
                           q_s_1_9_port, QN => n_1113);
   q_s_reg_1_8_inst : DF3 port map( D => q_s_2_8_port, C => clk, Q =>
                           q_s_1_8_port, QN => n_1114);
   q_s_reg_1_7_inst : DF3 port map( D => q_s_2_7_port, C => clk, Q =>
                           q_s_1_7_port, QN => n_1115);
   q_s_reg_1_6_inst : DF3 port map( D => q_s_2_6_port, C => clk, Q =>
                           q_s_1_6_port, QN => n_1116);
   q_s_reg_1_5_inst : DF3 port map( D => q_s_2_5_port, C => clk, Q =>
                           q_s_1_5_port, QN => n_1117);
   q_s_reg_1_4_inst : DF3 port map( D => q_s_2_4_port, C => clk, Q =>
                           q_s_1_4_port, QN => n_1118);
   q_s_reg_1_3_inst : DF3 port map( D => q_s_2_3_port, C => clk, Q =>
                           q_s_1_3_port, QN => n_1119);
   q_s_reg_1_2_inst : DF3 port map( D => q_s_2_2_port, C => clk, Q =>
                           q_s_1_2_port, QN => n_1120);
   q_s_reg_1_1_inst : DF3 port map( D => q_s_2_1_port, C => clk, Q =>
                           q_s_1_1_port, QN => n_1121);
   q_s_reg_1_0_inst : DF3 port map( D => q_s_2_0_port, C => clk, Q =>
                           q_s_1_0_port, QN => n_1122);
   vec_2w_reg_3_17_inst : DF3 port map( D => N17, C => clk, Q =>
                           vec_2w_3_17_port, QN => n_1123);
   vec_2w_reg_3_16_inst : DF3 port map( D => N17, C => clk, Q =>
                           vec_2w_3_16_port, QN => n_1124);
   vec_2w_reg_3_15_inst : DF3 port map( D => N16, C => clk, Q =>
                           vec_2w_3_15_port, QN => n_1125);
   vec_2w_reg_3_14_inst : DF3 port map( D => N15, C => clk, Q =>
                           vec_2w_3_14_port, QN => n_1126);
   vec_2w_reg_3_13_inst : DF3 port map( D => N14, C => clk, Q =>
                           vec_2w_3_13_port, QN => n_1127);
   vec_2w_reg_3_12_inst : DF3 port map( D => N13, C => clk, Q =>
                           vec_2w_3_12_port, QN => n_1128);
   vec_2w_reg_3_11_inst : DF3 port map( D => N12, C => clk, Q =>
                           vec_2w_3_11_port, QN => n_1129);
   vec_2w_reg_3_10_inst : DF3 port map( D => N11, C => clk, Q =>
                           vec_2w_3_10_port, QN => n_1130);
   vec_2w_reg_3_9_inst : DF3 port map( D => N10, C => clk, Q => vec_2w_3_9_port
                           , QN => n_1131);
   vec_2w_reg_3_8_inst : DF3 port map( D => N9, C => clk, Q => vec_2w_3_8_port,
                           QN => n_1132);
   vec_2w_reg_3_7_inst : DF3 port map( D => N8, C => clk, Q => vec_2w_3_7_port,
                           QN => n_1133);
   vec_2w_reg_3_6_inst : DF3 port map( D => N7, C => clk, Q => vec_2w_3_6_port,
                           QN => n_1134);
   vec_2w_reg_3_5_inst : DF3 port map( D => N6, C => clk, Q => vec_2w_3_5_port,
                           QN => n_1135);
   vec_2w_reg_3_4_inst : DF3 port map( D => N5, C => clk, Q => vec_2w_3_4_port,
                           QN => n_1136);
   vec_2w_reg_3_3_inst : DF3 port map( D => N4, C => clk, Q => vec_2w_3_3_port,
                           QN => n_1137);
   vec_2w_reg_3_2_inst : DF3 port map( D => N3, C => clk, Q => vec_2w_3_2_port,
                           QN => n_1138);
   vec_2w_reg_3_1_inst : DF3 port map( D => N2, C => clk, Q => vec_2w_3_1_port,
                           QN => n_1139);
   vec_2w_reg_3_0_inst : DF3 port map( D => N1, C => clk, Q => vec_2w_3_0_port,
                           QN => n_1140);
   vec_2w_reg_2_17_inst : DF3 port map( D => N35, C => clk, Q =>
                           vec_2w_2_17_port, QN => n_1141);
   vec_2w_reg_2_16_inst : DF3 port map( D => N34, C => clk, Q =>
                           vec_2w_2_16_port, QN => n_1142);
   vec_2w_reg_2_15_inst : DF3 port map( D => N33, C => clk, Q =>
                           vec_2w_2_15_port, QN => n_1143);
   vec_2w_reg_2_14_inst : DF3 port map( D => N32, C => clk, Q =>
                           vec_2w_2_14_port, QN => n_1144);
   vec_2w_reg_2_13_inst : DF3 port map( D => N31, C => clk, Q =>
                           vec_2w_2_13_port, QN => n_1145);
   vec_2w_reg_2_12_inst : DF3 port map( D => N30, C => clk, Q =>
                           vec_2w_2_12_port, QN => n_1146);
   vec_2w_reg_2_11_inst : DF3 port map( D => N29, C => clk, Q =>
                           vec_2w_2_11_port, QN => n_1147);
   vec_2w_reg_2_10_inst : DF3 port map( D => N28, C => clk, Q =>
                           vec_2w_2_10_port, QN => n_1148);
   vec_2w_reg_2_9_inst : DF3 port map( D => N27, C => clk, Q => vec_2w_2_9_port
                           , QN => n_1149);
   vec_2w_reg_2_8_inst : DF3 port map( D => N26, C => clk, Q => vec_2w_2_8_port
                           , QN => n_1150);
   vec_2w_reg_2_7_inst : DF3 port map( D => N25, C => clk, Q => vec_2w_2_7_port
                           , QN => n_1151);
   vec_2w_reg_2_6_inst : DF3 port map( D => N24, C => clk, Q => vec_2w_2_6_port
                           , QN => n_1152);
   vec_2w_reg_2_5_inst : DF3 port map( D => N23, C => clk, Q => vec_2w_2_5_port
                           , QN => n_1153);
   vec_2w_reg_2_4_inst : DF3 port map( D => N22, C => clk, Q => vec_2w_2_4_port
                           , QN => n_1154);
   vec_2w_reg_2_3_inst : DF3 port map( D => N21, C => clk, Q => vec_2w_2_3_port
                           , QN => n_1155);
   vec_2w_reg_2_2_inst : DF3 port map( D => N20, C => clk, Q => vec_2w_2_2_port
                           , QN => n_1156);
   vec_2w_reg_2_1_inst : DF3 port map( D => N19, C => clk, Q => vec_2w_2_1_port
                           , QN => n_1157);
   vec_2w_reg_2_0_inst : DF3 port map( D => N18, C => clk, Q => vec_2w_2_0_port
                           , QN => n_1158);
   vec_2w_reg_1_17_inst : DF3 port map( D => N52, C => clk, Q =>
                           vec_2w_1_17_port, QN => n_1159);
   vec_2w_reg_1_16_inst : DF3 port map( D => N52, C => clk, Q =>
                           vec_2w_1_16_port, QN => n_1160);
   vec_2w_reg_1_15_inst : DF3 port map( D => N51, C => clk, Q =>
                           vec_2w_1_15_port, QN => n_1161);
   vec_2w_reg_1_14_inst : DF3 port map( D => N50, C => clk, Q =>
                           vec_2w_1_14_port, QN => n_1162);
   vec_2w_reg_1_13_inst : DF3 port map( D => N49, C => clk, Q =>
                           vec_2w_1_13_port, QN => n_1163);
   vec_2w_reg_1_12_inst : DF3 port map( D => N48, C => clk, Q =>
                           vec_2w_1_12_port, QN => n_1164);
   vec_2w_reg_1_11_inst : DF3 port map( D => N47, C => clk, Q =>
                           vec_2w_1_11_port, QN => n_1165);
   vec_2w_reg_1_10_inst : DF3 port map( D => N46, C => clk, Q =>
                           vec_2w_1_10_port, QN => n_1166);
   vec_2w_reg_1_9_inst : DF3 port map( D => N45, C => clk, Q => vec_2w_1_9_port
                           , QN => n_1167);
   vec_2w_reg_1_8_inst : DF3 port map( D => N44, C => clk, Q => vec_2w_1_8_port
                           , QN => n_1168);
   vec_2w_reg_1_7_inst : DF3 port map( D => N43, C => clk, Q => vec_2w_1_7_port
                           , QN => n_1169);
   vec_2w_reg_1_6_inst : DF3 port map( D => N42, C => clk, Q => vec_2w_1_6_port
                           , QN => n_1170);
   vec_2w_reg_1_5_inst : DF3 port map( D => N41, C => clk, Q => vec_2w_1_5_port
                           , QN => n_1171);
   vec_2w_reg_1_4_inst : DF3 port map( D => N40, C => clk, Q => vec_2w_1_4_port
                           , QN => n_1172);
   vec_2w_reg_1_3_inst : DF3 port map( D => N39, C => clk, Q => vec_2w_1_3_port
                           , QN => n_1173);
   vec_2w_reg_1_2_inst : DF3 port map( D => N38, C => clk, Q => vec_2w_1_2_port
                           , QN => n_1174);
   vec_2w_reg_1_1_inst : DF3 port map( D => N37, C => clk, Q => vec_2w_1_1_port
                           , QN => n_1175);
   vec_2w_reg_1_0_inst : DF3 port map( D => N36, C => clk, Q => vec_2w_1_0_port
                           , QN => n_1176);
   vec_2w_reg_0_17_inst : DF3 port map( D => N67, C => clk, Q =>
                           vec_2w_0_17_port, QN => n_1177);
   vec_2w_reg_0_16_inst : DF3 port map( D => N67, C => clk, Q =>
                           vec_2w_0_16_port, QN => n_1178);
   vec_2w_reg_0_15_inst : DF3 port map( D => N67, C => clk, Q =>
                           vec_2w_0_15_port, QN => n_1179);
   vec_2w_reg_0_14_inst : DF3 port map( D => N67, C => clk, Q =>
                           vec_2w_0_14_port, QN => n_1180);
   vec_2w_reg_0_13_inst : DF3 port map( D => N66, C => clk, Q =>
                           vec_2w_0_13_port, QN => n_1181);
   vec_2w_reg_0_12_inst : DF3 port map( D => N65, C => clk, Q =>
                           vec_2w_0_12_port, QN => n_1182);
   vec_2w_reg_0_11_inst : DF3 port map( D => N64, C => clk, Q =>
                           vec_2w_0_11_port, QN => n_1183);
   vec_2w_reg_0_10_inst : DF3 port map( D => N63, C => clk, Q =>
                           vec_2w_0_10_port, QN => n_1184);
   vec_2w_reg_0_9_inst : DF3 port map( D => N62, C => clk, Q => vec_2w_0_9_port
                           , QN => n_1185);
   vec_2w_reg_0_8_inst : DF3 port map( D => N61, C => clk, Q => vec_2w_0_8_port
                           , QN => n_1186);
   vec_2w_reg_0_7_inst : DF3 port map( D => N60, C => clk, Q => vec_2w_0_7_port
                           , QN => n_1187);
   vec_2w_reg_0_6_inst : DF3 port map( D => N59, C => clk, Q => vec_2w_0_6_port
                           , QN => n_1188);
   vec_2w_reg_0_5_inst : DF3 port map( D => N58, C => clk, Q => vec_2w_0_5_port
                           , QN => n_1189);
   vec_2w_reg_0_4_inst : DF3 port map( D => N57, C => clk, Q => vec_2w_0_4_port
                           , QN => n_1190);
   vec_2w_reg_0_3_inst : DF3 port map( D => N56, C => clk, Q => vec_2w_0_3_port
                           , QN => n_1191);
   vec_2w_reg_0_2_inst : DF3 port map( D => N55, C => clk, Q => vec_2w_0_2_port
                           , QN => n_1192);
   vec_2w_reg_0_1_inst : DF3 port map( D => N54, C => clk, Q => vec_2w_0_1_port
                           , QN => n_1193);
   vec_2w_reg_0_0_inst : DF3 port map( D => N53, C => clk, Q => vec_2w_0_0_port
                           , QN => n_1194);
   U5 : OAI212 port map( A => n33_port, B => n21_port, C => n120, Q => vout(12)
                           );
   U7 : OAI212 port map( A => n33_port, B => n21_port, C => n121, Q => vout(11)
                           );
   add_66 : fir_width10_width_coeff4_DW01_inc_0 port map( A(12) =>
                           q_sum_1_0_19_port, A(11) => q_sum_1_0_19_port, A(10)
                           => q_sum_1_0_17_port, A(9) => q_sum_1_0_16_port,
                           A(8) => q_sum_1_0_15_port, A(7) => q_sum_1_0_14_port
                           , A(6) => q_sum_1_0_13_port, A(5) =>
                           q_sum_1_0_12_port, A(4) => q_sum_1_0_11_port, A(3)
                           => q_sum_1_0_10_port, A(2) => q_sum_1_0_9_port, A(1)
                           => q_sum_1_0_8_port, A(0) => q_sum_1_0_7_port,
                           SUM(12) => N82, SUM(11) => N81, SUM(10) => N80,
                           SUM(9) => N79, SUM(8) => N78, SUM(7) => N77, SUM(6)
                           => N76, SUM(5) => N75, SUM(4) => N74, SUM(3) => N73,
                           SUM(2) => N72, SUM(1) => N71, SUM(0) => N70);
   add_58 : fir_width10_width_coeff4_DW01_add_0 port map( A(18) =>
                           q_sum_0_0_19_port, A(17) => q_sum_0_0_19_port, A(16)
                           => q_sum_0_0_16_port, A(15) => q_sum_0_0_15_port,
                           A(14) => q_sum_0_0_14_port, A(13) =>
                           q_sum_0_0_13_port, A(12) => q_sum_0_0_12_port, A(11)
                           => q_sum_0_0_11_port, A(10) => q_sum_0_0_10_port,
                           A(9) => q_sum_0_0_9_port, A(8) => q_sum_0_0_8_port,
                           A(7) => q_sum_0_0_7_port, A(6) => q_sum_0_0_6_port,
                           A(5) => q_sum_0_0_5_port, A(4) => q_sum_0_0_4_port,
                           A(3) => q_sum_0_0_3_port, A(2) => q_sum_0_0_2_port,
                           A(1) => q_sum_0_0_1_port, A(0) => q_sum_0_0_0_port,
                           B(18) => q_sum_0_1_19_port, B(17) =>
                           q_sum_0_1_19_port, B(16) => q_sum_0_1_16_port, B(15)
                           => q_sum_0_1_15_port, B(14) => q_sum_0_1_14_port,
                           B(13) => q_sum_0_1_13_port, B(12) =>
                           q_sum_0_1_12_port, B(11) => q_sum_0_1_11_port, B(10)
                           => q_sum_0_1_10_port, B(9) => q_sum_0_1_9_port, B(8)
                           => q_sum_0_1_8_port, B(7) => q_sum_0_1_7_port, B(6)
                           => q_sum_0_1_6_port, B(5) => q_sum_0_1_5_port, B(4)
                           => q_sum_0_1_4_port, B(3) => q_sum_0_1_3_port, B(2)
                           => q_sum_0_1_2_port, B(1) => q_sum_0_1_1_port, B(0)
                           => q_sum_0_1_0_port, CI => n1_port, SUM(18) =>
                           q_sum_1_0_19_port, SUM(17) => q_sum_1_0_17_port,
                           SUM(16) => q_sum_1_0_16_port, SUM(15) =>
                           q_sum_1_0_15_port, SUM(14) => q_sum_1_0_14_port,
                           SUM(13) => q_sum_1_0_13_port, SUM(12) =>
                           q_sum_1_0_12_port, SUM(11) => q_sum_1_0_11_port,
                           SUM(10) => q_sum_1_0_10_port, SUM(9) =>
                           q_sum_1_0_9_port, SUM(8) => q_sum_1_0_8_port, SUM(7)
                           => q_sum_1_0_7_port, SUM(6) => q_sum_1_0_6_port,
                           SUM(5) => q_sum_1_0_5_port, SUM(4) =>
                           q_sum_1_0_4_port, SUM(3) => q_sum_1_0_3_port, SUM(2)
                           => q_sum_1_0_2_port, SUM(1) => q_sum_1_0_1_port,
                           SUM(0) => q_sum_1_0_0_port, CO => n_1195);
   add_50_I3 : fir_width10_width_coeff4_DW01_add_1 port map( A(17) =>
                           vec_2w_2_17_port, A(16) => vec_2w_2_16_port, A(15)
                           => vec_2w_2_15_port, A(14) => vec_2w_2_14_port,
                           A(13) => vec_2w_2_13_port, A(12) => vec_2w_2_12_port
                           , A(11) => vec_2w_2_11_port, A(10) =>
                           vec_2w_2_10_port, A(9) => vec_2w_2_9_port, A(8) =>
                           vec_2w_2_8_port, A(7) => vec_2w_2_7_port, A(6) =>
                           vec_2w_2_6_port, A(5) => vec_2w_2_5_port, A(4) =>
                           vec_2w_2_4_port, A(3) => vec_2w_2_3_port, A(2) =>
                           vec_2w_2_2_port, A(1) => vec_2w_2_1_port, A(0) =>
                           vec_2w_2_0_port, B(17) => vec_2w_3_17_port, B(16) =>
                           vec_2w_3_16_port, B(15) => vec_2w_3_15_port, B(14)
                           => vec_2w_3_14_port, B(13) => vec_2w_3_13_port,
                           B(12) => vec_2w_3_12_port, B(11) => vec_2w_3_11_port
                           , B(10) => vec_2w_3_10_port, B(9) => vec_2w_3_9_port
                           , B(8) => vec_2w_3_8_port, B(7) => vec_2w_3_7_port,
                           B(6) => vec_2w_3_6_port, B(5) => vec_2w_3_5_port,
                           B(4) => vec_2w_3_4_port, B(3) => vec_2w_3_3_port,
                           B(2) => vec_2w_3_2_port, B(1) => vec_2w_3_1_port,
                           B(0) => vec_2w_3_0_port, CI => n1_port, SUM(17) =>
                           q_sum_0_1_19_port, SUM(16) => q_sum_0_1_16_port,
                           SUM(15) => q_sum_0_1_15_port, SUM(14) =>
                           q_sum_0_1_14_port, SUM(13) => q_sum_0_1_13_port,
                           SUM(12) => q_sum_0_1_12_port, SUM(11) =>
                           q_sum_0_1_11_port, SUM(10) => q_sum_0_1_10_port,
                           SUM(9) => q_sum_0_1_9_port, SUM(8) =>
                           q_sum_0_1_8_port, SUM(7) => q_sum_0_1_7_port, SUM(6)
                           => q_sum_0_1_6_port, SUM(5) => q_sum_0_1_5_port,
                           SUM(4) => q_sum_0_1_4_port, SUM(3) =>
                           q_sum_0_1_3_port, SUM(2) => q_sum_0_1_2_port, SUM(1)
                           => q_sum_0_1_1_port, SUM(0) => q_sum_0_1_0_port, CO
                           => n_1196);
   add_50 : fir_width10_width_coeff4_DW01_add_2 port map( A(17) =>
                           vec_2w_0_17_port, A(16) => vec_2w_0_16_port, A(15)
                           => vec_2w_0_15_port, A(14) => vec_2w_0_14_port,
                           A(13) => vec_2w_0_13_port, A(12) => vec_2w_0_12_port
                           , A(11) => vec_2w_0_11_port, A(10) =>
                           vec_2w_0_10_port, A(9) => vec_2w_0_9_port, A(8) =>
                           vec_2w_0_8_port, A(7) => vec_2w_0_7_port, A(6) =>
                           vec_2w_0_6_port, A(5) => vec_2w_0_5_port, A(4) =>
                           vec_2w_0_4_port, A(3) => vec_2w_0_3_port, A(2) =>
                           vec_2w_0_2_port, A(1) => vec_2w_0_1_port, A(0) =>
                           vec_2w_0_0_port, B(17) => vec_2w_1_17_port, B(16) =>
                           vec_2w_1_16_port, B(15) => vec_2w_1_15_port, B(14)
                           => vec_2w_1_14_port, B(13) => vec_2w_1_13_port,
                           B(12) => vec_2w_1_12_port, B(11) => vec_2w_1_11_port
                           , B(10) => vec_2w_1_10_port, B(9) => vec_2w_1_9_port
                           , B(8) => vec_2w_1_8_port, B(7) => vec_2w_1_7_port,
                           B(6) => vec_2w_1_6_port, B(5) => vec_2w_1_5_port,
                           B(4) => vec_2w_1_4_port, B(3) => vec_2w_1_3_port,
                           B(2) => vec_2w_1_2_port, B(1) => vec_2w_1_1_port,
                           B(0) => vec_2w_1_0_port, CI => n1_port, SUM(17) =>
                           q_sum_0_0_19_port, SUM(16) => q_sum_0_0_16_port,
                           SUM(15) => q_sum_0_0_15_port, SUM(14) =>
                           q_sum_0_0_14_port, SUM(13) => q_sum_0_0_13_port,
                           SUM(12) => q_sum_0_0_12_port, SUM(11) =>
                           q_sum_0_0_11_port, SUM(10) => q_sum_0_0_10_port,
                           SUM(9) => q_sum_0_0_9_port, SUM(8) =>
                           q_sum_0_0_8_port, SUM(7) => q_sum_0_0_7_port, SUM(6)
                           => q_sum_0_0_6_port, SUM(5) => q_sum_0_0_5_port,
                           SUM(4) => q_sum_0_0_4_port, SUM(3) =>
                           q_sum_0_0_3_port, SUM(2) => q_sum_0_0_2_port, SUM(1)
                           => q_sum_0_0_1_port, SUM(0) => q_sum_0_0_0_port, CO
                           => n_1197);
   mult_37 : fir_width10_width_coeff4_DW02_mult_1 port map( A(9) =>
                           q_s_3_9_port, A(8) => q_s_3_8_port, A(7) =>
                           q_s_3_7_port, A(6) => q_s_3_6_port, A(5) =>
                           q_s_3_5_port, A(4) => q_s_3_4_port, A(3) =>
                           q_s_3_3_port, A(2) => q_s_3_2_port, A(1) =>
                           q_s_3_1_port, A(0) => q_s_3_0_port, B(7) => n1_port,
                           B(6) => n2_port, B(5) => n1_port, B(4) => n1_port,
                           B(3) => n1_port, B(2) => n1_port, B(1) => n2_port,
                           B(0) => n2_port, TC => n2_port, PRODUCT(17) => N35,
                           PRODUCT(16) => N34, PRODUCT(15) => N33, PRODUCT(14)
                           => N32, PRODUCT(13) => N31, PRODUCT(12) => N30,
                           PRODUCT(11) => N29, PRODUCT(10) => N28, PRODUCT(9)
                           => N27, PRODUCT(8) => N26, PRODUCT(7) => N25,
                           PRODUCT(6) => N24, PRODUCT(5) => N23, PRODUCT(4) =>
                           N22, PRODUCT(3) => N21, PRODUCT(2) => N20,
                           PRODUCT(1) => N19, PRODUCT(0) => N18);
   mult_34 : fir_width10_width_coeff4_DW02_mult_3 port map( A(9) =>
                           vin(9), A(8) => vin(8), A(7) => vin(7), A(6) =>
                           vin(6), A(5) => vin(5), A(4) => vin(4), A(3) =>
                           vin(3), A(2) => vin(2), A(1) => vin(1), A(0) =>
                           vin(0), B(6) => n1_port, B(5) => n2_port, B(4) =>
                           n1_port, B(3) => n2_port, B(2) => n1_port, B(1) =>
                           n2_port, B(0) => n2_port, TC => n2_port, PRODUCT(16)
                           => N17, PRODUCT(15) => N16, PRODUCT(14) => N15,
                           PRODUCT(13) => N14, PRODUCT(12) => N13, PRODUCT(11)
                           => N12, PRODUCT(10) => N11, PRODUCT(9) => N10,
                           PRODUCT(8) => N9, PRODUCT(7) => N8, PRODUCT(6) => N7
                           , PRODUCT(5) => N6, PRODUCT(4) => N5, PRODUCT(3) =>
                           N4, PRODUCT(2) => N3, PRODUCT(1) => N2, PRODUCT(0)
                           => N1);
   mult_37_I2 : fir_width10_width_coeff4_DW02_mult_2 port map( A(9) =>
                           q_s_2_9_port, A(8) => q_s_2_8_port, A(7) =>
                           q_s_2_7_port, A(6) => q_s_2_6_port, A(5) =>
                           q_s_2_5_port, A(4) => q_s_2_4_port, A(3) =>
                           q_s_2_3_port, A(2) => q_s_2_2_port, A(1) =>
                           q_s_2_1_port, A(0) => q_s_2_0_port, B(6) => n1_port,
                           B(5) => n2_port, B(4) => n1_port, B(3) => n2_port,
                           B(2) => n1_port, B(1) => n2_port, B(0) => n2_port,
                           TC => n2_port, PRODUCT(16) => N52, PRODUCT(15) =>
                           N51, PRODUCT(14) => N50, PRODUCT(13) => N49,
                           PRODUCT(12) => N48, PRODUCT(11) => N47, PRODUCT(10)
                           => N46, PRODUCT(9) => N45, PRODUCT(8) => N44,
                           PRODUCT(7) => N43, PRODUCT(6) => N42, PRODUCT(5) =>
                           N41, PRODUCT(4) => N40, PRODUCT(3) => N39,
                           PRODUCT(2) => N38, PRODUCT(1) => N37, PRODUCT(0) =>
                           N36);
   mult_37_I3 : fir_width10_width_coeff4_DW02_mult_0 port map( A(9) =>
                           q_s_1_9_port, A(8) => q_s_1_8_port, A(7) =>
                           q_s_1_7_port, A(6) => q_s_1_6_port, A(5) =>
                           q_s_1_5_port, A(4) => q_s_1_4_port, A(3) =>
                           q_s_1_3_port, A(2) => q_s_1_2_port, A(1) =>
                           q_s_1_1_port, A(0) => q_s_1_0_port, B(4) => n2_port,
                           B(3) => n1_port, B(2) => n1_port, B(1) => n2_port,
                           B(0) => n2_port, TC => n2_port, PRODUCT(14) => N67,
                           PRODUCT(13) => N66, PRODUCT(12) => N65, PRODUCT(11)
                           => N64, PRODUCT(10) => N63, PRODUCT(9) => N62,
                           PRODUCT(8) => N61, PRODUCT(7) => N60, PRODUCT(6) =>
                           N59, PRODUCT(5) => N58, PRODUCT(4) => N57,
                           PRODUCT(3) => N56, PRODUCT(2) => N55, PRODUCT(1) =>
                           N54, PRODUCT(0) => N53);
   U3 : INV3 port map( A => n123, Q => n33_port);
   U4 : NAND22 port map( A => N81, B => n33_port, Q => n121);
   U6 : NAND22 port map( A => q_sum_1_0_6_port, B => n134, Q => n123);
   U8 : NAND22 port map( A => n135, B => n136, Q => n134);
   U9 : NOR31 port map( A => q_sum_1_0_0_port, B => q_sum_1_0_2_port, C =>
                           q_sum_1_0_1_port, Q => n135);
   U10 : NOR31 port map( A => q_sum_1_0_3_port, B => q_sum_1_0_5_port, C =>
                           q_sum_1_0_4_port, Q => n136);
   U11 : NAND22 port map( A => N82, B => n33_port, Q => n120);
   U12 : INV3 port map( A => q_sum_1_0_19_port, Q => n21_port);
   U13 : INV3 port map( A => n133, Q => vout(0));
   U14 : AOI221 port map( A => q_sum_1_0_7_port, B => n123, C => N70, D =>
                           n33_port, Q => n133);
   U15 : INV3 port map( A => n132, Q => vout(1));
   U16 : AOI221 port map( A => q_sum_1_0_8_port, B => n123, C => N71, D =>
                           n33_port, Q => n132);
   U17 : INV3 port map( A => n131, Q => vout(2));
   U18 : AOI221 port map( A => q_sum_1_0_9_port, B => n123, C => N72, D =>
                           n33_port, Q => n131);
   U19 : INV3 port map( A => n130, Q => vout(3));
   U20 : AOI221 port map( A => q_sum_1_0_10_port, B => n123, C => N73, D =>
                           n33_port, Q => n130);
   U21 : INV3 port map( A => n129, Q => vout(4));
   U22 : AOI221 port map( A => q_sum_1_0_11_port, B => n123, C => N74, D =>
                           n33_port, Q => n129);
   U23 : INV3 port map( A => n128, Q => vout(5));
   U24 : AOI221 port map( A => q_sum_1_0_12_port, B => n123, C => N75, D =>
                           n33_port, Q => n128);
   U25 : INV3 port map( A => n127, Q => vout(6));
   U26 : AOI221 port map( A => q_sum_1_0_13_port, B => n123, C => N76, D =>
                           n33_port, Q => n127);
   U27 : INV3 port map( A => n126, Q => vout(7));
   U28 : AOI221 port map( A => q_sum_1_0_14_port, B => n123, C => N77, D =>
                           n33_port, Q => n126);
   U29 : INV3 port map( A => n125, Q => vout(8));
   U30 : AOI221 port map( A => q_sum_1_0_15_port, B => n123, C => N78, D =>
                           n33_port, Q => n125);
   U31 : INV3 port map( A => n124, Q => vout(9));
   U32 : AOI221 port map( A => q_sum_1_0_16_port, B => n123, C => N79, D =>
                           n33_port, Q => n124);
   U33 : INV3 port map( A => n122, Q => vout(10));
   U34 : AOI221 port map( A => q_sum_1_0_17_port, B => n123, C => N80, D =>
                           n33_port, Q => n122);
   U35 : LOGIC1 port map( Q => n2_port);
   U36 : LOGIC0 port map( Q => n1_port);

end SYN_behavior;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_npath_width8_width_coeff4_width_phases4.all;

entity npath_width8_width_coeff4_width_phases4 is

   port( clk, clk_phg : in std_logic;  vin : in std_logic_vector (7 downto 0);
         vout_s : out std_logic_vector (12 downto 0));

end npath_width8_width_coeff4_width_phases4;

architecture SYN_behavior of npath_width8_width_coeff4_width_phases4 is

   component NAND22
      port( A, B : in std_logic;  Q : out std_logic);
   end component;
   
   component CLKIN3
      port( A : in std_logic;  Q : out std_logic);
   end component;
   
   component LOGIC0
      port( Q : out std_logic);
   end component;
   
   component NOR40
      port( A, B, C, D : in std_logic;  Q : out std_logic);
   end component;
   
   component NOR21
      port( A, B : in std_logic;  Q : out std_logic);
   end component;
   
   component NAND41
      port( A, B, C, D : in std_logic;  Q : out std_logic);
   end component;
   
   component NOR31
      port( A, B, C : in std_logic;  Q : out std_logic);
   end component;
   
   component npath_width8_width_coeff4_width_phases4_DW01_inc_1
      port( A : in std_logic_vector (30 downto 0);  SUM : out std_logic_vector
            (30 downto 0));
   end component;
   
   component npath_width8_width_coeff4_width_phases4_DW01_sub_0
      port( A, B : in std_logic_vector (8 downto 0);  CI : in std_logic;  DIFF
            : out std_logic_vector (8 downto 0);  CO : out std_logic);
   end component;
   
   component fir_width10_width_coeff4
      port( clk : in std_logic;  vin : in std_logic_vector (9 downto 0);  vout
            : out std_logic_vector (12 downto 0));
   end component;
   
   component DF3
      port( D, C : in std_logic;  Q, QN : out std_logic);
   end component;
   
   signal counter_30_port, counter_29_port, counter_28_port, counter_27_port,
      counter_26_port, counter_25_port, counter_24_port, counter_23_port,
      counter_22_port, counter_21_port, counter_20_port, counter_19_port,
      counter_18_port, counter_17_port, counter_16_port, counter_15_port,
      counter_14_port, counter_13_port, counter_12_port, counter_11_port,
      counter_10_port, counter_9_port, counter_8_port, counter_7_port,
      counter_6_port, counter_5_port, counter_4_port, counter_3_port,
      counter_2_port, counter_1_port, counter_0_port, phg_3_port, phg_1, N1, N2
      , N3, N4, N5, N6, N7, N8, N9, N10, N11, N12, N13, N14, N15, N16, N17, N18
      , N19, N20, N21, N22, N23, N24, N25, N26, N27, N28, N29, N30, N31, N34,
      N36, reg_out_array_3_8_port, reg_out_array_3_7_port,
      reg_out_array_3_6_port, reg_out_array_3_5_port, reg_out_array_3_4_port,
      reg_out_array_3_3_port, reg_out_array_3_2_port, reg_out_array_3_1_port,
      reg_out_array_3_0_port, reg_out_array_1_8_port, reg_out_array_1_7_port,
      reg_out_array_1_6_port, reg_out_array_1_5_port, reg_out_array_1_4_port,
      reg_out_array_1_3_port, reg_out_array_1_2_port, reg_out_array_1_1_port,
      reg_out_array_1_0_port, q_sum_0_0_9_port, q_sum_0_0_7_port,
      q_sum_0_0_6_port, q_sum_0_0_5_port, q_sum_0_0_4_port, q_sum_0_0_3_port,
      q_sum_0_0_2_port, q_sum_0_0_1_port, q_sum_0_0_0_port, n2_port, n52, n53,
      n54, n55, n56, n57, n58, n59, n60, n61, n62, n63, n64, n65, n66, n67, n68
      , n69, n70, n71, n72, n73, n74, n75, n76, n77, n78, n79, n80, n81, n82,
      n83, n84, n_1198, n_1199, n_1200, n_1201, n_1202, n_1203, n_1204, n_1205,
      n_1206, n_1207, n_1208, n_1209, n_1210, n_1211, n_1212, n_1213, n_1214,
      n_1215, n_1216, n_1217, n_1218, n_1219, n_1220, n_1221, n_1222, n_1223,
      n_1224, n_1225, n_1226, n_1227, n_1228, n_1229, n_1230, n_1231, n_1232,
      n_1233, n_1234, n_1235, n_1236, n_1237, n_1238, n_1239, n_1240, n_1241,
      n_1242, n_1243, n_1244, n_1245 : std_logic;

begin
   
   counter_reg_0_inst : DF3 port map( D => N34, C => clk_phg, Q =>
                           counter_0_port, QN => n55);
   counter_reg_29_inst : DF3 port map( D => N30, C => clk_phg, Q =>
                           counter_29_port, QN => n_1198);
   counter_reg_28_inst : DF3 port map( D => N29, C => clk_phg, Q =>
                           counter_28_port, QN => n54);
   counter_reg_27_inst : DF3 port map( D => N28, C => clk_phg, Q =>
                           counter_27_port, QN => n57);
   counter_reg_26_inst : DF3 port map( D => N27, C => clk_phg, Q =>
                           counter_26_port, QN => n_1199);
   counter_reg_25_inst : DF3 port map( D => N26, C => clk_phg, Q =>
                           counter_25_port, QN => n_1200);
   counter_reg_24_inst : DF3 port map( D => N25, C => clk_phg, Q =>
                           counter_24_port, QN => n_1201);
   counter_reg_23_inst : DF3 port map( D => N24, C => clk_phg, Q =>
                           counter_23_port, QN => n_1202);
   counter_reg_22_inst : DF3 port map( D => N23, C => clk_phg, Q =>
                           counter_22_port, QN => n_1203);
   counter_reg_21_inst : DF3 port map( D => N22, C => clk_phg, Q =>
                           counter_21_port, QN => n_1204);
   counter_reg_20_inst : DF3 port map( D => N21, C => clk_phg, Q =>
                           counter_20_port, QN => n_1205);
   counter_reg_19_inst : DF3 port map( D => N20, C => clk_phg, Q =>
                           counter_19_port, QN => n_1206);
   counter_reg_18_inst : DF3 port map( D => N19, C => clk_phg, Q =>
                           counter_18_port, QN => n_1207);
   counter_reg_17_inst : DF3 port map( D => N18, C => clk_phg, Q =>
                           counter_17_port, QN => n_1208);
   counter_reg_16_inst : DF3 port map( D => N17, C => clk_phg, Q =>
                           counter_16_port, QN => n_1209);
   counter_reg_15_inst : DF3 port map( D => N16, C => clk_phg, Q =>
                           counter_15_port, QN => n_1210);
   counter_reg_14_inst : DF3 port map( D => N15, C => clk_phg, Q =>
                           counter_14_port, QN => n_1211);
   counter_reg_13_inst : DF3 port map( D => N14, C => clk_phg, Q =>
                           counter_13_port, QN => n_1212);
   counter_reg_12_inst : DF3 port map( D => N13, C => clk_phg, Q =>
                           counter_12_port, QN => n_1213);
   counter_reg_11_inst : DF3 port map( D => N12, C => clk_phg, Q =>
                           counter_11_port, QN => n_1214);
   counter_reg_10_inst : DF3 port map( D => N11, C => clk_phg, Q =>
                           counter_10_port, QN => n_1215);
   counter_reg_9_inst : DF3 port map( D => N10, C => clk_phg, Q =>
                           counter_9_port, QN => n_1216);
   counter_reg_8_inst : DF3 port map( D => N9, C => clk_phg, Q =>
                           counter_8_port, QN => n_1217);
   counter_reg_7_inst : DF3 port map( D => N8, C => clk_phg, Q =>
                           counter_7_port, QN => n_1218);
   counter_reg_6_inst : DF3 port map( D => N7, C => clk_phg, Q =>
                           counter_6_port, QN => n_1219);
   counter_reg_5_inst : DF3 port map( D => N6, C => clk_phg, Q =>
                           counter_5_port, QN => n_1220);
   counter_reg_4_inst : DF3 port map( D => N5, C => clk_phg, Q =>
                           counter_4_port, QN => n_1221);
   counter_reg_3_inst : DF3 port map( D => N4, C => clk_phg, Q =>
                           counter_3_port, QN => n_1222);
   counter_reg_2_inst : DF3 port map( D => N36, C => clk_phg, Q =>
                           counter_2_port, QN => n_1223);
   counter_reg_1_inst : DF3 port map( D => N2, C => clk_phg, Q =>
                           counter_1_port, QN => n56);
   counter_reg_30_inst : DF3 port map( D => N31, C => clk_phg, Q =>
                           counter_30_port, QN => n_1224);
   phg_reg_1_inst : DF3 port map( D => n52, C => clk_phg, Q => phg_1, QN =>
                           n_1225);
   phg_reg_3_inst : DF3 port map( D => n53, C => clk_phg, Q => phg_3_port, QN
                           => n_1226);
   reg_out_array_reg_1_8_inst : DF3 port map( D => vin(7), C => phg_1, Q =>
                           reg_out_array_1_8_port, QN => n_1227);
   reg_out_array_reg_1_7_inst : DF3 port map( D => vin(7), C => phg_1, Q =>
                           reg_out_array_1_7_port, QN => n_1228);
   reg_out_array_reg_1_6_inst : DF3 port map( D => vin(6), C => phg_1, Q =>
                           reg_out_array_1_6_port, QN => n_1229);
   reg_out_array_reg_1_5_inst : DF3 port map( D => vin(5), C => phg_1, Q =>
                           reg_out_array_1_5_port, QN => n_1230);
   reg_out_array_reg_1_4_inst : DF3 port map( D => vin(4), C => phg_1, Q =>
                           reg_out_array_1_4_port, QN => n_1231);
   reg_out_array_reg_1_3_inst : DF3 port map( D => vin(3), C => phg_1, Q =>
                           reg_out_array_1_3_port, QN => n_1232);
   reg_out_array_reg_1_2_inst : DF3 port map( D => vin(2), C => phg_1, Q =>
                           reg_out_array_1_2_port, QN => n_1233);
   reg_out_array_reg_1_1_inst : DF3 port map( D => vin(1), C => phg_1, Q =>
                           reg_out_array_1_1_port, QN => n_1234);
   reg_out_array_reg_1_0_inst : DF3 port map( D => vin(0), C => phg_1, Q =>
                           reg_out_array_1_0_port, QN => n_1235);
   reg_out_array_reg_3_8_inst : DF3 port map( D => vin(7), C => phg_3_port, Q
                           => reg_out_array_3_8_port, QN => n_1236);
   reg_out_array_reg_3_7_inst : DF3 port map( D => vin(7), C => phg_3_port, Q
                           => reg_out_array_3_7_port, QN => n_1237);
   reg_out_array_reg_3_6_inst : DF3 port map( D => vin(6), C => phg_3_port, Q
                           => reg_out_array_3_6_port, QN => n_1238);
   reg_out_array_reg_3_5_inst : DF3 port map( D => vin(5), C => phg_3_port, Q
                           => reg_out_array_3_5_port, QN => n_1239);
   reg_out_array_reg_3_4_inst : DF3 port map( D => vin(4), C => phg_3_port, Q
                           => reg_out_array_3_4_port, QN => n_1240);
   reg_out_array_reg_3_3_inst : DF3 port map( D => vin(3), C => phg_3_port, Q
                           => reg_out_array_3_3_port, QN => n_1241);
   reg_out_array_reg_3_2_inst : DF3 port map( D => vin(2), C => phg_3_port, Q
                           => reg_out_array_3_2_port, QN => n_1242);
   reg_out_array_reg_3_1_inst : DF3 port map( D => vin(1), C => phg_3_port, Q
                           => reg_out_array_3_1_port, QN => n_1243);
   reg_out_array_reg_3_0_inst : DF3 port map( D => vin(0), C => phg_3_port, Q
                           => reg_out_array_3_0_port, QN => n_1244);
   filtering_out : fir_width10_width_coeff4 port map( clk => clk, vin(9)
                           => q_sum_0_0_9_port, vin(8) => q_sum_0_0_9_port,
                           vin(7) => q_sum_0_0_7_port, vin(6) =>
                           q_sum_0_0_6_port, vin(5) => q_sum_0_0_5_port, vin(4)
                           => q_sum_0_0_4_port, vin(3) => q_sum_0_0_3_port,
                           vin(2) => q_sum_0_0_2_port, vin(1) =>
                           q_sum_0_0_1_port, vin(0) => q_sum_0_0_0_port,
                           vout(12) => vout_s(12), vout(11) => vout_s(11),
                           vout(10) => vout_s(10), vout(9) => vout_s(9),
                           vout(8) => vout_s(8), vout(7) => vout_s(7), vout(6)
                           => vout_s(6), vout(5) => vout_s(5), vout(4) =>
                           vout_s(4), vout(3) => vout_s(3), vout(2) =>
                           vout_s(2), vout(1) => vout_s(1), vout(0) =>
                           vout_s(0));
   sub_79_I2 : npath_width8_width_coeff4_width_phases4_DW01_sub_0 port map(
                           A(8) => reg_out_array_3_8_port, A(7) =>
                           reg_out_array_3_7_port, A(6) =>
                           reg_out_array_3_6_port, A(5) =>
                           reg_out_array_3_5_port, A(4) =>
                           reg_out_array_3_4_port, A(3) =>
                           reg_out_array_3_3_port, A(2) =>
                           reg_out_array_3_2_port, A(1) =>
                           reg_out_array_3_1_port, A(0) =>
                           reg_out_array_3_0_port, B(8) =>
                           reg_out_array_1_8_port, B(7) =>
                           reg_out_array_1_7_port, B(6) =>
                           reg_out_array_1_6_port, B(5) =>
                           reg_out_array_1_5_port, B(4) =>
                           reg_out_array_1_4_port, B(3) =>
                           reg_out_array_1_3_port, B(2) =>
                           reg_out_array_1_2_port, B(1) =>
                           reg_out_array_1_1_port, B(0) =>
                           reg_out_array_1_0_port, CI => n2_port, DIFF(8) =>
                           q_sum_0_0_9_port, DIFF(7) => q_sum_0_0_7_port,
                           DIFF(6) => q_sum_0_0_6_port, DIFF(5) =>
                           q_sum_0_0_5_port, DIFF(4) => q_sum_0_0_4_port,
                           DIFF(3) => q_sum_0_0_3_port, DIFF(2) =>
                           q_sum_0_0_2_port, DIFF(1) => q_sum_0_0_1_port,
                           DIFF(0) => q_sum_0_0_0_port, CO => n_1245);
   add_58 : npath_width8_width_coeff4_width_phases4_DW01_inc_1 port map( A(30)
                           => counter_30_port, A(29) => counter_29_port, A(28)
                           => counter_28_port, A(27) => counter_27_port, A(26)
                           => counter_26_port, A(25) => counter_25_port, A(24)
                           => counter_24_port, A(23) => counter_23_port, A(22)
                           => counter_22_port, A(21) => counter_21_port, A(20)
                           => counter_20_port, A(19) => counter_19_port, A(18)
                           => counter_18_port, A(17) => counter_17_port, A(16)
                           => counter_16_port, A(15) => counter_15_port, A(14)
                           => counter_14_port, A(13) => counter_13_port, A(12)
                           => counter_12_port, A(11) => counter_11_port, A(10)
                           => counter_10_port, A(9) => counter_9_port, A(8) =>
                           counter_8_port, A(7) => counter_7_port, A(6) =>
                           counter_6_port, A(5) => counter_5_port, A(4) =>
                           counter_4_port, A(3) => counter_3_port, A(2) =>
                           counter_2_port, A(1) => counter_1_port, A(0) =>
                           counter_0_port, SUM(30) => N31, SUM(29) => N30,
                           SUM(28) => N29, SUM(27) => N28, SUM(26) => N27,
                           SUM(25) => N26, SUM(24) => N25, SUM(23) => N24,
                           SUM(22) => N23, SUM(21) => N22, SUM(20) => N21,
                           SUM(19) => N20, SUM(18) => N19, SUM(17) => N18,
                           SUM(16) => N17, SUM(15) => N16, SUM(14) => N15,
                           SUM(13) => N14, SUM(12) => N13, SUM(11) => N12,
                           SUM(10) => N11, SUM(9) => N10, SUM(8) => N9, SUM(7)
                           => N8, SUM(6) => N7, SUM(5) => N6, SUM(4) => N5,
                           SUM(3) => N4, SUM(2) => N3, SUM(1) => N2, SUM(0) =>
                           N1);
   U84 : NOR40 port map( A => n69, B => n68, C => n67, D => n66, Q => n71);
   U85 : NOR40 port map( A => N21, B => N22, C => N23, D => N24, Q => n63);
   U86 : NOR40 port map( A => N25, B => N26, C => N27, D => N28, Q => n64);
   U87 : NOR40 port map( A => N29, B => N30, C => N31, D => n70, Q => n65);
   U88 : NOR21 port map( A => n71, B => n70, Q => N36);
   U89 : NOR40 port map( A => N9, B => N10, C => N11, D => N12, Q => n60);
   U90 : NOR40 port map( A => N17, B => N18, C => N19, D => N20, Q => n62);
   U91 : NOR40 port map( A => N5, B => N6, C => N7, D => N8, Q => n59);
   U92 : NOR40 port map( A => N13, B => N14, C => N15, D => N16, Q => n61);
   U93 : NOR31 port map( A => N1, B => N2, C => N4, Q => n58);
   U94 : NOR21 port map( A => counter_0_port, B => n71, Q => N34);
   U95 : NAND41 port map( A => n83, B => n82, C => n81, D => n80, Q => n84);
   U96 : NOR40 port map( A => counter_7_port, B => counter_6_port, C =>
                           counter_5_port, D => counter_4_port, Q => n82);
   U97 : NOR40 port map( A => counter_3_port, B => counter_2_port, C =>
                           counter_30_port, D => n55, Q => n83);
   U98 : NOR40 port map( A => n73, B => counter_14_port, C => counter_13_port,
                           D => counter_12_port, Q => n81);
   U99 : NOR40 port map( A => counter_22_port, B => counter_21_port, C =>
                           counter_20_port, D => counter_19_port, Q => n74);
   U100 : NOR40 port map( A => n79, B => n78, C => counter_29_port, D => n77, Q
                           => n80);
   U101 : NOR21 port map( A => counter_1_port, B => n84, Q => n52);
   U102 : NOR21 port map( A => n84, B => n56, Q => n53);
   U103 : NOR40 port map( A => counter_26_port, B => counter_25_port, C =>
                           counter_24_port, D => counter_23_port, Q => n76);
   U104 : NOR40 port map( A => counter_18_port, B => counter_17_port, C =>
                           counter_16_port, D => counter_15_port, Q => n75);
   U105 : NOR40 port map( A => counter_11_port, B => counter_10_port, C =>
                           counter_9_port, D => counter_8_port, Q => n72);
   U106 : LOGIC0 port map( Q => n2_port);
   U107 : NAND22 port map( A => n59, B => n58, Q => n69);
   U108 : NAND22 port map( A => n61, B => n60, Q => n68);
   U109 : NAND22 port map( A => n63, B => n62, Q => n67);
   U110 : CLKIN3 port map( A => N3, Q => n70);
   U111 : NAND22 port map( A => n65, B => n64, Q => n66);
   U112 : CLKIN3 port map( A => n72, Q => n73);
   U113 : NAND22 port map( A => n75, B => n74, Q => n79);
   U114 : CLKIN3 port map( A => n76, Q => n78);
   U115 : NAND22 port map( A => n57, B => n54, Q => n77);

end SYN_behavior;