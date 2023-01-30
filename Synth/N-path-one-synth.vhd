
library IEEE;

use IEEE.std_logic_1164.all;

package CONV_PACK_npath_one_width8_width_coeff4_width_phases4 is

-- define attributes
attribute ENUM_ENCODING : STRING;

-- define any necessary types
type std_array is array (INTEGER range <>) of std_logic;

end CONV_PACK_npath_one_width8_width_coeff4_width_phases4;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_npath_one_width8_width_coeff4_width_phases4.all;

entity fir_basic_width10_width_coeff4_DW01_add_6 is

   port( A, B : in std_logic_vector (14 downto 0);  CI : in std_logic;  SUM : 
         out std_logic_vector (14 downto 0);  CO : out std_logic);

end fir_basic_width10_width_coeff4_DW01_add_6;

architecture SYN_cla of fir_basic_width10_width_coeff4_DW01_add_6 is

   component NAND20
      port( A, B : in std_logic;  Q : out std_logic);
   end component;
   
   component NOR20
      port( A, B : in std_logic;  Q : out std_logic);
   end component;
   
   component OAI210
      port( A, B, C : in std_logic;  Q : out std_logic);
   end component;
   
   component XNR20
      port( A, B : in std_logic;  Q : out std_logic);
   end component;
   
   component AOI210
      port( A, B, C : in std_logic;  Q : out std_logic);
   end component;
   
   component XOR30
      port( A, B, C : in std_logic;  Q : out std_logic);
   end component;
   
   component OAI212
      port( A, B, C : in std_logic;  Q : out std_logic);
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
   
   component XOR21
      port( A, B : in std_logic;  Q : out std_logic);
   end component;
   
   component XNR31
      port( A, B, C : in std_logic;  Q : out std_logic);
   end component;
   
   signal SUM_14_port, SUM_13_port, SUM_12_port, SUM_11_port, SUM_10_port, 
      SUM_9_port, SUM_8_port, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12
      , n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, 
      n27 : std_logic;

begin
   SUM <= ( SUM_14_port, SUM_13_port, SUM_12_port, SUM_11_port, SUM_10_port, 
      SUM_9_port, SUM_8_port, A(7), A(6), A(5), A(4), A(3), A(2), A(1), A(0) );
   
   U2 : INV3 port map( A => n26, Q => n4);
   U3 : XNR31 port map( A => B(11), B => A(11), C => n24, Q => SUM_11_port);
   U4 : INV3 port map( A => n13, Q => n6);
   U5 : INV3 port map( A => A(11), Q => n2);
   U6 : INV3 port map( A => n20, Q => n3);
   U7 : INV3 port map( A => n22, Q => n5);
   U8 : INV3 port map( A => n19, Q => n1);
   U9 : INV3 port map( A => A(8), Q => n7);
   U10 : INV3 port map( A => n14, Q => n8);
   U11 : INV3 port map( A => B(8), Q => n9);
   U12 : XOR21 port map( A => A(14), B => n16, Q => SUM_14_port);
   U13 : NOR21 port map( A => n17, B => n10, Q => n16);
   U14 : INV3 port map( A => A(14), Q => n10);
   U15 : XNR21 port map( A => A(13), B => n17, Q => SUM_13_port);
   U16 : OAI212 port map( A => n20, B => n2, C => n21, Q => n18);
   U17 : XNR20 port map( A => n15, B => n11, Q => SUM_9_port);
   U18 : NOR20 port map( A => n6, B => n12, Q => n11);
   U19 : OAI210 port map( A => B(8), B => n7, C => n8, Q => SUM_8_port);
   U20 : NOR20 port map( A => A(8), B => n9, Q => n14);
   U21 : AOI210 port map( A => n18, B => A(12), C => n1, Q => n17);
   U22 : OAI210 port map( A => A(12), B => n18, C => B(12), Q => n19);
   U23 : XOR30 port map( A => B(12), B => A(12), C => n18, Q => SUM_12_port);
   U24 : OAI210 port map( A => A(11), B => n3, C => B(11), Q => n21);
   U25 : AOI210 port map( A => n5, B => n23, C => n4, Q => n20);
   U26 : OAI210 port map( A => n15, B => n12, C => n13, Q => n23);
   U27 : AOI210 port map( A => n5, B => n25, C => n4, Q => n24);
   U28 : XNR20 port map( A => n25, B => n27, Q => SUM_10_port);
   U29 : NAND20 port map( A => n5, B => n26, Q => n27);
   U30 : NAND20 port map( A => B(10), B => A(10), Q => n26);
   U31 : NOR20 port map( A => B(10), B => A(10), Q => n22);
   U32 : OAI210 port map( A => n15, B => n12, C => n13, Q => n25);
   U33 : NAND20 port map( A => B(9), B => A(9), Q => n13);
   U34 : NOR20 port map( A => B(9), B => A(9), Q => n12);
   U35 : NAND20 port map( A => B(8), B => A(8), Q => n15);

end SYN_cla;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_npath_one_width8_width_coeff4_width_phases4.all;

entity fir_basic_width10_width_coeff4_DW02_mult_3 is

   port( A : in std_logic_vector (9 downto 0);  B : in std_logic_vector (6 
         downto 0);  TC : in std_logic;  PRODUCT : out std_logic_vector (16 
         downto 0));

end fir_basic_width10_width_coeff4_DW02_mult_3;

architecture SYN_csa of fir_basic_width10_width_coeff4_DW02_mult_3 is

   component LOGIC0
      port( Q : out std_logic);
   end component;
   
   component XOR21
      port( A, B : in std_logic;  Q : out std_logic);
   end component;
   
   component INV3
      port( A : in std_logic;  Q : out std_logic);
   end component;
   
   component NOR21
      port( A, B : in std_logic;  Q : out std_logic);
   end component;
   
   component fir_basic_width10_width_coeff4_DW01_add_6
      port( A, B : in std_logic_vector (14 downto 0);  CI : in std_logic;  SUM 
            : out std_logic_vector (14 downto 0);  CO : out std_logic);
   end component;
   
   component ADD32
      port( A, B, CI : in std_logic;  CO, S : out std_logic);
   end component;
   
   signal X_Logic0_port, PRODUCT_16_port, PRODUCT_15_port, PRODUCT_14_port, 
      PRODUCT_13_port, PRODUCT_12_port, PRODUCT_11_port, PRODUCT_10_port, 
      PRODUCT_9_port, PRODUCT_8_port, PRODUCT_7_port, PRODUCT_6_port, 
      PRODUCT_5_port, PRODUCT_4_port, PRODUCT_3_port, PRODUCT_2_port, 
      PRODUCT_1_port, CARRYB_9_4_port, CARRYB_9_3_port, CARRYB_9_2_port, 
      CARRYB_9_1_port, CARRYB_9_0_port, CARRYB_8_3_port, CARRYB_8_1_port, 
      CARRYB_8_0_port, CARRYB_7_3_port, CARRYB_7_1_port, CARRYB_7_0_port, 
      CARRYB_6_3_port, CARRYB_6_1_port, CARRYB_6_0_port, CARRYB_5_3_port, 
      CARRYB_5_1_port, CARRYB_5_0_port, CARRYB_4_3_port, CARRYB_4_1_port, 
      CARRYB_4_0_port, CARRYB_3_3_port, CARRYB_3_1_port, CARRYB_3_0_port, 
      CARRYB_2_3_port, CARRYB_2_1_port, CARRYB_2_0_port, CARRYB_1_0_port, 
      SUMB_9_4_port, SUMB_9_3_port, SUMB_9_2_port, SUMB_9_1_port, SUMB_9_0_port
      , SUMB_8_3_port, SUMB_8_1_port, SUMB_7_3_port, SUMB_7_1_port, 
      SUMB_6_3_port, SUMB_6_1_port, SUMB_5_3_port, SUMB_5_1_port, SUMB_4_3_port
      , SUMB_4_1_port, SUMB_3_3_port, SUMB_3_1_port, SUMB_2_3_port, 
      SUMB_2_1_port, PROD1_6_port, A1_11_port, A1_10_port, A1_9_port, A1_8_port
      , A1_7_port, A1_6_port, A1_5_port, A1_3_port, A1_2_port, A1_1_port, 
      A1_0_port, A2_12_port, A2_11_port, A2_10_port, A2_9_port, A2_8_port, n3, 
      n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19,
      n20, n21, n22, n23, n_1020 : std_logic;

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
                           SUMB_2_1_port, CO => CARRYB_3_0_port, S => A1_1_port
                           );
   S2_3_1 : ADD32 port map( A => A(3), B => CARRYB_2_1_port, CI => A(1), CO => 
                           CARRYB_3_1_port, S => SUMB_3_1_port);
   S2_3_3 : ADD32 port map( A => A(3), B => CARRYB_2_3_port, CI => A(1), CO => 
                           CARRYB_3_3_port, S => SUMB_3_3_port);
   S1_2_0 : ADD32 port map( A => A(2), B => CARRYB_1_0_port, CI => A(1), CO => 
                           CARRYB_2_0_port, S => A1_0_port);
   FS_1 : fir_basic_width10_width_coeff4_DW01_add_6 port map( A(14) => A(9), 
                           A(13) => A(9), A(12) => CARRYB_9_4_port, A(11) => 
                           A1_11_port, A(10) => A1_10_port, A(9) => A1_9_port, 
                           A(8) => A1_8_port, A(7) => A1_7_port, A(6) => 
                           A1_6_port, A(5) => A1_5_port, A(4) => PROD1_6_port, 
                           A(3) => A1_3_port, A(2) => A1_2_port, A(1) => 
                           A1_1_port, A(0) => A1_0_port, B(14) => X_Logic0_port
                           , B(13) => X_Logic0_port, B(12) => A2_12_port, B(11)
                           => A2_11_port, B(10) => A2_10_port, B(9) => 
                           A2_9_port, B(8) => A2_8_port, B(7) => X_Logic0_port,
                           B(6) => X_Logic0_port, B(5) => X_Logic0_port, B(4) 
                           => X_Logic0_port, B(3) => X_Logic0_port, B(2) => 
                           X_Logic0_port, B(1) => X_Logic0_port, B(0) => 
                           X_Logic0_port, CI => X_Logic0_port, SUM(14) => 
                           PRODUCT_16_port, SUM(13) => PRODUCT_15_port, SUM(12)
                           => PRODUCT_14_port, SUM(11) => PRODUCT_13_port, 
                           SUM(10) => PRODUCT_12_port, SUM(9) => 
                           PRODUCT_11_port, SUM(8) => PRODUCT_10_port, SUM(7) 
                           => PRODUCT_9_port, SUM(6) => PRODUCT_8_port, SUM(5) 
                           => PRODUCT_7_port, SUM(4) => PRODUCT_6_port, SUM(3) 
                           => PRODUCT_5_port, SUM(2) => PRODUCT_4_port, SUM(1) 
                           => PRODUCT_3_port, SUM(0) => PRODUCT_2_port, CO => 
                           n_1020);
   U2 : XOR21 port map( A => SUMB_9_1_port, B => CARRYB_9_0_port, Q => 
                           A1_8_port);
   U3 : NOR21 port map( A => n4, B => n5, Q => A2_9_port);
   U4 : INV3 port map( A => CARRYB_9_0_port, Q => n4);
   U5 : INV3 port map( A => SUMB_9_1_port, Q => n5);
   U6 : XOR21 port map( A => SUMB_8_1_port, B => CARRYB_8_0_port, Q => 
                           SUMB_9_0_port);
   U7 : XOR21 port map( A => SUMB_7_3_port, B => CARRYB_8_1_port, Q => 
                           SUMB_9_1_port);
   U8 : XOR21 port map( A => SUMB_9_4_port, B => CARRYB_9_3_port, Q => 
                           A1_11_port);
   U9 : XOR21 port map( A => SUMB_9_2_port, B => CARRYB_9_1_port, Q => 
                           A1_9_port);
   U10 : XOR21 port map( A => SUMB_9_3_port, B => CARRYB_9_2_port, Q => 
                           A1_10_port);
   U11 : NOR21 port map( A => n15, B => n16, Q => CARRYB_9_1_port);
   U12 : INV3 port map( A => SUMB_7_3_port, Q => n15);
   U13 : INV3 port map( A => CARRYB_8_1_port, Q => n16);
   U14 : NOR21 port map( A => n13, B => n14, Q => CARRYB_9_0_port);
   U15 : INV3 port map( A => SUMB_8_1_port, Q => n13);
   U16 : INV3 port map( A => CARRYB_8_0_port, Q => n14);
   U17 : NOR21 port map( A => n8, B => n9, Q => A2_11_port);
   U18 : INV3 port map( A => CARRYB_9_2_port, Q => n8);
   U19 : INV3 port map( A => SUMB_9_3_port, Q => n9);
   U20 : NOR21 port map( A => n10, B => n11, Q => A2_12_port);
   U21 : INV3 port map( A => CARRYB_9_3_port, Q => n10);
   U22 : INV3 port map( A => SUMB_9_4_port, Q => n11);
   U23 : NOR21 port map( A => n6, B => n7, Q => A2_10_port);
   U24 : INV3 port map( A => CARRYB_9_1_port, Q => n6);
   U25 : INV3 port map( A => SUMB_9_2_port, Q => n7);
   U26 : XOR21 port map( A => A(9), B => SUMB_8_3_port, Q => SUMB_9_2_port);
   U27 : XOR21 port map( A => A(9), B => A(8), Q => SUMB_9_4_port);
   U28 : XOR21 port map( A => A(7), B => CARRYB_8_3_port, Q => SUMB_9_3_port);
   U29 : XOR21 port map( A => A(2), B => A(0), Q => SUMB_2_3_port);
   U30 : XOR21 port map( A => A(2), B => A(0), Q => SUMB_2_1_port);
   U31 : NOR21 port map( A => n19, B => n20, Q => CARRYB_2_1_port);
   U32 : INV3 port map( A => A(2), Q => n19);
   U33 : INV3 port map( A => A(0), Q => n20);
   U34 : NOR21 port map( A => n19, B => n20, Q => CARRYB_2_3_port);
   U35 : NOR21 port map( A => n20, B => n12, Q => CARRYB_1_0_port);
   U36 : INV3 port map( A => A(1), Q => n12);
   U37 : NOR21 port map( A => n21, B => n22, Q => CARRYB_9_2_port);
   U38 : INV3 port map( A => SUMB_8_3_port, Q => n22);
   U39 : INV3 port map( A => A(9), Q => n21);
   U40 : NOR21 port map( A => n3, B => n21, Q => A2_8_port);
   U41 : INV3 port map( A => SUMB_9_0_port, Q => n3);
   U42 : NOR21 port map( A => n17, B => n18, Q => CARRYB_9_3_port);
   U43 : INV3 port map( A => CARRYB_8_3_port, Q => n18);
   U44 : INV3 port map( A => A(7), Q => n17);
   U45 : NOR21 port map( A => n21, B => n23, Q => CARRYB_9_4_port);
   U46 : INV3 port map( A => A(8), Q => n23);
   U47 : XOR21 port map( A => A(9), B => SUMB_9_0_port, Q => A1_7_port);
   U48 : XOR21 port map( A => A(0), B => A(1), Q => PRODUCT_1_port);
   U49 : LOGIC0 port map( Q => X_Logic0_port);

end SYN_csa;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_npath_one_width8_width_coeff4_width_phases4.all;

entity fir_basic_width10_width_coeff4_DW01_add_5 is

   port( A, B : in std_logic_vector (14 downto 0);  CI : in std_logic;  SUM : 
         out std_logic_vector (14 downto 0);  CO : out std_logic);

end fir_basic_width10_width_coeff4_DW01_add_5;

architecture SYN_cla of fir_basic_width10_width_coeff4_DW01_add_5 is

   component NAND20
      port( A, B : in std_logic;  Q : out std_logic);
   end component;
   
   component NOR20
      port( A, B : in std_logic;  Q : out std_logic);
   end component;
   
   component OAI210
      port( A, B, C : in std_logic;  Q : out std_logic);
   end component;
   
   component XNR20
      port( A, B : in std_logic;  Q : out std_logic);
   end component;
   
   component AOI210
      port( A, B, C : in std_logic;  Q : out std_logic);
   end component;
   
   component XOR30
      port( A, B, C : in std_logic;  Q : out std_logic);
   end component;
   
   component OAI212
      port( A, B, C : in std_logic;  Q : out std_logic);
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
   
   component XOR21
      port( A, B : in std_logic;  Q : out std_logic);
   end component;
   
   component XNR31
      port( A, B, C : in std_logic;  Q : out std_logic);
   end component;
   
   signal SUM_14_port, SUM_13_port, SUM_12_port, SUM_11_port, SUM_10_port, 
      SUM_9_port, SUM_8_port, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12
      , n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, 
      n27 : std_logic;

begin
   SUM <= ( SUM_14_port, SUM_13_port, SUM_12_port, SUM_11_port, SUM_10_port, 
      SUM_9_port, SUM_8_port, A(7), A(6), A(5), A(4), A(3), A(2), A(1), A(0) );
   
   U2 : INV3 port map( A => n26, Q => n4);
   U3 : INV3 port map( A => A(11), Q => n2);
   U4 : INV3 port map( A => n20, Q => n3);
   U5 : INV3 port map( A => n22, Q => n5);
   U6 : XNR31 port map( A => B(11), B => A(11), C => n24, Q => SUM_11_port);
   U7 : INV3 port map( A => n13, Q => n6);
   U8 : INV3 port map( A => n19, Q => n1);
   U9 : INV3 port map( A => A(8), Q => n7);
   U10 : INV3 port map( A => n14, Q => n8);
   U11 : INV3 port map( A => B(8), Q => n9);
   U12 : XOR21 port map( A => A(14), B => n16, Q => SUM_14_port);
   U13 : NOR21 port map( A => n17, B => n10, Q => n16);
   U14 : INV3 port map( A => A(14), Q => n10);
   U15 : XNR21 port map( A => A(13), B => n17, Q => SUM_13_port);
   U16 : OAI212 port map( A => n20, B => n2, C => n21, Q => n18);
   U17 : XNR20 port map( A => n15, B => n11, Q => SUM_9_port);
   U18 : NOR20 port map( A => n6, B => n12, Q => n11);
   U19 : OAI210 port map( A => B(8), B => n7, C => n8, Q => SUM_8_port);
   U20 : NOR20 port map( A => A(8), B => n9, Q => n14);
   U21 : AOI210 port map( A => n18, B => A(12), C => n1, Q => n17);
   U22 : OAI210 port map( A => A(12), B => n18, C => B(12), Q => n19);
   U23 : XOR30 port map( A => B(12), B => A(12), C => n18, Q => SUM_12_port);
   U24 : OAI210 port map( A => A(11), B => n3, C => B(11), Q => n21);
   U25 : AOI210 port map( A => n5, B => n23, C => n4, Q => n20);
   U26 : OAI210 port map( A => n15, B => n12, C => n13, Q => n23);
   U27 : AOI210 port map( A => n5, B => n25, C => n4, Q => n24);
   U28 : XNR20 port map( A => n25, B => n27, Q => SUM_10_port);
   U29 : NAND20 port map( A => n5, B => n26, Q => n27);
   U30 : NAND20 port map( A => B(10), B => A(10), Q => n26);
   U31 : NOR20 port map( A => B(10), B => A(10), Q => n22);
   U32 : OAI210 port map( A => n15, B => n12, C => n13, Q => n25);
   U33 : NAND20 port map( A => B(9), B => A(9), Q => n13);
   U34 : NOR20 port map( A => B(9), B => A(9), Q => n12);
   U35 : NAND20 port map( A => B(8), B => A(8), Q => n15);

end SYN_cla;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_npath_one_width8_width_coeff4_width_phases4.all;

entity fir_basic_width10_width_coeff4_DW02_mult_2 is

   port( A : in std_logic_vector (9 downto 0);  B : in std_logic_vector (6 
         downto 0);  TC : in std_logic;  PRODUCT : out std_logic_vector (16 
         downto 0));

end fir_basic_width10_width_coeff4_DW02_mult_2;

architecture SYN_csa of fir_basic_width10_width_coeff4_DW02_mult_2 is

   component LOGIC0
      port( Q : out std_logic);
   end component;
   
   component XOR21
      port( A, B : in std_logic;  Q : out std_logic);
   end component;
   
   component INV3
      port( A : in std_logic;  Q : out std_logic);
   end component;
   
   component NOR21
      port( A, B : in std_logic;  Q : out std_logic);
   end component;
   
   component fir_basic_width10_width_coeff4_DW01_add_5
      port( A, B : in std_logic_vector (14 downto 0);  CI : in std_logic;  SUM 
            : out std_logic_vector (14 downto 0);  CO : out std_logic);
   end component;
   
   component ADD32
      port( A, B, CI : in std_logic;  CO, S : out std_logic);
   end component;
   
   signal X_Logic0_port, PRODUCT_16_port, PRODUCT_15_port, PRODUCT_14_port, 
      PRODUCT_13_port, PRODUCT_12_port, PRODUCT_11_port, PRODUCT_10_port, 
      PRODUCT_9_port, PRODUCT_8_port, PRODUCT_7_port, PRODUCT_6_port, 
      PRODUCT_5_port, PRODUCT_4_port, PRODUCT_3_port, PRODUCT_2_port, 
      PRODUCT_1_port, CARRYB_9_4_port, CARRYB_9_3_port, CARRYB_9_2_port, 
      CARRYB_9_1_port, CARRYB_9_0_port, CARRYB_8_3_port, CARRYB_8_1_port, 
      CARRYB_8_0_port, CARRYB_7_3_port, CARRYB_7_1_port, CARRYB_7_0_port, 
      CARRYB_6_3_port, CARRYB_6_1_port, CARRYB_6_0_port, CARRYB_5_3_port, 
      CARRYB_5_1_port, CARRYB_5_0_port, CARRYB_4_3_port, CARRYB_4_1_port, 
      CARRYB_4_0_port, CARRYB_3_3_port, CARRYB_3_1_port, CARRYB_3_0_port, 
      CARRYB_2_3_port, CARRYB_2_1_port, CARRYB_2_0_port, CARRYB_1_0_port, 
      SUMB_9_4_port, SUMB_9_3_port, SUMB_9_2_port, SUMB_9_1_port, SUMB_9_0_port
      , SUMB_8_3_port, SUMB_8_1_port, SUMB_7_3_port, SUMB_7_1_port, 
      SUMB_6_3_port, SUMB_6_1_port, SUMB_5_3_port, SUMB_5_1_port, SUMB_4_3_port
      , SUMB_4_1_port, SUMB_3_3_port, SUMB_3_1_port, SUMB_2_3_port, 
      SUMB_2_1_port, PROD1_6_port, A1_11_port, A1_10_port, A1_9_port, A1_8_port
      , A1_7_port, A1_6_port, A1_5_port, A1_3_port, A1_2_port, A1_1_port, 
      A1_0_port, A2_12_port, A2_11_port, A2_10_port, A2_9_port, A2_8_port, n3, 
      n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19,
      n20, n21, n22, n23, n_1041 : std_logic;

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
                           SUMB_2_1_port, CO => CARRYB_3_0_port, S => A1_1_port
                           );
   S2_3_1 : ADD32 port map( A => A(3), B => CARRYB_2_1_port, CI => A(1), CO => 
                           CARRYB_3_1_port, S => SUMB_3_1_port);
   S2_3_3 : ADD32 port map( A => A(3), B => CARRYB_2_3_port, CI => A(1), CO => 
                           CARRYB_3_3_port, S => SUMB_3_3_port);
   S1_2_0 : ADD32 port map( A => A(2), B => CARRYB_1_0_port, CI => A(1), CO => 
                           CARRYB_2_0_port, S => A1_0_port);
   FS_1 : fir_basic_width10_width_coeff4_DW01_add_5 port map( A(14) => A(9), 
                           A(13) => A(9), A(12) => CARRYB_9_4_port, A(11) => 
                           A1_11_port, A(10) => A1_10_port, A(9) => A1_9_port, 
                           A(8) => A1_8_port, A(7) => A1_7_port, A(6) => 
                           A1_6_port, A(5) => A1_5_port, A(4) => PROD1_6_port, 
                           A(3) => A1_3_port, A(2) => A1_2_port, A(1) => 
                           A1_1_port, A(0) => A1_0_port, B(14) => X_Logic0_port
                           , B(13) => X_Logic0_port, B(12) => A2_12_port, B(11)
                           => A2_11_port, B(10) => A2_10_port, B(9) => 
                           A2_9_port, B(8) => A2_8_port, B(7) => X_Logic0_port,
                           B(6) => X_Logic0_port, B(5) => X_Logic0_port, B(4) 
                           => X_Logic0_port, B(3) => X_Logic0_port, B(2) => 
                           X_Logic0_port, B(1) => X_Logic0_port, B(0) => 
                           X_Logic0_port, CI => X_Logic0_port, SUM(14) => 
                           PRODUCT_16_port, SUM(13) => PRODUCT_15_port, SUM(12)
                           => PRODUCT_14_port, SUM(11) => PRODUCT_13_port, 
                           SUM(10) => PRODUCT_12_port, SUM(9) => 
                           PRODUCT_11_port, SUM(8) => PRODUCT_10_port, SUM(7) 
                           => PRODUCT_9_port, SUM(6) => PRODUCT_8_port, SUM(5) 
                           => PRODUCT_7_port, SUM(4) => PRODUCT_6_port, SUM(3) 
                           => PRODUCT_5_port, SUM(2) => PRODUCT_4_port, SUM(1) 
                           => PRODUCT_3_port, SUM(0) => PRODUCT_2_port, CO => 
                           n_1041);
   U2 : XOR21 port map( A => SUMB_9_1_port, B => CARRYB_9_0_port, Q => 
                           A1_8_port);
   U3 : NOR21 port map( A => n5, B => n6, Q => A2_9_port);
   U4 : INV3 port map( A => SUMB_9_1_port, Q => n6);
   U5 : INV3 port map( A => CARRYB_9_0_port, Q => n5);
   U6 : XOR21 port map( A => SUMB_8_1_port, B => CARRYB_8_0_port, Q => 
                           SUMB_9_0_port);
   U7 : XOR21 port map( A => SUMB_9_2_port, B => CARRYB_9_1_port, Q => 
                           A1_9_port);
   U8 : NOR21 port map( A => n15, B => n16, Q => CARRYB_9_0_port);
   U9 : INV3 port map( A => SUMB_8_1_port, Q => n15);
   U10 : INV3 port map( A => CARRYB_8_0_port, Q => n16);
   U11 : XOR21 port map( A => SUMB_7_3_port, B => CARRYB_8_1_port, Q => 
                           SUMB_9_1_port);
   U12 : XOR21 port map( A => SUMB_9_3_port, B => CARRYB_9_2_port, Q => 
                           A1_10_port);
   U13 : NOR21 port map( A => n17, B => n18, Q => CARRYB_9_1_port);
   U14 : INV3 port map( A => SUMB_7_3_port, Q => n17);
   U15 : INV3 port map( A => CARRYB_8_1_port, Q => n18);
   U16 : NOR21 port map( A => n7, B => n8, Q => A2_10_port);
   U17 : INV3 port map( A => CARRYB_9_1_port, Q => n7);
   U18 : INV3 port map( A => SUMB_9_2_port, Q => n8);
   U19 : XOR21 port map( A => SUMB_9_4_port, B => CARRYB_9_3_port, Q => 
                           A1_11_port);
   U20 : NOR21 port map( A => n9, B => n10, Q => A2_11_port);
   U21 : INV3 port map( A => CARRYB_9_2_port, Q => n9);
   U22 : INV3 port map( A => SUMB_9_3_port, Q => n10);
   U23 : NOR21 port map( A => n11, B => n12, Q => A2_12_port);
   U24 : INV3 port map( A => SUMB_9_4_port, Q => n12);
   U25 : INV3 port map( A => CARRYB_9_3_port, Q => n11);
   U26 : XOR21 port map( A => A(9), B => SUMB_8_3_port, Q => SUMB_9_2_port);
   U27 : XOR21 port map( A => A(2), B => A(0), Q => SUMB_2_1_port);
   U28 : NOR21 port map( A => n21, B => n13, Q => CARRYB_2_3_port);
   U29 : NOR21 port map( A => n13, B => n14, Q => CARRYB_1_0_port);
   U30 : INV3 port map( A => A(1), Q => n14);
   U31 : INV3 port map( A => A(0), Q => n13);
   U32 : NOR21 port map( A => n3, B => n4, Q => A2_8_port);
   U33 : INV3 port map( A => A(9), Q => n4);
   U34 : INV3 port map( A => SUMB_9_0_port, Q => n3);
   U35 : XOR21 port map( A => A(7), B => CARRYB_8_3_port, Q => SUMB_9_3_port);
   U36 : XOR21 port map( A => A(2), B => A(0), Q => SUMB_2_3_port);
   U37 : NOR21 port map( A => n21, B => n13, Q => CARRYB_2_1_port);
   U38 : INV3 port map( A => A(2), Q => n21);
   U39 : NOR21 port map( A => n4, B => n22, Q => CARRYB_9_2_port);
   U40 : INV3 port map( A => SUMB_8_3_port, Q => n22);
   U41 : NOR21 port map( A => n19, B => n20, Q => CARRYB_9_3_port);
   U42 : INV3 port map( A => A(7), Q => n19);
   U43 : INV3 port map( A => CARRYB_8_3_port, Q => n20);
   U44 : XOR21 port map( A => A(9), B => A(8), Q => SUMB_9_4_port);
   U45 : XOR21 port map( A => A(9), B => SUMB_9_0_port, Q => A1_7_port);
   U46 : NOR21 port map( A => n4, B => n23, Q => CARRYB_9_4_port);
   U47 : INV3 port map( A => A(8), Q => n23);
   U48 : XOR21 port map( A => A(0), B => A(1), Q => PRODUCT_1_port);
   U49 : LOGIC0 port map( Q => X_Logic0_port);

end SYN_csa;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_npath_one_width8_width_coeff4_width_phases4.all;

entity fir_basic_width10_width_coeff4_DW01_add_4 is

   port( A, B : in std_logic_vector (15 downto 0);  CI : in std_logic;  SUM : 
         out std_logic_vector (15 downto 0);  CO : out std_logic);

end fir_basic_width10_width_coeff4_DW01_add_4;

architecture SYN_cla of fir_basic_width10_width_coeff4_DW01_add_4 is

   component NOR20
      port( A, B : in std_logic;  Q : out std_logic);
   end component;
   
   component NAND20
      port( A, B : in std_logic;  Q : out std_logic);
   end component;
   
   component AOI210
      port( A, B, C : in std_logic;  Q : out std_logic);
   end component;
   
   component XNR20
      port( A, B : in std_logic;  Q : out std_logic);
   end component;
   
   component OAI210
      port( A, B, C : in std_logic;  Q : out std_logic);
   end component;
   
   component XOR30
      port( A, B, C : in std_logic;  Q : out std_logic);
   end component;
   
   component OAI212
      port( A, B, C : in std_logic;  Q : out std_logic);
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
   
   component XOR21
      port( A, B : in std_logic;  Q : out std_logic);
   end component;
   
   signal SUM_15_port, SUM_14_port, SUM_13_port, SUM_12_port, SUM_11_port, 
      SUM_10_port, SUM_9_port, SUM_8_port, n1, n2, n3, n4, n5, n6, n7, n8, n9, 
      n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24
      , n25, n26, n27, n28, n29, n30, n31 : std_logic;

begin
   SUM <= ( SUM_15_port, SUM_14_port, SUM_13_port, SUM_12_port, SUM_11_port, 
      SUM_10_port, SUM_9_port, SUM_8_port, A(7), A(6), A(5), A(4), A(3), A(2), 
      A(1), A(0) );
   
   U2 : INV3 port map( A => n14, Q => n5);
   U3 : INV3 port map( A => n22, Q => n2);
   U4 : INV3 port map( A => n28, Q => n4);
   U5 : INV3 port map( A => A(11), Q => n12);
   U6 : INV3 port map( A => n26, Q => n3);
   U7 : INV3 port map( A => n24, Q => n6);
   U8 : INV3 port map( A => A(8), Q => n8);
   U9 : INV3 port map( A => A(12), Q => n11);
   U10 : INV3 port map( A => n20, Q => n1);
   U11 : INV3 port map( A => B(8), Q => n9);
   U12 : INV3 port map( A => n15, Q => n7);
   U13 : XOR21 port map( A => A(15), B => n17, Q => SUM_15_port);
   U14 : NOR21 port map( A => n18, B => n10, Q => n17);
   U15 : INV3 port map( A => A(15), Q => n10);
   U16 : XNR21 port map( A => A(14), B => n18, Q => SUM_14_port);
   U17 : OAI212 port map( A => n3, B => n12, C => n23, Q => n22);
   U18 : XNR20 port map( A => n16, B => n13, Q => SUM_9_port);
   U19 : NAND20 port map( A => n6, B => n14, Q => n13);
   U20 : OAI210 port map( A => B(8), B => n8, C => n7, Q => SUM_8_port);
   U21 : NOR20 port map( A => A(8), B => n9, Q => n15);
   U22 : AOI210 port map( A => n19, B => A(13), C => n1, Q => n18);
   U23 : OAI210 port map( A => A(13), B => n19, C => B(13), Q => n20);
   U24 : XOR30 port map( A => B(13), B => A(13), C => n19, Q => SUM_13_port);
   U25 : OAI210 port map( A => n2, B => n11, C => n21, Q => n19);
   U26 : OAI210 port map( A => A(12), B => n22, C => B(12), Q => n21);
   U27 : XOR30 port map( A => n2, B => B(12), C => n11, Q => SUM_12_port);
   U28 : OAI210 port map( A => A(11), B => n26, C => B(11), Q => n23);
   U29 : OAI210 port map( A => n25, B => n27, C => n28, Q => n26);
   U30 : AOI210 port map( A => n16, B => n6, C => n5, Q => n27);
   U31 : XOR30 port map( A => B(11), B => A(11), C => n29, Q => SUM_11_port);
   U32 : OAI210 port map( A => n25, B => n30, C => n28, Q => n29);
   U33 : XNR20 port map( A => n30, B => n31, Q => SUM_10_port);
   U34 : NOR20 port map( A => n4, B => n25, Q => n31);
   U35 : NOR20 port map( A => B(10), B => A(10), Q => n25);
   U36 : NAND20 port map( A => B(10), B => A(10), Q => n28);
   U37 : AOI210 port map( A => n16, B => n6, C => n5, Q => n30);
   U38 : NAND20 port map( A => B(9), B => A(9), Q => n14);
   U39 : NOR20 port map( A => B(9), B => A(9), Q => n24);
   U40 : NOR20 port map( A => n9, B => n8, Q => n16);

end SYN_cla;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_npath_one_width8_width_coeff4_width_phases4.all;

entity fir_basic_width10_width_coeff4_DW02_mult_1 is

   port( A : in std_logic_vector (9 downto 0);  B : in std_logic_vector (7 
         downto 0);  TC : in std_logic;  PRODUCT : out std_logic_vector (17 
         downto 0));

end fir_basic_width10_width_coeff4_DW02_mult_1;

architecture SYN_csa of fir_basic_width10_width_coeff4_DW02_mult_1 is

   component LOGIC0
      port( Q : out std_logic);
   end component;
   
   component XOR21
      port( A, B : in std_logic;  Q : out std_logic);
   end component;
   
   component INV3
      port( A : in std_logic;  Q : out std_logic);
   end component;
   
   component NOR21
      port( A, B : in std_logic;  Q : out std_logic);
   end component;
   
   component fir_basic_width10_width_coeff4_DW01_add_4
      port( A, B : in std_logic_vector (15 downto 0);  CI : in std_logic;  SUM 
            : out std_logic_vector (15 downto 0);  CO : out std_logic);
   end component;
   
   component ADD32
      port( A, B, CI : in std_logic;  CO, S : out std_logic);
   end component;
   
   signal X_Logic0_port, PRODUCT_17_port, PRODUCT_16_port, PRODUCT_15_port, 
      PRODUCT_14_port, PRODUCT_13_port, PRODUCT_12_port, PRODUCT_11_port, 
      PRODUCT_10_port, PRODUCT_9_port, PRODUCT_8_port, PRODUCT_7_port, 
      PRODUCT_6_port, PRODUCT_5_port, PRODUCT_4_port, PRODUCT_3_port, 
      PRODUCT_2_port, PRODUCT_1_port, CARRYB_9_5_port, CARRYB_9_4_port, 
      CARRYB_9_3_port, CARRYB_9_2_port, CARRYB_9_1_port, CARRYB_9_0_port, 
      CARRYB_8_1_port, CARRYB_8_0_port, CARRYB_7_1_port, CARRYB_7_0_port, 
      CARRYB_6_1_port, CARRYB_6_0_port, CARRYB_5_1_port, CARRYB_5_0_port, 
      CARRYB_4_0_port, CARRYB_3_0_port, CARRYB_2_0_port, CARRYB_1_0_port, 
      SUMB_9_5_port, SUMB_9_4_port, SUMB_9_3_port, SUMB_9_2_port, SUMB_9_1_port
      , SUMB_9_0_port, SUMB_8_1_port, SUMB_7_1_port, SUMB_6_1_port, 
      SUMB_5_1_port, PROD1_7_port, A1_12_port, A1_11_port, A1_10_port, 
      A1_9_port, A1_8_port, A1_7_port, A1_6_port, A1_4_port, A1_3_port, 
      A1_2_port, A1_1_port, A1_0_port, A2_13_port, A2_12_port, A2_11_port, 
      A2_10_port, A2_9_port, A2_8_port, n3, n4, n5, n6, n7, n8, n9, n10, n11, 
      n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n_1063 :
      std_logic;

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
   S1_2_0 : ADD32 port map( A => A(2), B => CARRYB_1_0_port, CI => A(1), CO => 
                           CARRYB_2_0_port, S => A1_0_port);
   FS_1 : fir_basic_width10_width_coeff4_DW01_add_4 port map( A(15) => A(9), 
                           A(14) => A(9), A(13) => CARRYB_9_5_port, A(12) => 
                           A1_12_port, A(11) => A1_11_port, A(10) => A1_10_port
                           , A(9) => A1_9_port, A(8) => A1_8_port, A(7) => 
                           A1_7_port, A(6) => A1_6_port, A(5) => PROD1_7_port, 
                           A(4) => A1_4_port, A(3) => A1_3_port, A(2) => 
                           A1_2_port, A(1) => A1_1_port, A(0) => A1_0_port, 
                           B(15) => X_Logic0_port, B(14) => X_Logic0_port, 
                           B(13) => A2_13_port, B(12) => A2_12_port, B(11) => 
                           A2_11_port, B(10) => A2_10_port, B(9) => A2_9_port, 
                           B(8) => A2_8_port, B(7) => X_Logic0_port, B(6) => 
                           X_Logic0_port, B(5) => X_Logic0_port, B(4) => 
                           X_Logic0_port, B(3) => X_Logic0_port, B(2) => 
                           X_Logic0_port, B(1) => X_Logic0_port, B(0) => 
                           X_Logic0_port, CI => X_Logic0_port, SUM(15) => 
                           PRODUCT_17_port, SUM(14) => PRODUCT_16_port, SUM(13)
                           => PRODUCT_15_port, SUM(12) => PRODUCT_14_port, 
                           SUM(11) => PRODUCT_13_port, SUM(10) => 
                           PRODUCT_12_port, SUM(9) => PRODUCT_11_port, SUM(8) 
                           => PRODUCT_10_port, SUM(7) => PRODUCT_9_port, SUM(6)
                           => PRODUCT_8_port, SUM(5) => PRODUCT_7_port, SUM(4) 
                           => PRODUCT_6_port, SUM(3) => PRODUCT_5_port, SUM(2) 
                           => PRODUCT_4_port, SUM(1) => PRODUCT_3_port, SUM(0) 
                           => PRODUCT_2_port, CO => n_1063);
   U2 : XOR21 port map( A => SUMB_8_1_port, B => CARRYB_8_0_port, Q => 
                           SUMB_9_0_port);
   U3 : XOR21 port map( A => SUMB_9_1_port, B => CARRYB_9_0_port, Q => 
                           A1_8_port);
   U4 : NOR21 port map( A => n17, B => n18, Q => CARRYB_9_0_port);
   U5 : INV3 port map( A => SUMB_8_1_port, Q => n17);
   U6 : INV3 port map( A => CARRYB_8_0_port, Q => n18);
   U7 : NOR21 port map( A => n5, B => n6, Q => A2_9_port);
   U8 : INV3 port map( A => SUMB_9_1_port, Q => n6);
   U9 : INV3 port map( A => CARRYB_9_0_port, Q => n5);
   U10 : XOR21 port map( A => SUMB_9_2_port, B => CARRYB_9_1_port, Q => 
                           A1_9_port);
   U11 : NOR21 port map( A => n7, B => n8, Q => A2_10_port);
   U12 : INV3 port map( A => SUMB_9_2_port, Q => n8);
   U13 : INV3 port map( A => CARRYB_9_1_port, Q => n7);
   U14 : XOR21 port map( A => SUMB_9_3_port, B => CARRYB_9_2_port, Q => 
                           A1_10_port);
   U15 : XOR21 port map( A => SUMB_9_4_port, B => CARRYB_9_3_port, Q => 
                           A1_11_port);
   U16 : NOR21 port map( A => n9, B => n10, Q => A2_11_port);
   U17 : INV3 port map( A => CARRYB_9_2_port, Q => n9);
   U18 : INV3 port map( A => SUMB_9_3_port, Q => n10);
   U19 : XOR21 port map( A => SUMB_9_5_port, B => CARRYB_9_4_port, Q => 
                           A1_12_port);
   U20 : NOR21 port map( A => n11, B => n12, Q => A2_12_port);
   U21 : INV3 port map( A => CARRYB_9_3_port, Q => n11);
   U22 : INV3 port map( A => SUMB_9_4_port, Q => n12);
   U23 : NOR21 port map( A => n13, B => n14, Q => A2_13_port);
   U24 : INV3 port map( A => CARRYB_9_4_port, Q => n13);
   U25 : INV3 port map( A => SUMB_9_5_port, Q => n14);
   U26 : XOR21 port map( A => A(5), B => A(0), Q => SUMB_5_1_port);
   U27 : NOR21 port map( A => n15, B => n16, Q => CARRYB_1_0_port);
   U28 : INV3 port map( A => A(1), Q => n16);
   U29 : INV3 port map( A => A(0), Q => n15);
   U30 : NOR21 port map( A => n3, B => n4, Q => A2_8_port);
   U31 : INV3 port map( A => A(9), Q => n4);
   U32 : INV3 port map( A => SUMB_9_0_port, Q => n3);
   U33 : XOR21 port map( A => A(4), B => CARRYB_8_1_port, Q => SUMB_9_1_port);
   U34 : NOR21 port map( A => n21, B => n15, Q => CARRYB_5_1_port);
   U35 : INV3 port map( A => A(5), Q => n21);
   U36 : NOR21 port map( A => n19, B => n20, Q => CARRYB_9_1_port);
   U37 : INV3 port map( A => A(4), Q => n19);
   U38 : INV3 port map( A => CARRYB_8_1_port, Q => n20);
   U39 : XOR21 port map( A => A(9), B => A(5), Q => SUMB_9_2_port);
   U40 : XOR21 port map( A => A(9), B => A(6), Q => SUMB_9_3_port);
   U41 : NOR21 port map( A => n4, B => n21, Q => CARRYB_9_2_port);
   U42 : XOR21 port map( A => A(9), B => A(7), Q => SUMB_9_4_port);
   U43 : NOR21 port map( A => n4, B => n22, Q => CARRYB_9_3_port);
   U44 : INV3 port map( A => A(6), Q => n22);
   U45 : XOR21 port map( A => A(9), B => A(8), Q => SUMB_9_5_port);
   U46 : NOR21 port map( A => n4, B => n23, Q => CARRYB_9_4_port);
   U47 : INV3 port map( A => A(7), Q => n23);
   U48 : XOR21 port map( A => A(9), B => SUMB_9_0_port, Q => A1_7_port);
   U49 : NOR21 port map( A => n4, B => n24, Q => CARRYB_9_5_port);
   U50 : INV3 port map( A => A(8), Q => n24);
   U51 : XOR21 port map( A => A(0), B => A(1), Q => PRODUCT_1_port);
   U52 : LOGIC0 port map( Q => X_Logic0_port);

end SYN_csa;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_npath_one_width8_width_coeff4_width_phases4.all;

entity fir_basic_width10_width_coeff4_DW01_add_3 is

   port( A, B : in std_logic_vector (12 downto 0);  CI : in std_logic;  SUM : 
         out std_logic_vector (12 downto 0);  CO : out std_logic);

end fir_basic_width10_width_coeff4_DW01_add_3;

architecture SYN_cla of fir_basic_width10_width_coeff4_DW01_add_3 is

   component NAND20
      port( A, B : in std_logic;  Q : out std_logic);
   end component;
   
   component NOR30
      port( A, B, C : in std_logic;  Q : out std_logic);
   end component;
   
   component NAND30
      port( A, B, C : in std_logic;  Q : out std_logic);
   end component;
   
   component NOR20
      port( A, B : in std_logic;  Q : out std_logic);
   end component;
   
   component AOI210
      port( A, B, C : in std_logic;  Q : out std_logic);
   end component;
   
   component XNR20
      port( A, B : in std_logic;  Q : out std_logic);
   end component;
   
   component OAI210
      port( A, B, C : in std_logic;  Q : out std_logic);
   end component;
   
   component XOR30
      port( A, B, C : in std_logic;  Q : out std_logic);
   end component;
   
   component AOI2110
      port( A, B, C, D : in std_logic;  Q : out std_logic);
   end component;
   
   component OAI2110
      port( A, B, C, D : in std_logic;  Q : out std_logic);
   end component;
   
   component XOR20
      port( A, B : in std_logic;  Q : out std_logic);
   end component;
   
   component IMUX20
      port( A, B, S : in std_logic;  Q : out std_logic);
   end component;
   
   component INV3
      port( A : in std_logic;  Q : out std_logic);
   end component;
   
   component XNR21
      port( A, B : in std_logic;  Q : out std_logic);
   end component;
   
   signal SUM_12_port, SUM_11_port, SUM_10_port, SUM_9_port, SUM_8_port, 
      SUM_7_port, SUM_6_port, SUM_5_port, SUM_4_port, n1, n2, n3, n4, n5, n6, 
      n7, n8, n9, n10, SUM_3_port, n12, n13, n14, n15, n16, n17, n18, n19, n20,
      n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35
      , n36, n37, n38 : std_logic;

begin
   SUM <= ( SUM_12_port, SUM_11_port, SUM_10_port, SUM_9_port, SUM_8_port, 
      SUM_7_port, SUM_6_port, SUM_5_port, SUM_4_port, SUM_3_port, A(2), A(1), 
      A(0) );
   
   U2 : INV3 port map( A => n33, Q => n2);
   U3 : INV3 port map( A => n29, Q => n4);
   U4 : INV3 port map( A => n14, Q => n3);
   U5 : INV3 port map( A => A(8), Q => n6);
   U6 : INV3 port map( A => n19, Q => n8);
   U7 : INV3 port map( A => n37, Q => n5);
   U8 : XNR21 port map( A => n25, B => B(12), Q => SUM_12_port);
   U9 : INV3 port map( A => n31, Q => n1);
   U10 : INV3 port map( A => B(8), Q => n7);
   U11 : INV3 port map( A => A(5), Q => n9);
   U12 : INV3 port map( A => B(11), Q => n12);
   U13 : INV3 port map( A => A(4), Q => n10);
   U14 : INV3 port map( A => n24, Q => SUM_3_port);
   U15 : XNR20 port map( A => n5, B => n13, Q => SUM_9_port);
   U16 : NAND20 port map( A => n4, B => n14, Q => n13);
   U17 : OAI210 port map( A => B(8), B => n15, C => n16, Q => SUM_8_port);
   U18 : IMUX20 port map( A => n17, B => n18, S => n8, Q => n16);
   U19 : NOR20 port map( A => A(8), B => n7, Q => n17);
   U20 : XNR20 port map( A => n6, B => n19, Q => n15);
   U21 : XNR20 port map( A => n20, B => A(7), Q => SUM_7_port);
   U22 : NAND20 port map( A => A(6), B => n21, Q => n20);
   U23 : XOR20 port map( A => A(6), B => n21, Q => SUM_6_port);
   U24 : XNR20 port map( A => n9, B => n22, Q => SUM_5_port);
   U25 : NOR20 port map( A => n23, B => n10, Q => n22);
   U26 : XNR20 port map( A => n23, B => A(4), Q => SUM_4_port);
   U27 : OAI210 port map( A => B(3), B => A(3), C => n23, Q => n24);
   U28 : OAI2110 port map( A => n1, B => B(12), C => n26, D => n27, Q => n25);
   U29 : OAI2110 port map( A => B(8), B => A(8), C => n8, D => n28, Q => n27);
   U30 : AOI2110 port map( A => B(12), B => n12, C => n29, D => n30, Q => n28);
   U31 : OAI210 port map( A => A(11), B => n31, C => B(11), Q => n26);
   U32 : OAI210 port map( A => n30, B => n32, C => n33, Q => n31);
   U33 : AOI210 port map( A => n18, B => n4, C => n3, Q => n32);
   U34 : XOR30 port map( A => B(11), B => A(11), C => n34, Q => SUM_11_port);
   U35 : OAI210 port map( A => n30, B => n35, C => n33, Q => n34);
   U36 : XNR20 port map( A => n35, B => n36, Q => SUM_10_port);
   U37 : NOR20 port map( A => n2, B => n30, Q => n36);
   U38 : NOR20 port map( A => B(10), B => A(10), Q => n30);
   U39 : NAND20 port map( A => B(10), B => A(10), Q => n33);
   U40 : AOI210 port map( A => n5, B => n4, C => n3, Q => n35);
   U41 : NAND20 port map( A => B(9), B => A(9), Q => n14);
   U42 : NOR20 port map( A => B(9), B => A(9), Q => n29);
   U43 : AOI210 port map( A => n38, B => n8, C => n18, Q => n37);
   U44 : NOR20 port map( A => n7, B => n6, Q => n18);
   U45 : NAND30 port map( A => A(6), B => n21, C => A(7), Q => n19);
   U46 : NOR30 port map( A => n10, B => n23, C => n9, Q => n21);
   U47 : NAND20 port map( A => B(3), B => A(3), Q => n23);
   U48 : NAND20 port map( A => n6, B => n7, Q => n38);

end SYN_cla;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_npath_one_width8_width_coeff4_width_phases4.all;

entity fir_basic_width10_width_coeff4_DW02_mult_0 is

   port( A : in std_logic_vector (9 downto 0);  B : in std_logic_vector (4 
         downto 0);  TC : in std_logic;  PRODUCT : out std_logic_vector (14 
         downto 0));

end fir_basic_width10_width_coeff4_DW02_mult_0;

architecture SYN_csa of fir_basic_width10_width_coeff4_DW02_mult_0 is

   component LOGIC0
      port( Q : out std_logic);
   end component;
   
   component LOGIC1
      port( Q : out std_logic);
   end component;
   
   component XOR21
      port( A, B : in std_logic;  Q : out std_logic);
   end component;
   
   component NOR21
      port( A, B : in std_logic;  Q : out std_logic);
   end component;
   
   component INV3
      port( A : in std_logic;  Q : out std_logic);
   end component;
   
   component fir_basic_width10_width_coeff4_DW01_add_3
      port( A, B : in std_logic_vector (12 downto 0);  CI : in std_logic;  SUM 
            : out std_logic_vector (12 downto 0);  CO : out std_logic);
   end component;
   
   component ADD32
      port( A, B, CI : in std_logic;  CO, S : out std_logic);
   end component;
   
   signal X_Logic0_port, PRODUCT_14_port, PRODUCT_13_port, PRODUCT_12_port, 
      PRODUCT_11_port, PRODUCT_10_port, PRODUCT_9_port, PRODUCT_8_port, 
      PRODUCT_7_port, PRODUCT_6_port, PRODUCT_5_port, PRODUCT_4_port, 
      PRODUCT_3_port, PRODUCT_2_port, PRODUCT_1_port, CARRYB_9_3_port, 
      CARRYB_9_2_port, CARRYB_9_1_port, CARRYB_9_0_port, CARRYB_8_1_port, 
      CARRYB_8_0_port, CARRYB_7_1_port, CARRYB_7_0_port, CARRYB_6_1_port, 
      CARRYB_6_0_port, CARRYB_5_1_port, CARRYB_5_0_port, CARRYB_4_1_port, 
      CARRYB_4_0_port, CARRYB_3_1_port, CARRYB_3_0_port, CARRYB_2_0_port, 
      CARRYB_1_0_port, SUMB_9_3_port, SUMB_9_2_port, SUMB_9_1_port, 
      SUMB_9_0_port, SUMB_8_1_port, SUMB_7_1_port, SUMB_6_1_port, SUMB_5_1_port
      , SUMB_4_1_port, SUMB_3_1_port, PROD1_4_port, A1_10_port, A1_9_port, 
      A1_8_port, A1_7_port, A1_6_port, A1_5_port, A1_4_port, A1_3_port, 
      A1_1_port, A1_0_port, A2_11_port, A2_10_port, A2_9_port, A2_8_port, n3, 
      n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19,
      n20, n21, n22, n23, n24, n25, n_1080 : std_logic;

begin
   PRODUCT <= ( PRODUCT_14_port, PRODUCT_13_port, PRODUCT_12_port, 
      PRODUCT_11_port, PRODUCT_10_port, PRODUCT_9_port, PRODUCT_8_port, 
      PRODUCT_7_port, PRODUCT_6_port, PRODUCT_5_port, PRODUCT_4_port, 
      PRODUCT_3_port, PRODUCT_2_port, PRODUCT_1_port, A(0) );
   
   S1_8_0 : ADD32 port map( A => A(8), B => CARRYB_7_0_port, CI => 
                           SUMB_7_1_port, CO => CARRYB_8_0_port, S => A1_6_port
                           );
   S2_8_1 : ADD32 port map( A => A(8), B => CARRYB_7_1_port, CI => n22, CO => 
                           CARRYB_8_1_port, S => SUMB_8_1_port);
   S1_7_0 : ADD32 port map( A => A(7), B => CARRYB_6_0_port, CI => 
                           SUMB_6_1_port, CO => CARRYB_7_0_port, S => A1_5_port
                           );
   S2_7_1 : ADD32 port map( A => A(7), B => CARRYB_6_1_port, CI => n23, CO => 
                           CARRYB_7_1_port, S => SUMB_7_1_port);
   S1_6_0 : ADD32 port map( A => A(6), B => CARRYB_5_0_port, CI => 
                           SUMB_5_1_port, CO => CARRYB_6_0_port, S => A1_4_port
                           );
   S2_6_1 : ADD32 port map( A => A(6), B => CARRYB_5_1_port, CI => n15, CO => 
                           CARRYB_6_1_port, S => SUMB_6_1_port);
   S1_5_0 : ADD32 port map( A => A(5), B => CARRYB_4_0_port, CI => 
                           SUMB_4_1_port, CO => CARRYB_5_0_port, S => A1_3_port
                           );
   S2_5_1 : ADD32 port map( A => A(5), B => CARRYB_4_1_port, CI => n24, CO => 
                           CARRYB_5_1_port, S => SUMB_5_1_port);
   S1_4_0 : ADD32 port map( A => A(4), B => CARRYB_3_0_port, CI => 
                           SUMB_3_1_port, CO => CARRYB_4_0_port, S => 
                           PROD1_4_port);
   S2_4_1 : ADD32 port map( A => A(4), B => CARRYB_3_1_port, CI => n11, CO => 
                           CARRYB_4_1_port, S => SUMB_4_1_port);
   S1_3_0 : ADD32 port map( A => A(3), B => CARRYB_2_0_port, CI => A(2), CO => 
                           CARRYB_3_0_port, S => A1_1_port);
   S1_2_0 : ADD32 port map( A => A(2), B => CARRYB_1_0_port, CI => A(1), CO => 
                           CARRYB_2_0_port, S => A1_0_port);
   FS_1 : fir_basic_width10_width_coeff4_DW01_add_3 port map( A(12) => n25, 
                           A(11) => n18, A(10) => A1_10_port, A(9) => A1_9_port
                           , A(8) => A1_8_port, A(7) => A1_7_port, A(6) => 
                           A1_6_port, A(5) => A1_5_port, A(4) => A1_4_port, 
                           A(3) => A1_3_port, A(2) => n17, A(1) => A1_1_port, 
                           A(0) => A1_0_port, B(12) => CARRYB_9_3_port, B(11) 
                           => A2_11_port, B(10) => A2_10_port, B(9) => 
                           A2_9_port, B(8) => A2_8_port, B(7) => X_Logic0_port,
                           B(6) => X_Logic0_port, B(5) => X_Logic0_port, B(4) 
                           => X_Logic0_port, B(3) => PROD1_4_port, B(2) => 
                           X_Logic0_port, B(1) => X_Logic0_port, B(0) => 
                           X_Logic0_port, CI => X_Logic0_port, SUM(12) => 
                           PRODUCT_14_port, SUM(11) => PRODUCT_13_port, SUM(10)
                           => PRODUCT_12_port, SUM(9) => PRODUCT_11_port, 
                           SUM(8) => PRODUCT_10_port, SUM(7) => PRODUCT_9_port,
                           SUM(6) => PRODUCT_8_port, SUM(5) => PRODUCT_7_port, 
                           SUM(4) => PRODUCT_6_port, SUM(3) => PRODUCT_5_port, 
                           SUM(2) => PRODUCT_4_port, SUM(1) => PRODUCT_3_port, 
                           SUM(0) => PRODUCT_2_port, CO => n_1080);
   U2 : XOR21 port map( A => SUMB_9_1_port, B => CARRYB_9_0_port, Q => 
                           A1_8_port);
   U3 : NOR21 port map( A => n4, B => n5, Q => A2_9_port);
   U4 : INV3 port map( A => SUMB_9_1_port, Q => n5);
   U5 : INV3 port map( A => CARRYB_9_0_port, Q => n4);
   U6 : XOR21 port map( A => SUMB_8_1_port, B => CARRYB_8_0_port, Q => 
                           SUMB_9_0_port);
   U7 : XOR21 port map( A => n21, B => CARRYB_8_1_port, Q => SUMB_9_1_port);
   U8 : NOR21 port map( A => n12, B => n13, Q => CARRYB_9_0_port);
   U9 : INV3 port map( A => SUMB_8_1_port, Q => n12);
   U10 : INV3 port map( A => CARRYB_8_0_port, Q => n13);
   U11 : XOR21 port map( A => SUMB_9_2_port, B => CARRYB_9_1_port, Q => 
                           A1_9_port);
   U12 : NOR21 port map( A => n6, B => n7, Q => A2_10_port);
   U13 : INV3 port map( A => SUMB_9_2_port, Q => n7);
   U14 : INV3 port map( A => CARRYB_9_1_port, Q => n6);
   U15 : NOR21 port map( A => A(6), B => n14, Q => CARRYB_9_1_port);
   U16 : INV3 port map( A => CARRYB_8_1_port, Q => n14);
   U17 : XOR21 port map( A => SUMB_9_3_port, B => CARRYB_9_2_port, Q => 
                           A1_10_port);
   U18 : NOR21 port map( A => n8, B => n9, Q => A2_11_port);
   U19 : INV3 port map( A => CARRYB_9_2_port, Q => n8);
   U20 : INV3 port map( A => SUMB_9_3_port, Q => n9);
   U21 : INV3 port map( A => CARRYB_9_3_port, Q => n18);
   U22 : INV3 port map( A => PROD1_4_port, Q => n17);
   U23 : INV3 port map( A => A(5), Q => n22);
   U24 : XOR21 port map( A => A(3), B => n10, Q => SUMB_3_1_port);
   U25 : INV3 port map( A => A(4), Q => n23);
   U26 : INV3 port map( A => A(2), Q => n24);
   U27 : NOR21 port map( A => n10, B => n11, Q => CARRYB_1_0_port);
   U28 : INV3 port map( A => A(0), Q => n10);
   U29 : INV3 port map( A => A(1), Q => n11);
   U30 : NOR21 port map( A => n15, B => A(0), Q => CARRYB_3_1_port);
   U31 : XOR21 port map( A => A(9), B => SUMB_9_0_port, Q => A1_7_port);
   U32 : NOR21 port map( A => n3, B => n16, Q => A2_8_port);
   U33 : INV3 port map( A => SUMB_9_0_port, Q => n3);
   U34 : INV3 port map( A => A(3), Q => n15);
   U35 : XOR21 port map( A => A(9), B => n20, Q => SUMB_9_2_port);
   U36 : XOR21 port map( A => A(9), B => n19, Q => SUMB_9_3_port);
   U37 : NOR21 port map( A => n16, B => A(7), Q => CARRYB_9_2_port);
   U38 : INV3 port map( A => A(9), Q => n16);
   U39 : INV3 port map( A => A(7), Q => n20);
   U40 : INV3 port map( A => A(8), Q => n19);
   U41 : INV3 port map( A => A(6), Q => n21);
   U42 : NOR21 port map( A => n16, B => A(8), Q => CARRYB_9_3_port);
   U43 : XOR21 port map( A => A(0), B => A(1), Q => PRODUCT_1_port);
   U44 : LOGIC1 port map( Q => n25);
   U45 : LOGIC0 port map( Q => X_Logic0_port);

end SYN_csa;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_npath_one_width8_width_coeff4_width_phases4.all;

entity fir_basic_width10_width_coeff4_DW01_add_2 is

   port( A, B : in std_logic_vector (17 downto 0);  CI : in std_logic;  SUM : 
         out std_logic_vector (17 downto 0);  CO : out std_logic);

end fir_basic_width10_width_coeff4_DW01_add_2;

architecture SYN_rpl of fir_basic_width10_width_coeff4_DW01_add_2 is

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
      carry_3_port, carry_2_port, carry_1_port, n1, n2, n_1083 : std_logic;

begin
   
   U1_17 : ADD32 port map( A => A(17), B => B(17), CI => carry_17_port, CO => 
                           n_1083, S => SUM(17));
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
   U2 : NOR21 port map( A => n1, B => n2, Q => carry_1_port);
   U3 : INV3 port map( A => A(0), Q => n2);
   U4 : INV3 port map( A => B(0), Q => n1);

end SYN_rpl;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_npath_one_width8_width_coeff4_width_phases4.all;

entity fir_basic_width10_width_coeff4_DW01_add_1 is

   port( A, B : in std_logic_vector (17 downto 0);  CI : in std_logic;  SUM : 
         out std_logic_vector (17 downto 0);  CO : out std_logic);

end fir_basic_width10_width_coeff4_DW01_add_1;

architecture SYN_rpl of fir_basic_width10_width_coeff4_DW01_add_1 is

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
      carry_3_port, carry_2_port, carry_1_port, n1, n2, n_1086 : std_logic;

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
   U2 : NOR21 port map( A => n1, B => n2, Q => carry_1_port);
   U3 : INV3 port map( A => A(0), Q => n2);
   U4 : INV3 port map( A => B(0), Q => n1);

end SYN_rpl;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_npath_one_width8_width_coeff4_width_phases4.all;

entity fir_basic_width10_width_coeff4_DW01_add_0 is

   port( A, B : in std_logic_vector (18 downto 0);  CI : in std_logic;  SUM : 
         out std_logic_vector (18 downto 0);  CO : out std_logic);

end fir_basic_width10_width_coeff4_DW01_add_0;

architecture SYN_rpl of fir_basic_width10_width_coeff4_DW01_add_0 is

   component XOR21
      port( A, B : in std_logic;  Q : out std_logic);
   end component;
   
   component INV3
      port( A : in std_logic;  Q : out std_logic);
   end component;
   
   component NOR21
      port( A, B : in std_logic;  Q : out std_logic);
   end component;
   
   component ADD32
      port( A, B, CI : in std_logic;  CO, S : out std_logic);
   end component;
   
   signal carry_18_port, carry_17_port, carry_16_port, carry_15_port, 
      carry_14_port, carry_13_port, carry_12_port, carry_11_port, carry_10_port
      , carry_9_port, carry_8_port, carry_7_port, carry_6_port, carry_5_port, 
      carry_4_port, carry_3_port, carry_2_port, carry_1_port, n1, n2, n_1089 : 
      std_logic;

begin
   
   U1_18 : ADD32 port map( A => A(18), B => B(18), CI => carry_18_port, CO => 
                           n_1089, S => SUM(18));
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
   U1 : NOR21 port map( A => n1, B => n2, Q => carry_1_port);
   U2 : INV3 port map( A => A(0), Q => n2);
   U3 : INV3 port map( A => B(0), Q => n1);
   U4 : XOR21 port map( A => A(0), B => B(0), Q => SUM(0));

end SYN_rpl;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_npath_one_width8_width_coeff4_width_phases4.all;

entity fir_basic_width10_width_coeff4_DW01_inc_0 is

   port( A : in std_logic_vector (12 downto 0);  SUM : out std_logic_vector (12
         downto 0));

end fir_basic_width10_width_coeff4_DW01_inc_0;

architecture SYN_rpl of fir_basic_width10_width_coeff4_DW01_inc_0 is

   component XOR20
      port( A, B : in std_logic;  Q : out std_logic);
   end component;
   
   component INV3
      port( A : in std_logic;  Q : out std_logic);
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
   U1 : INV3 port map( A => A(0), Q => SUM(0));
   U2 : XOR20 port map( A => carry_12_port, B => A(12), Q => SUM(12));

end SYN_rpl;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_npath_one_width8_width_coeff4_width_phases4.all;

entity npath_one_width8_width_coeff4_width_phases4_DW01_sub_0 is

   port( A, B : in std_logic_vector (8 downto 0);  CI : in std_logic;  DIFF : 
         out std_logic_vector (8 downto 0);  CO : out std_logic);

end npath_one_width8_width_coeff4_width_phases4_DW01_sub_0;

architecture SYN_rpl of npath_one_width8_width_coeff4_width_phases4_DW01_sub_0 
   is

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
      n9, n10, n_1092 : std_logic;

begin
   
   U2_8 : ADD32 port map( A => A(8), B => n2, CI => carry_8_port, CO => n_1092,
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

use work.CONV_PACK_npath_one_width8_width_coeff4_width_phases4.all;

entity fir_basic_width10_width_coeff4 is

   port( clk : in std_logic;  vin : in std_logic_vector (9 downto 0);  vout : 
         out std_logic_vector (12 downto 0));

end fir_basic_width10_width_coeff4;

architecture SYN_behavior of fir_basic_width10_width_coeff4 is

   component NOR30
      port( A, B, C : in std_logic;  Q : out std_logic);
   end component;
   
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
   
   component AOI211
      port( A, B, C : in std_logic;  Q : out std_logic);
   end component;
   
   component BUF2
      port( A : in std_logic;  Q : out std_logic);
   end component;
   
   component fir_basic_width10_width_coeff4_DW02_mult_0
      port( A : in std_logic_vector (9 downto 0);  B : in std_logic_vector (4 
            downto 0);  TC : in std_logic;  PRODUCT : out std_logic_vector (14 
            downto 0));
   end component;
   
   component fir_basic_width10_width_coeff4_DW02_mult_2
      port( A : in std_logic_vector (9 downto 0);  B : in std_logic_vector (6 
            downto 0);  TC : in std_logic;  PRODUCT : out std_logic_vector (16 
            downto 0));
   end component;
   
   component fir_basic_width10_width_coeff4_DW02_mult_3
      port( A : in std_logic_vector (9 downto 0);  B : in std_logic_vector (6 
            downto 0);  TC : in std_logic;  PRODUCT : out std_logic_vector (16 
            downto 0));
   end component;
   
   component fir_basic_width10_width_coeff4_DW02_mult_1
      port( A : in std_logic_vector (9 downto 0);  B : in std_logic_vector (7 
            downto 0);  TC : in std_logic;  PRODUCT : out std_logic_vector (17 
            downto 0));
   end component;
   
   component fir_basic_width10_width_coeff4_DW01_add_2
      port( A, B : in std_logic_vector (17 downto 0);  CI : in std_logic;  SUM 
            : out std_logic_vector (17 downto 0);  CO : out std_logic);
   end component;
   
   component fir_basic_width10_width_coeff4_DW01_add_1
      port( A, B : in std_logic_vector (17 downto 0);  CI : in std_logic;  SUM 
            : out std_logic_vector (17 downto 0);  CO : out std_logic);
   end component;
   
   component fir_basic_width10_width_coeff4_DW01_add_0
      port( A, B : in std_logic_vector (18 downto 0);  CI : in std_logic;  SUM 
            : out std_logic_vector (18 downto 0);  CO : out std_logic);
   end component;
   
   component fir_basic_width10_width_coeff4_DW01_inc_0
      port( A : in std_logic_vector (12 downto 0);  SUM : out std_logic_vector 
            (12 downto 0));
   end component;
   
   component DF3
      port( D, C : in std_logic;  Q, QN : out std_logic);
   end component;
   
   component OAI212
      port( A, B, C : in std_logic;  Q : out std_logic);
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
      q_sum_1_0_2_port, q_sum_1_0_1_port, q_sum_1_0_0_port, q_sum_0_1_19_port, 
      q_sum_0_1_16_port, q_sum_0_1_15_port, q_sum_0_1_14_port, 
      q_sum_0_1_13_port, q_sum_0_1_12_port, q_sum_0_1_11_port, 
      q_sum_0_1_10_port, q_sum_0_1_9_port, q_sum_0_1_8_port, q_sum_0_1_7_port, 
      q_sum_0_1_6_port, q_sum_0_1_5_port, q_sum_0_1_4_port, q_sum_0_1_3_port, 
      q_sum_0_1_2_port, q_sum_0_1_1_port, q_sum_0_1_0_port, q_sum_0_0_19_port, 
      q_sum_0_0_16_port, q_sum_0_0_15_port, q_sum_0_0_14_port, 
      q_sum_0_0_13_port, q_sum_0_0_12_port, q_sum_0_0_11_port, 
      q_sum_0_0_10_port, q_sum_0_0_9_port, q_sum_0_0_8_port, q_sum_0_0_7_port, 
      q_sum_0_0_6_port, q_sum_0_0_5_port, q_sum_0_0_4_port, q_sum_0_0_3_port, 
      q_sum_0_0_2_port, q_sum_0_0_1_port, q_sum_0_0_0_port, N68, N70, N71, N72,
      N73, N74, N75, N76, N77, N78, N79, N80, N81, N82, n26_port, n27_port, 
      n28_port, n29_port, n30_port, n31_port, n32_port, n33_port, n34_port, 
      n35_port, n36_port, n37_port, n38_port, n1_port, n3_port, n4_port, 
      n5_port, n6_port, n18_port, n19_port, n20_port, n_1093, n_1094, n_1095, 
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
   
   U16 : OAI212 port map( A => n1_port, B => n6_port, C => n35_port, Q => 
                           vout(12));
   U18 : OAI212 port map( A => n1_port, B => n6_port, C => n36_port, Q => 
                           vout(11));
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
   add_66 : fir_basic_width10_width_coeff4_DW01_inc_0 port map( A(12) => 
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
   add_58 : fir_basic_width10_width_coeff4_DW01_add_0 port map( A(18) => 
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
                           => q_sum_0_1_0_port, CI => n19_port, SUM(18) => 
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
   add_50_I3 : fir_basic_width10_width_coeff4_DW01_add_1 port map( A(17) => 
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
                           B(0) => vec_2w_3_0_port, CI => n19_port, SUM(17) => 
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
   add_50 : fir_basic_width10_width_coeff4_DW01_add_2 port map( A(17) => 
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
                           B(0) => vec_2w_1_0_port, CI => n19_port, SUM(17) => 
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
   mult_37 : fir_basic_width10_width_coeff4_DW02_mult_1 port map( A(9) => 
                           q_s_3_9_port, A(8) => q_s_3_8_port, A(7) => 
                           q_s_3_7_port, A(6) => q_s_3_6_port, A(5) => 
                           q_s_3_5_port, A(4) => q_s_3_4_port, A(3) => 
                           q_s_3_3_port, A(2) => q_s_3_2_port, A(1) => 
                           q_s_3_1_port, A(0) => q_s_3_0_port, B(7) => n19_port
                           , B(6) => n20_port, B(5) => n19_port, B(4) => 
                           n19_port, B(3) => n19_port, B(2) => n19_port, B(1) 
                           => n20_port, B(0) => n20_port, TC => n20_port, 
                           PRODUCT(17) => N35, PRODUCT(16) => N34, PRODUCT(15) 
                           => N33, PRODUCT(14) => N32, PRODUCT(13) => N31, 
                           PRODUCT(12) => N30, PRODUCT(11) => N29, PRODUCT(10) 
                           => N28, PRODUCT(9) => N27, PRODUCT(8) => N26, 
                           PRODUCT(7) => N25, PRODUCT(6) => N24, PRODUCT(5) => 
                           N23, PRODUCT(4) => N22, PRODUCT(3) => N21, 
                           PRODUCT(2) => N20, PRODUCT(1) => N19, PRODUCT(0) => 
                           N18);
   mult_34 : fir_basic_width10_width_coeff4_DW02_mult_3 port map( A(9) => 
                           vin(9), A(8) => vin(8), A(7) => vin(7), A(6) => 
                           vin(6), A(5) => vin(5), A(4) => vin(4), A(3) => 
                           vin(3), A(2) => vin(2), A(1) => vin(1), A(0) => 
                           vin(0), B(6) => n19_port, B(5) => n20_port, B(4) => 
                           n19_port, B(3) => n20_port, B(2) => n19_port, B(1) 
                           => n20_port, B(0) => n20_port, TC => n20_port, 
                           PRODUCT(16) => N17, PRODUCT(15) => N16, PRODUCT(14) 
                           => N15, PRODUCT(13) => N14, PRODUCT(12) => N13, 
                           PRODUCT(11) => N12, PRODUCT(10) => N11, PRODUCT(9) 
                           => N10, PRODUCT(8) => N9, PRODUCT(7) => N8, 
                           PRODUCT(6) => N7, PRODUCT(5) => N6, PRODUCT(4) => N5
                           , PRODUCT(3) => N4, PRODUCT(2) => N3, PRODUCT(1) => 
                           N2, PRODUCT(0) => N1);
   mult_37_I2 : fir_basic_width10_width_coeff4_DW02_mult_2 port map( A(9) => 
                           q_s_2_9_port, A(8) => q_s_2_8_port, A(7) => 
                           q_s_2_7_port, A(6) => q_s_2_6_port, A(5) => 
                           q_s_2_5_port, A(4) => q_s_2_4_port, A(3) => 
                           q_s_2_3_port, A(2) => q_s_2_2_port, A(1) => 
                           q_s_2_1_port, A(0) => q_s_2_0_port, B(6) => n19_port
                           , B(5) => n20_port, B(4) => n19_port, B(3) => 
                           n20_port, B(2) => n19_port, B(1) => n20_port, B(0) 
                           => n20_port, TC => n20_port, PRODUCT(16) => N52, 
                           PRODUCT(15) => N51, PRODUCT(14) => N50, PRODUCT(13) 
                           => N49, PRODUCT(12) => N48, PRODUCT(11) => N47, 
                           PRODUCT(10) => N46, PRODUCT(9) => N45, PRODUCT(8) =>
                           N44, PRODUCT(7) => N43, PRODUCT(6) => N42, 
                           PRODUCT(5) => N41, PRODUCT(4) => N40, PRODUCT(3) => 
                           N39, PRODUCT(2) => N38, PRODUCT(1) => N37, 
                           PRODUCT(0) => N36);
   mult_37_I3 : fir_basic_width10_width_coeff4_DW02_mult_0 port map( A(9) => 
                           q_s_1_9_port, A(8) => q_s_1_8_port, A(7) => 
                           q_s_1_7_port, A(6) => q_s_1_6_port, A(5) => 
                           q_s_1_5_port, A(4) => q_s_1_4_port, A(3) => 
                           q_s_1_3_port, A(2) => q_s_1_2_port, A(1) => 
                           q_s_1_1_port, A(0) => q_s_1_0_port, B(4) => n20_port
                           , B(3) => n19_port, B(2) => n19_port, B(1) => 
                           n20_port, B(0) => n20_port, TC => n20_port, 
                           PRODUCT(14) => N67, PRODUCT(13) => N66, PRODUCT(12) 
                           => N65, PRODUCT(11) => N64, PRODUCT(10) => N63, 
                           PRODUCT(9) => N62, PRODUCT(8) => N61, PRODUCT(7) => 
                           N60, PRODUCT(6) => N59, PRODUCT(5) => N58, 
                           PRODUCT(4) => N57, PRODUCT(3) => N56, PRODUCT(2) => 
                           N55, PRODUCT(1) => N54, PRODUCT(0) => N53);
   U3 : NAND22 port map( A => N81, B => n1_port, Q => n36_port);
   U4 : INV3 port map( A => n1_port, Q => n18_port);
   U5 : BUF2 port map( A => N68, Q => n1_port);
   U6 : AOI211 port map( A => n4_port, B => n3_port, C => n5_port, Q => N68);
   U7 : INV3 port map( A => q_sum_1_0_6_port, Q => n5_port);
   U8 : NAND22 port map( A => N82, B => n1_port, Q => n35_port);
   U9 : INV3 port map( A => q_sum_1_0_19_port, Q => n6_port);
   U10 : INV3 port map( A => n37_port, Q => vout(10));
   U11 : AOI221 port map( A => q_sum_1_0_17_port, B => n18_port, C => N80, D =>
                           n1_port, Q => n37_port);
   U12 : INV3 port map( A => n30_port, Q => vout(5));
   U13 : AOI221 port map( A => q_sum_1_0_12_port, B => n18_port, C => N75, D =>
                           n1_port, Q => n30_port);
   U14 : INV3 port map( A => n29_port, Q => vout(6));
   U15 : AOI221 port map( A => q_sum_1_0_13_port, B => n18_port, C => N76, D =>
                           n1_port, Q => n29_port);
   U17 : INV3 port map( A => n28_port, Q => vout(7));
   U19 : AOI221 port map( A => q_sum_1_0_14_port, B => n18_port, C => N77, D =>
                           n1_port, Q => n28_port);
   U20 : INV3 port map( A => n27_port, Q => vout(8));
   U21 : AOI221 port map( A => q_sum_1_0_15_port, B => n18_port, C => N78, D =>
                           n1_port, Q => n27_port);
   U22 : INV3 port map( A => n26_port, Q => vout(9));
   U23 : AOI221 port map( A => q_sum_1_0_16_port, B => n18_port, C => N79, D =>
                           n1_port, Q => n26_port);
   U24 : INV3 port map( A => n38_port, Q => vout(0));
   U25 : AOI221 port map( A => q_sum_1_0_7_port, B => n18_port, C => N70, D => 
                           n1_port, Q => n38_port);
   U26 : INV3 port map( A => n34_port, Q => vout(1));
   U27 : AOI221 port map( A => q_sum_1_0_8_port, B => n18_port, C => N71, D => 
                           n1_port, Q => n34_port);
   U28 : INV3 port map( A => n33_port, Q => vout(2));
   U29 : AOI221 port map( A => q_sum_1_0_9_port, B => n18_port, C => N72, D => 
                           n1_port, Q => n33_port);
   U30 : INV3 port map( A => n32_port, Q => vout(3));
   U31 : AOI221 port map( A => q_sum_1_0_10_port, B => n18_port, C => N73, D =>
                           n1_port, Q => n32_port);
   U32 : INV3 port map( A => n31_port, Q => vout(4));
   U33 : AOI221 port map( A => q_sum_1_0_11_port, B => n18_port, C => N74, D =>
                           n1_port, Q => n31_port);
   U34 : LOGIC1 port map( Q => n20_port);
   U35 : LOGIC0 port map( Q => n19_port);
   U36 : NOR30 port map( A => q_sum_1_0_0_port, B => q_sum_1_0_2_port, C => 
                           q_sum_1_0_1_port, Q => n4_port);
   U37 : NOR30 port map( A => q_sum_1_0_3_port, B => q_sum_1_0_5_port, C => 
                           q_sum_1_0_4_port, Q => n3_port);

end SYN_behavior;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_npath_one_width8_width_coeff4_width_phases4.all;

entity npath_one_width8_width_coeff4_width_phases4 is

   port( clk : in std_logic;  phg : in std_array (3 downto 0);  vin : in 
         std_logic_vector (7 downto 0);  vout_s : out std_logic_vector (12 
         downto 0);  vout : out std_logic_vector (7 downto 0));

end npath_one_width8_width_coeff4_width_phases4;

architecture SYN_behavior of npath_one_width8_width_coeff4_width_phases4 is

   component LOGIC0
      port( Q : out std_logic);
   end component;
   
   component npath_one_width8_width_coeff4_width_phases4_DW01_sub_0
      port( A, B : in std_logic_vector (8 downto 0);  CI : in std_logic;  DIFF 
            : out std_logic_vector (8 downto 0);  CO : out std_logic);
   end component;
   
   component fir_basic_width10_width_coeff4
      port( clk : in std_logic;  vin : in std_logic_vector (9 downto 0);  vout 
            : out std_logic_vector (12 downto 0));
   end component;
   
   component DF3
      port( D, C : in std_logic;  Q, QN : out std_logic);
   end component;
   
   signal vout_s_12_port, vout_s_11_port, vout_s_10_port, vout_s_9_port, 
      vout_s_8_port, vout_s_7_port, vout_s_6_port, vout_s_5_port, vout_s_4_port
      , vout_s_3_port, vout_s_2_port, vout_s_1_port, vout_s_0_port, 
      reg_out_array_3_8_port, reg_out_array_3_7_port, reg_out_array_3_6_port, 
      reg_out_array_3_5_port, reg_out_array_3_4_port, reg_out_array_3_3_port, 
      reg_out_array_3_2_port, reg_out_array_3_1_port, reg_out_array_3_0_port, 
      reg_out_array_1_8_port, reg_out_array_1_7_port, reg_out_array_1_6_port, 
      reg_out_array_1_5_port, reg_out_array_1_4_port, reg_out_array_1_3_port, 
      reg_out_array_1_2_port, reg_out_array_1_1_port, reg_out_array_1_0_port, 
      q_sum_0_0_9_port, q_sum_0_0_7_port, q_sum_0_0_6_port, q_sum_0_0_5_port, 
      q_sum_0_0_4_port, q_sum_0_0_3_port, q_sum_0_0_2_port, q_sum_0_0_1_port, 
      q_sum_0_0_0_port, n2, n_1198, n_1199, n_1200, n_1201, n_1202, n_1203, 
      n_1204, n_1205, n_1206, n_1207, n_1208, n_1209, n_1210, n_1211, n_1212, 
      n_1213, n_1214, n_1215, n_1216 : std_logic;

begin
   vout_s <= ( vout_s_12_port, vout_s_11_port, vout_s_10_port, vout_s_9_port, 
      vout_s_8_port, vout_s_7_port, vout_s_6_port, vout_s_5_port, vout_s_4_port
      , vout_s_3_port, vout_s_2_port, vout_s_1_port, vout_s_0_port );
   vout <= ( vout_s_12_port, vout_s_11_port, vout_s_10_port, vout_s_9_port, 
      vout_s_8_port, vout_s_7_port, vout_s_6_port, vout_s_5_port );
   
   reg_out_array_reg_1_8_inst : DF3 port map( D => vin(7), C => phg(1), Q => 
                           reg_out_array_1_8_port, QN => n_1198);
   reg_out_array_reg_1_7_inst : DF3 port map( D => vin(7), C => phg(1), Q => 
                           reg_out_array_1_7_port, QN => n_1199);
   reg_out_array_reg_1_6_inst : DF3 port map( D => vin(6), C => phg(1), Q => 
                           reg_out_array_1_6_port, QN => n_1200);
   reg_out_array_reg_1_5_inst : DF3 port map( D => vin(5), C => phg(1), Q => 
                           reg_out_array_1_5_port, QN => n_1201);
   reg_out_array_reg_1_4_inst : DF3 port map( D => vin(4), C => phg(1), Q => 
                           reg_out_array_1_4_port, QN => n_1202);
   reg_out_array_reg_1_3_inst : DF3 port map( D => vin(3), C => phg(1), Q => 
                           reg_out_array_1_3_port, QN => n_1203);
   reg_out_array_reg_1_2_inst : DF3 port map( D => vin(2), C => phg(1), Q => 
                           reg_out_array_1_2_port, QN => n_1204);
   reg_out_array_reg_1_1_inst : DF3 port map( D => vin(1), C => phg(1), Q => 
                           reg_out_array_1_1_port, QN => n_1205);
   reg_out_array_reg_1_0_inst : DF3 port map( D => vin(0), C => phg(1), Q => 
                           reg_out_array_1_0_port, QN => n_1206);
   reg_out_array_reg_3_8_inst : DF3 port map( D => vin(7), C => phg(3), Q => 
                           reg_out_array_3_8_port, QN => n_1207);
   reg_out_array_reg_3_7_inst : DF3 port map( D => vin(7), C => phg(3), Q => 
                           reg_out_array_3_7_port, QN => n_1208);
   reg_out_array_reg_3_6_inst : DF3 port map( D => vin(6), C => phg(3), Q => 
                           reg_out_array_3_6_port, QN => n_1209);
   reg_out_array_reg_3_5_inst : DF3 port map( D => vin(5), C => phg(3), Q => 
                           reg_out_array_3_5_port, QN => n_1210);
   reg_out_array_reg_3_4_inst : DF3 port map( D => vin(4), C => phg(3), Q => 
                           reg_out_array_3_4_port, QN => n_1211);
   reg_out_array_reg_3_3_inst : DF3 port map( D => vin(3), C => phg(3), Q => 
                           reg_out_array_3_3_port, QN => n_1212);
   reg_out_array_reg_3_2_inst : DF3 port map( D => vin(2), C => phg(3), Q => 
                           reg_out_array_3_2_port, QN => n_1213);
   reg_out_array_reg_3_1_inst : DF3 port map( D => vin(1), C => phg(3), Q => 
                           reg_out_array_3_1_port, QN => n_1214);
   reg_out_array_reg_3_0_inst : DF3 port map( D => vin(0), C => phg(3), Q => 
                           reg_out_array_3_0_port, QN => n_1215);
   filtering_out : fir_basic_width10_width_coeff4 port map( clk => clk, vin(9) 
                           => q_sum_0_0_9_port, vin(8) => q_sum_0_0_9_port, 
                           vin(7) => q_sum_0_0_7_port, vin(6) => 
                           q_sum_0_0_6_port, vin(5) => q_sum_0_0_5_port, vin(4)
                           => q_sum_0_0_4_port, vin(3) => q_sum_0_0_3_port, 
                           vin(2) => q_sum_0_0_2_port, vin(1) => 
                           q_sum_0_0_1_port, vin(0) => q_sum_0_0_0_port, 
                           vout(12) => vout_s_12_port, vout(11) => 
                           vout_s_11_port, vout(10) => vout_s_10_port, vout(9) 
                           => vout_s_9_port, vout(8) => vout_s_8_port, vout(7) 
                           => vout_s_7_port, vout(6) => vout_s_6_port, vout(5) 
                           => vout_s_5_port, vout(4) => vout_s_4_port, vout(3) 
                           => vout_s_3_port, vout(2) => vout_s_2_port, vout(1) 
                           => vout_s_1_port, vout(0) => vout_s_0_port);
   sub_61_I2 : npath_one_width8_width_coeff4_width_phases4_DW01_sub_0 port map(
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
                           reg_out_array_1_0_port, CI => n2, DIFF(8) => 
                           q_sum_0_0_9_port, DIFF(7) => q_sum_0_0_7_port, 
                           DIFF(6) => q_sum_0_0_6_port, DIFF(5) => 
                           q_sum_0_0_5_port, DIFF(4) => q_sum_0_0_4_port, 
                           DIFF(3) => q_sum_0_0_3_port, DIFF(2) => 
                           q_sum_0_0_2_port, DIFF(1) => q_sum_0_0_1_port, 
                           DIFF(0) => q_sum_0_0_0_port, CO => n_1216);
   U5 : LOGIC0 port map( Q => n2);

end SYN_behavior;
