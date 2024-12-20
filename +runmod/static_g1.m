function g1 = static_g1(T, y, x, params, T_flag)
% function g1 = static_g1(T, y, x, params, T_flag)
%
% File created by Dynare Preprocessor from .mod file
%
% Inputs:
%   T         [#temp variables by 1]  double   vector of temporary terms to be filled by function
%   y         [M_.endo_nbr by 1]      double   vector of endogenous variables in declaration order
%   x         [M_.exo_nbr by 1]       double   vector of exogenous variables in declaration order
%   params    [M_.param_nbr by 1]     double   vector of parameter values in declaration order
%                                              to evaluate the model
%   T_flag    boolean                 boolean  flag saying whether or not to calculate temporary terms
%
% Output:
%   g1
%

if T_flag
    T = runmod.static_g1_tt(T, y, x, params);
end
g1 = zeros(485, 485);
g1(1,1)=1;
g1(2,3)=(-1);
g1(3,3)=1;
g1(3,102)=(-(params(4)+params(5)));
g1(3,112)=(-(params(6)+params(7)));
g1(3,113)=(-(params(8)+params(9)));
g1(3,118)=(-(params(2)+params(3)));
g1(3,126)=(-params(1));
g1(3,137)=(-(params(10)+params(11)));
g1(4,4)=1-(params(15)+params(12)+params(14));
g1(4,67)=(-params(19));
g1(4,138)=(-params(13));
g1(4,199)=(-(params(17)+params(18)));
g1(4,244)=(-params(16));
g1(5,4)=(-1);
g1(5,5)=1;
g1(5,102)=(-1);
g1(5,136)=(-1);
g1(6,8)=(-(params(23)+params(24)));
g1(6,11)=(-(params(21)+params(22)));
g1(6,81)=(-(params(26)+params(28)));
g1(6,224)=(-(params(25)+params(27)));
g1(7,7)=1-(params(29)+params(31));
g1(7,140)=(-params(30));
g1(7,245)=(-1);
g1(7,251)=(-params(32));
g1(8,8)=1-(params(33)+params(36));
g1(8,84)=(-(params(37)+1+params(34)));
g1(9,7)=(-(params(40)+params(41)));
g1(9,8)=(-(params(42)+params(43)));
g1(9,11)=(-(params(38)+params(39)));
g1(10,9)=(-1);
g1(10,10)=1;
g1(10,107)=(-1);
g1(11,11)=1-(params(45)+params(47));
g1(11,141)=(-params(46));
g1(11,221)=(-(params(51)+params(49)));
g1(11,231)=(-(params(52)+params(50)));
g1(11,246)=(-params(48));
g1(12,12)=1-(params(56)+params(53)+params(55));
g1(12,14)=(-(params(57)+params(54)));
g1(12,207)=(-(params(59)+params(58)));
g1(12,274)=(-.01);
g1(13,12)=(-1);
g1(13,13)=1;
g1(13,112)=(-1);
g1(13,136)=(-1);
g1(14,14)=1-params(61);
g1(14,66)=(-(params(68)+params(67)+params(65)+params(66)));
g1(14,112)=(-params(62));
g1(14,136)=(-params(63));
g1(14,214)=(-params(64));
g1(15,15)=1-(params(72)+params(69)+params(71));
g1(15,17)=(-(params(73)+params(70)));
g1(15,207)=(-(params(75)+params(74)));
g1(15,274)=(-.01);
g1(16,15)=(-1);
g1(16,16)=1;
g1(16,115)=(-1);
g1(17,17)=1-params(77);
g1(17,66)=(-(params(83)+params(82)+params(80)+params(81)));
g1(17,115)=(-params(78));
g1(17,214)=(-params(79));
g1(18,18)=1-(params(87)+params(84)+params(86));
g1(18,20)=(-(params(88)+params(85)));
g1(18,207)=(-(params(90)+params(89)));
g1(19,18)=(-1);
g1(19,19)=1;
g1(19,113)=(-1);
g1(19,136)=(-1);
g1(20,20)=1-params(92);
g1(20,66)=(-(params(99)+params(98)+params(96)+params(97)));
g1(20,113)=(-params(93));
g1(20,136)=(-params(94));
g1(20,214)=(-params(95));
g1(21,21)=1-(params(103)+params(100)+params(102));
g1(21,23)=(-(params(104)+params(101)));
g1(21,207)=(-(params(106)+params(105)));
g1(22,21)=(-1);
g1(22,22)=1;
g1(22,116)=(-1);
g1(23,23)=1-params(108);
g1(23,66)=(-(params(114)+params(113)+params(111)+params(112)));
g1(23,116)=(-params(109));
g1(23,214)=(-params(110));
g1(24,24)=1-(params(118)+params(115)+params(117));
g1(24,142)=(-params(116));
g1(24,174)=(-(params(119)+params(120)));
g1(24,247)=(-1);
g1(25,24)=(-1);
g1(25,25)=1;
g1(25,118)=(-1);
g1(25,136)=(-1);
g1(26,27)=(-(params(124)+params(126)));
g1(26,28)=(-(params(127)+params(128)));
g1(26,29)=(-(params(123)+params(125)));
g1(26,30)=(-(params(131)+params(132)));
g1(26,31)=(-(params(129)+params(130)));
g1(27,27)=1;
g1(27,29)=(-params(134));
g1(27,31)=(-params(135));
g1(28,28)=1-params(136);
g1(28,129)=(-params(137));
g1(28,207)=(-(params(142)+params(141)+params(140)));
g1(28,212)=(-params(139));
g1(29,28)=(-1);
g1(29,29)=1;
g1(29,129)=(-1);
g1(30,30)=1;
g1(30,130)=(-(params(147)+params(149)));
g1(30,134)=(-(params(148)+params(150)));
g1(30,207)=(-params(151));
g1(30,211)=(-1);
g1(31,30)=(-1);
g1(31,31)=1;
g1(31,130)=(-1);
g1(32,32)=1-params(153);
g1(32,35)=(-params(157));
g1(32,40)=(-params(158));
g1(32,44)=(-params(156));
g1(32,51)=(-(params(161)+params(159)+params(160)));
g1(32,136)=(-params(155));
g1(32,137)=(-params(154));
g1(33,32)=(-1);
g1(33,33)=1;
g1(33,136)=(-1);
g1(33,137)=(-1);
g1(34,27)=(-params(166));
g1(34,33)=(-params(165));
g1(34,34)=1;
g1(34,52)=(-params(167));
g1(34,53)=(-params(168));
g1(34,134)=(-params(170));
g1(34,202)=(-params(171));
g1(35,35)=1;
g1(35,36)=(-1);
g1(35,51)=(-params(173));
g1(36,36)=1-params(174);
g1(36,66)=(-(params(179)+params(178)+params(176)+params(177)));
g1(36,213)=(-params(175));
g1(37,37)=1-params(180);
g1(37,40)=(-(params(183)+params(184)));
g1(37,44)=(-(params(185)+params(186)));
g1(37,214)=(-params(181));
g1(38,34)=(-params(192));
g1(38,38)=1-params(188);
g1(38,39)=(-params(197));
g1(38,44)=(-(params(195)+params(196)));
g1(38,114)=(-(params(193)+params(194)));
g1(38,214)=(-params(191));
g1(39,39)=1;
g1(39,212)=(-1);
g1(40,43)=(-params(201));
g1(41,41)=1-(params(205)+params(204)+params(202)+params(203));
g1(41,51)=(-params(207));
g1(42,41)=(-params(209));
g1(42,42)=1-params(208);
g1(43,41)=(-params(210));
g1(43,43)=1-params(211);
g1(44,40)=(-1);
g1(44,44)=1;
g1(44,45)=(-1);
g1(44,109)=1;
g1(45,37)=(-params(217));
g1(45,38)=(-params(218));
g1(45,42)=(-params(216));
g1(45,45)=1;
g1(45,46)=(-1);
g1(45,47)=(-params(215));
g1(45,166)=(-params(213));
g1(45,212)=(-params(219));
g1(45,254)=(-params(214));
g1(46,46)=1-(params(222)+params(220));
g1(47,47)=1-(params(224)+params(226));
g1(47,48)=(-(params(227)+params(225)));
g1(47,51)=(-(params(229)+params(228)));
g1(48,41)=(-(params(235)+params(234)+params(232)+params(233)));
g1(48,48)=1;
g1(48,49)=(-params(231));
g1(48,51)=(-params(237));
g1(49,41)=(-(params(243)+params(242)+params(240)+params(241)));
g1(49,48)=(-params(239));
g1(49,49)=1-params(238);
g1(50,50)=1;
g1(50,237)=(-1);
g1(51,41)=(-(params(256)+params(254)+params(252)+params(251)+params(249)+params(250)));
g1(51,48)=(-(params(255)+params(248)+params(253)));
g1(51,49)=(-params(257));
g1(51,51)=1-(params(246)+params(247));
g1(51,207)=(-params(258));
g1(52,37)=(-1);
g1(52,52)=1;
g1(52,164)=(-params(260));
g1(53,38)=(-1);
g1(53,53)=1;
g1(53,165)=(-params(262));
g1(54,54)=1-params(264);
g1(54,58)=(-params(265));
g1(54,60)=(-params(266));
g1(55,54)=(-1);
g1(55,55)=1;
g1(56,56)=1-params(268);
g1(57,87)=(-params(269));
g1(57,90)=(-params(270));
g1(58,13)=(-params(274));
g1(58,16)=(-params(273));
g1(58,58)=1;
g1(58,59)=(-params(276));
g1(58,61)=(-params(275));
g1(59,55)=(-1);
g1(59,59)=1;
g1(59,172)=(-params(278));
g1(60,56)=(-params(282));
g1(60,60)=1;
g1(60,183)=(-params(281));
g1(60,184)=(-params(280));
g1(60,212)=(-params(283));
g1(61,61)=1;
g1(61,62)=(-1);
g1(61,114)=(-1);
g1(62,62)=1;
g1(62,63)=(-params(286));
g1(62,213)=(-1);
g1(63,63)=1-params(293);
g1(63,207)=(-(params(294)+params(292)+params(291)+params(290)+params(288)+params(289)));
g1(63,275)=(-(.0014*(1-params(293))));
g1(64,30)=(-(params(296)+params(297)));
g1(64,64)=1-params(295);
g1(65,65)=1;
g1(65,211)=(-(params(298)+params(299)));
g1(66,66)=1;
g1(66,77)=(-1);
g1(66,78)=(-1);
g1(67,67)=1-params(300);
g1(67,102)=(-(params(301)+params(304)));
g1(67,134)=(-(params(303)+params(306)));
g1(67,136)=(-(params(302)+params(305)));
g1(68,68)=1-params(307);
g1(69,69)=1;
g1(69,134)=(-(params(312)+params(315)));
g1(69,183)=(-(params(311)+params(314)));
g1(69,237)=(-(params(310)+params(313)));
g1(70,70)=1;
g1(70,82)=(-(params(316)+params(317)));
g1(70,85)=(-(params(318)+params(319)));
g1(71,71)=1;
g1(71,74)=(-params(320));
g1(72,71)=1;
g1(72,72)=1;
g1(72,75)=1;
g1(72,78)=(-1);
g1(73,73)=1-params(323);
g1(74,74)=1-params(324);
g1(75,75)=1-params(325);
g1(76,76)=1-params(326);
g1(77,77)=1-params(328);
g1(78,70)=(-params(333));
g1(78,71)=(-params(329));
g1(78,73)=(-1);
g1(78,75)=(-params(330));
g1(78,78)=1;
g1(79,79)=1;
g1(80,80)=1-params(335);
g1(80,82)=(-params(338));
g1(80,127)=(-params(337));
g1(80,136)=(-params(340));
g1(80,212)=(-(1+params(336)));
g1(81,81)=1;
g1(81,83)=(-1);
g1(82,4)=(-params(346));
g1(82,82)=1-params(348);
g1(82,102)=(-params(344));
g1(82,127)=(-params(345));
g1(83,7)=(-params(350));
g1(83,83)=1-params(352);
g1(84,24)=(-params(354));
g1(84,84)=1-params(356);
g1(85,85)=1-(params(357)+params(360));
g1(85,143)=(-params(358));
g1(85,204)=(-(params(362)+params(359)+params(361)));
g1(86,70)=(-params(363));
g1(87,15)=(-params(364));
g1(87,21)=(-params(365));
g1(87,57)=(-1);
g1(87,87)=1;
g1(87,95)=1;
g1(88,87)=(-params(368));
g1(88,88)=1;
g1(88,89)=(-params(369));
g1(88,90)=(-params(367));
g1(89,89)=1-params(371);
g1(89,144)=(-(1+params(373)));
g1(89,207)=(-params(374));
g1(90,90)=1;
g1(90,94)=(-1);
g1(90,98)=1;
g1(91,91)=1;
g1(91,97)=(-params(377));
g1(91,144)=(-1);
g1(92,92)=1;
g1(92,93)=(-params(381));
g1(93,74)=(-1);
g1(93,93)=1-params(382);
g1(93,96)=(-params(384));
g1(93,97)=(-params(385));
g1(93,145)=(-params(383));
g1(94,72)=(-(params(392)+params(394)));
g1(94,94)=1-(params(386)+params(388));
g1(94,146)=(-params(387));
g1(94,201)=(-(params(393)+params(391)+params(390)));
g1(94,252)=(-params(389));
g1(95,91)=1;
g1(95,95)=1;
g1(95,147)=1;
g1(95,202)=(-1);
g1(96,88)=(-params(395));
g1(96,92)=(-params(396));
g1(96,96)=1;
g1(97,97)=1-params(397);
g1(98,71)=(-params(403));
g1(98,75)=(-params(399));
g1(98,94)=(-(params(401)+params(402)));
g1(98,98)=1-params(398);
g1(98,147)=(-params(400));
g1(101,73)=(-params(404));
g1(102,2)=(-1);
g1(102,126)=(-params(405));
g1(103,103)=1-(params(406)+params(407));
g1(104,111)=(-(params(409)+params(411)));
g1(104,130)=(-(params(408)+params(410)));
g1(105,105)=1-(params(416)+params(415)+params(414)+params(412));
g1(106,106)=1-(params(418)+params(419));
g1(107,120)=(-params(420));
g1(108,103)=(-(params(421)+params(422)));
g1(108,106)=(-(params(423)+params(424)));
g1(109,107)=(-1);
g1(109,109)=1;
g1(110,110)=1;
g1(110,111)=(-1);
g1(111,122)=(-params(429));
g1(112,2)=(-1);
g1(112,126)=(-params(430));
g1(113,2)=(-1);
g1(113,126)=(-params(431));
g1(114,114)=1;
g1(114,211)=1;
g1(114,212)=(-1);
g1(115,95)=1;
g1(115,115)=1;
g1(115,128)=(-1);
g1(116,95)=1;
g1(116,116)=1;
g1(116,128)=(-1);
g1(117,106)=(-params(437));
g1(117,107)=(-params(438));
g1(117,117)=1-(params(435)+params(436));
g1(118,2)=(-1);
g1(118,126)=(-params(439));
g1(119,107)=(-(params(440)+params(441)));
g1(119,119)=1;
g1(120,104)=(-(params(442)+params(443)));
g1(120,105)=(-(params(444)+params(445)));
g1(120,120)=1;
g1(120,122)=(-1);
g1(121,111)=(-(params(446)+params(447)));
g1(121,121)=1;
g1(122,107)=(-params(452));
g1(122,122)=1-params(448);
g1(122,133)=(-params(450));
g1(122,148)=(-params(451));
g1(122,259)=(-params(449));
g1(123,72)=(-params(459));
g1(123,76)=(-params(460));
g1(123,96)=(-params(461));
g1(123,97)=(-params(462));
g1(123,123)=1-(params(456)+params(455)+params(453)+params(454));
g1(123,128)=(-params(464));
g1(123,133)=(-params(458));
g1(123,149)=(-params(463));
g1(123,260)=(-params(457));
g1(124,114)=(-(params(465)+params(466)));
g1(124,124)=1;
g1(125,123)=(-1);
g1(125,125)=1;
g1(126,45)=(-(params(475)+params(474)));
g1(126,76)=(-(params(473)+params(467)+params(470)));
g1(126,120)=(-(params(472)+1+params(469)));
g1(126,126)=1-(params(468)+params(471));
g1(126,135)=(-params(477));
g1(126,152)=(-params(476));
g1(127,102)=(-params(479));
g1(127,127)=1;
g1(128,125)=(-params(480));
g1(129,40)=(-(params(483)+params(486)));
g1(129,44)=(-(params(484)+params(487)));
g1(129,129)=1-params(481);
g1(129,134)=(-(params(485)+params(488)));
g1(129,150)=(-params(482));
g1(130,130)=1;
g1(130,131)=(-1);
g1(131,131)=1;
g1(131,132)=(-1);
g1(131,134)=(-1);
g1(132,132)=1-(params(494)+params(492));
g1(133,122)=(-params(497));
g1(133,133)=1-params(496);
g1(134,114)=(-1);
g1(134,134)=1;
g1(135,126)=(-params(501));
g1(136,107)=(-(params(502)+params(503)));
g1(136,135)=(-(params(504)+params(505)));
g1(137,2)=(-1);
g1(137,126)=(-params(506));
g1(138,67)=(-params(510));
g1(138,78)=(-params(509));
g1(138,138)=1;
g1(138,194)=(-params(508));
g1(138,199)=(-1);
g1(139,139)=1;
g1(139,195)=(-params(515));
g1(139,197)=(-params(516));
g1(139,264)=(-params(512));
g1(139,265)=(-params(514));
g1(139,268)=(-params(513));
g1(140,66)=(-(params(526)+params(525)+params(524)+params(523)+params(522)+params(521)+params(519)+params(520)));
g1(140,103)=(-params(528));
g1(140,139)=(-1);
g1(140,140)=1;
g1(140,159)=(-params(529));
g1(141,108)=1;
g1(141,139)=(-1);
g1(141,141)=1;
g1(142,66)=(-(params(547)+params(546)+params(545)+params(544)+params(543)+params(542)+params(541)+params(540)+params(539)+params(538)+params(537)+params(536)+params(535)+params(534)+params(532)+params(533)));
g1(142,107)=(-1);
g1(142,118)=1;
g1(142,136)=1;
g1(142,139)=(-1);
g1(142,142)=1;
g1(142,160)=(-params(548));
g1(144,144)=1;
g1(144,145)=(-params(551));
g1(145,74)=(-1);
g1(146,95)=1;
g1(146,146)=1;
g1(146,201)=(-1);
g1(147,75)=(-params(553));
g1(148,148)=1;
g1(148,153)=(-1);
g1(148,191)=(-1);
g1(149,128)=(-1);
g1(149,134)=(-1);
g1(149,149)=1;
g1(149,151)=1;
g1(151,95)=1;
g1(151,128)=(-1);
g1(151,151)=1;
g1(152,107)=(-params(557));
g1(152,135)=(-1);
g1(152,136)=(-params(555));
g1(152,148)=(-params(556));
g1(152,152)=1;
g1(152,153)=(-params(554));
g1(153,134)=(-params(559));
g1(153,136)=(-1);
g1(153,151)=(-params(558));
g1(153,153)=1;
g1(154,154)=1;
g1(154,183)=(-params(562));
g1(154,237)=(-params(561));
g1(155,155)=1;
g1(155,156)=(-1);
g1(155,166)=(-1);
g1(156,156)=1-params(564);
g1(156,249)=(-(params(563)+params(565)));
g1(157,155)=(-params(568));
g1(157,157)=1;
g1(157,162)=(-params(571));
g1(157,166)=(-params(569));
g1(157,170)=(-params(567));
g1(157,256)=(-params(570));
g1(158,158)=1-params(574);
g1(158,170)=(-(params(575)+params(576)));
g1(159,158)=(-1);
g1(159,159)=1;
g1(159,255)=1;
g1(160,160)=1;
g1(160,174)=(-params(580));
g1(160,253)=1;
g1(161,121)=(-(1+params(584)));
g1(161,161)=1-params(583);
g1(161,207)=(-params(582));
g1(162,162)=1;
g1(162,163)=(-1);
g1(162,168)=(-1);
g1(162,257)=1;
g1(163,156)=(-(params(585)+params(587)));
g1(163,163)=1-params(586);
g1(164,164)=1-(params(588)+params(590));
g1(164,165)=(-(params(591)+params(589)));
g1(165,163)=(-(params(599)+params(595)));
g1(165,165)=1-(params(592)+params(596));
g1(165,166)=(-(params(597)+params(593)));
g1(165,179)=(-(params(598)+params(594)));
g1(166,166)=1;
g1(166,167)=(-1);
g1(166,261)=(-1);
g1(167,167)=1-params(602);
g1(167,249)=(-(params(600)+params(603)));
g1(168,168)=1;
g1(168,169)=(-1);
g1(168,262)=(-1);
g1(169,169)=1-params(607);
g1(169,250)=(-(params(605)+params(608)));
g1(170,170)=1;
g1(170,171)=(-1);
g1(170,263)=(-1);
g1(171,171)=1-params(611);
g1(171,248)=(-(params(610)+params(612)));
g1(172,55)=(-(params(616)+params(615)));
g1(172,172)=1-params(613);
g1(172,173)=(-params(614));
g1(173,166)=(-params(619));
g1(173,168)=(-params(620));
g1(173,170)=(-params(618));
g1(173,173)=1;
g1(173,179)=(-params(617));
g1(174,166)=(-(params(622)+params(623)));
g1(174,174)=1-params(621);
g1(175,122)=(-(params(628)+params(627)+params(625)+params(626)));
g1(175,175)=1;
g1(175,272)=(-1);
g1(176,175)=(-params(630));
g1(176,176)=1-params(629);
g1(177,177)=1;
g1(177,217)=(-params(632));
g1(177,230)=(-params(631));
g1(179,179)=1-(params(633)+params(634));
g1(179,272)=(-(params(636)+params(635)));
g1(180,67)=(-params(640));
g1(180,127)=(-params(645));
g1(180,134)=1;
g1(180,136)=(-1);
g1(180,157)=(-params(638));
g1(180,180)=1;
g1(181,68)=(-params(647));
g1(181,134)=(-params(652));
g1(181,136)=(-(params(648)+params(650)));
g1(181,157)=(-params(646));
g1(181,181)=1;
g1(182,133)=(-1);
g1(182,176)=(-1);
g1(182,182)=1;
g1(183,183)=1;
g1(183,185)=(-params(654));
g1(183,237)=(-1);
g1(184,61)=(-params(658));
g1(184,184)=1;
g1(184,186)=(-params(656));
g1(184,242)=(-params(657));
g1(185,185)=1-params(660);
g1(185,207)=(-(params(662)+params(659)));
g1(186,186)=1-(params(663)+params(665));
g1(186,187)=(-(params(666)+1+params(664)));
g1(186,207)=(-params(667));
g1(187,187)=1;
g1(187,189)=(-1);
g1(188,54)=(-params(668));
g1(188,55)=(-params(671));
g1(188,187)=(-1);
g1(188,188)=1;
g1(188,212)=(-(params(672)+params(669)));
g1(189,58)=(-params(675));
g1(189,60)=(-params(674));
g1(189,187)=(-1);
g1(189,189)=1;
g1(189,207)=(-params(678));
g1(189,212)=(-params(676));
g1(190,184)=(-params(679));
g1(190,190)=1;
g1(190,222)=(-params(680));
g1(190,228)=(-params(681));
g1(191,76)=(-1);
g1(192,77)=(-params(682));
g1(193,193)=1-params(683);
g1(194,102)=(-params(686));
g1(194,127)=(-params(685));
g1(194,180)=(-params(687));
g1(194,194)=1;
g1(195,107)=1;
g1(195,195)=1;
g1(195,196)=(-1);
g1(196,7)=(-params(699));
g1(196,10)=(-params(695));
g1(196,81)=(-params(700));
g1(196,103)=(-params(697));
g1(196,107)=(-params(698));
g1(196,117)=(-(params(692)+params(693)));
g1(196,161)=(-params(691));
g1(196,196)=1-params(690);
g1(196,217)=(-params(694));
g1(196,220)=(-params(696));
g1(197,107)=1;
g1(197,197)=1;
g1(197,198)=(-1);
g1(198,162)=(-params(704));
g1(198,183)=(-params(703));
g1(198,198)=1;
g1(198,237)=(-params(702));
g1(198,243)=(-params(705));
g1(199,134)=(-params(708));
g1(199,199)=1;
g1(199,200)=(-params(707));
g1(200,114)=(-params(714));
g1(200,134)=(-params(710));
g1(200,200)=1;
g1(200,201)=(-params(711));
g1(200,210)=(-params(713));
g1(200,212)=(-params(712));
g1(201,201)=1;
g1(201,202)=(-1);
g1(201,207)=(-params(715));
g1(202,86)=(-params(719));
g1(202,91)=(-params(716));
g1(202,101)=(-1);
g1(202,147)=(-params(717));
g1(202,202)=1;
g1(202,203)=(-1);
g1(203,203)=1-params(720);
g1(204,4)=(-(params(725)+params(726)));
g1(204,9)=(-(params(721)+params(722)));
g1(204,12)=(-(params(727)+params(728)));
g1(204,15)=(-(params(729)+params(730)));
g1(204,18)=(-(params(731)+params(732)));
g1(204,21)=(-(params(733)+params(734)));
g1(204,24)=(-(params(723)+params(724)));
g1(204,28)=(-(params(737)+params(738)));
g1(204,30)=(-(params(739)+params(740)));
g1(204,32)=(-(params(735)+params(736)));
g1(205,85)=(-(params(745)+params(746)));
g1(205,136)=(-params(744));
g1(205,205)=1;
g1(205,212)=(-params(742));
g1(206,201)=(-params(747));
g1(206,202)=(-params(748));
g1(206,206)=1;
g1(207,207)=1;
g1(207,210)=(-params(749));
g1(207,213)=(-params(750));
g1(208,99)=(-1);
g1(208,208)=1;
g1(208,210)=(-1);
g1(209,114)=(-1);
g1(209,208)=(-1);
g1(209,209)=1;
g1(210,100)=1;
g1(210,210)=1;
g1(210,211)=(-1);
g1(211,85)=(-(params(758)+params(756)+params(757)));
g1(211,204)=(-(params(754)+params(755)));
g1(212,16)=(-params(761));
g1(212,22)=(-params(762));
g1(212,27)=(-params(763));
g1(212,85)=(-(params(766)+params(767)));
g1(212,136)=(-params(765));
g1(212,212)=1;
g1(212,216)=(-params(760));
g1(213,192)=(-1);
g1(213,202)=(-1);
g1(213,213)=1;
g1(214,114)=(-1);
g1(214,213)=(-1);
g1(214,214)=1;
g1(215,4)=(-(params(773)+params(774)));
g1(215,9)=(-(params(769)+params(770)));
g1(215,12)=(-(params(775)+params(776)));
g1(215,18)=(-(params(777)+params(778)));
g1(215,24)=(-(params(771)+params(772)));
g1(215,32)=(-(params(779)+params(780)));
g1(216,136)=(-1);
g1(216,215)=(-1);
g1(216,216)=1;
g1(217,184)=(-params(785));
g1(217,217)=1;
g1(217,242)=(-params(784));
g1(218,218)=1;
g1(218,221)=(-params(787));
g1(218,223)=(-params(789));
g1(218,231)=(-params(788));
g1(219,219)=1;
g1(219,229)=(-params(790));
g1(219,267)=(-params(791));
g1(220,212)=(-1);
g1(220,220)=1;
g1(221,107)=1;
g1(221,190)=(-params(795));
g1(221,221)=1;
g1(221,222)=(-1);
g1(222,222)=1;
g1(222,239)=(-1);
g1(223,107)=1;
g1(223,190)=(-params(799));
g1(223,223)=1;
g1(223,226)=(-params(801));
g1(223,228)=(-params(800));
g1(224,83)=(-1);
g1(224,224)=1;
g1(225,225)=1;
g1(225,227)=(-params(802));
g1(225,266)=(-params(803));
g1(226,55)=(-params(813));
g1(226,103)=(-params(806));
g1(226,107)=(-params(805));
g1(226,183)=(-params(810));
g1(226,220)=(-params(808));
g1(226,224)=(-params(807));
g1(226,226)=1;
g1(226,237)=(-params(809));
g1(226,238)=(-params(811));
g1(226,253)=(-params(812));
g1(227,218)=1;
g1(227,223)=(-1);
g1(227,227)=1;
g1(228,59)=(-params(818));
g1(228,220)=(-params(820));
g1(228,228)=1;
g1(228,238)=(-params(819));
g1(228,241)=(-params(817));
g1(229,211)=(-params(823));
g1(229,218)=(-params(822));
g1(229,229)=1;
g1(230,10)=(-params(829));
g1(230,184)=(-params(828));
g1(230,214)=(-params(832));
g1(230,220)=(-params(830));
g1(230,222)=(-params(825));
g1(230,228)=(-params(827));
g1(230,230)=1;
g1(230,233)=(-params(826));
g1(231,107)=1;
g1(231,231)=1;
g1(231,233)=(-1);
g1(232,232)=1;
g1(232,234)=(-params(834));
g1(232,269)=(-params(835));
g1(233,61)=(-1);
g1(233,233)=1;
g1(234,218)=1;
g1(234,231)=(-1);
g1(234,234)=1;
g1(235,82)=(-(params(840)+params(841)));
g1(235,134)=(-1);
g1(235,180)=(-1);
g1(235,235)=1;
g1(236,85)=(-(params(844)+params(845)));
g1(236,134)=(-1);
g1(236,181)=(-params(843));
g1(236,236)=1;
g1(237,193)=(-params(850));
g1(237,212)=(-params(851));
g1(237,237)=1;
g1(237,239)=(-params(848));
g1(237,240)=(-params(847));
g1(237,241)=(-params(849));
g1(238,134)=(-(params(859)+1+params(855)));
g1(238,154)=(-params(856));
g1(238,238)=1-(params(857)+params(853));
g1(238,270)=(-1);
g1(239,15)=(-params(865));
g1(239,21)=(-params(867));
g1(239,94)=(-params(863));
g1(239,115)=(-params(864));
g1(239,116)=(-params(866));
g1(239,128)=(-params(862));
g1(239,239)=1;
g1(240,52)=(-params(871));
g1(240,53)=(-params(872));
g1(240,80)=(-params(873));
g1(240,209)=(-params(870));
g1(240,240)=1;
g1(241,155)=(-(params(877)+params(878)));
g1(241,212)=(-(1+params(876)));
g1(241,241)=1-params(875);
g1(242,222)=(-params(881));
g1(242,228)=(-params(883));
g1(242,233)=(-params(882));
g1(242,242)=1;
g1(243,69)=(-params(884));
g1(243,243)=1-params(885);
g1(244,67)=(-params(906));
g1(244,78)=(-params(905));
g1(244,120)=(-(params(889)+params(888)+params(886)+params(887)));
g1(244,133)=(-params(895));
g1(244,138)=(-(params(904)+params(903)+params(902)+params(900)+params(901)));
g1(244,182)=(-params(894));
g1(244,206)=(-(params(899)+params(898)+params(896)+params(897)));
g1(244,244)=1;
g1(244,272)=(-(params(893)+params(892)+params(890)+params(891)));
g1(245,66)=(-params(933));
g1(245,120)=(-(params(910)+params(909)+params(907)+params(908)));
g1(245,133)=(-params(919));
g1(245,140)=(-(params(939)+params(938)+params(937)+params(936)+params(935)));
g1(245,182)=(-params(920));
g1(245,207)=(-(params(918)+params(917)+params(915)+params(916)));
g1(245,219)=(-(params(924)+params(923)+params(921)+params(922)));
g1(245,225)=(-(params(932)+params(931)+params(929)+params(930)));
g1(245,232)=(-(params(928)+params(927)+params(925)+params(926)));
g1(245,245)=1;
g1(245,272)=(-(params(914)+params(913)+params(911)+params(912)));
g1(246,66)=(-params(966));
g1(246,120)=(-(params(943)+params(942)+params(940)+params(941)));
g1(246,133)=(-params(952));
g1(246,141)=(-(params(971)+params(970)+params(969)+params(967)+params(968)));
g1(246,182)=(-params(953));
g1(246,207)=(-(params(951)+params(950)+params(948)+params(949)));
g1(246,219)=(-(params(957)+params(956)+params(954)+params(955)));
g1(246,225)=(-(params(965)+params(964)+params(962)+params(963)));
g1(246,232)=(-(params(961)+params(960)+params(958)+params(959)));
g1(246,246)=1;
g1(246,272)=(-(params(947)+params(946)+params(944)+params(945)));
g1(247,66)=(-params(998));
g1(247,120)=(-(params(975)+params(974)+params(972)+params(973)));
g1(247,133)=(-params(984));
g1(247,142)=(-(params(1003)+params(1002)+params(1001)+params(999)+params(1000)));
g1(247,182)=(-params(985));
g1(247,207)=(-(params(983)+params(982)+params(980)+params(981)));
g1(247,219)=(-(params(989)+params(988)+params(986)+params(987)));
g1(247,225)=(-(params(997)+params(996)+params(994)+params(995)));
g1(247,232)=(-(params(993)+params(992)+params(990)+params(991)));
g1(247,247)=1;
g1(247,272)=(-(params(979)+params(978)+params(976)+params(977)));
g1(248,206)=(-params(1004));
g1(248,248)=1-params(1005);
g1(249,206)=(-params(1006));
g1(249,249)=1-params(1007);
g1(250,206)=(-params(1008));
g1(250,250)=1-params(1009);
g1(251,120)=(-(params(1013)+params(1012)+params(1010)+params(1011)));
g1(251,133)=(-params(1022));
g1(251,182)=(-params(1023));
g1(251,207)=(-(params(1021)+params(1020)+params(1018)+params(1019)));
g1(251,251)=1;
g1(251,272)=(-(params(1017)+params(1016)+params(1014)+params(1015)));
g1(252,71)=(-params(1042));
g1(252,75)=(-params(1043));
g1(252,95)=(-(params(1040)+params(1041)));
g1(252,120)=(-(params(1027)+params(1026)+params(1024)+params(1025)));
g1(252,133)=(-params(1033));
g1(252,182)=(-params(1032));
g1(252,201)=(-(params(1038)+params(1039)));
g1(252,206)=(-(params(1037)+params(1036)+params(1034)+params(1035)));
g1(252,252)=1;
g1(252,272)=(-(params(1031)+params(1030)+params(1028)+params(1029)));
g1(253,120)=(-params(1044));
g1(253,253)=1-params(1045);
g1(254,120)=(-params(1046));
g1(254,254)=1-params(1047);
g1(255,120)=(-(params(1051)+params(1050)+params(1048)+params(1049)));
g1(255,133)=(-params(1057));
g1(255,182)=(-params(1056));
g1(255,206)=(-(params(1061)+params(1060)+params(1058)+params(1059)));
g1(255,255)=1;
g1(255,272)=(-(params(1055)+params(1054)+params(1052)+params(1053)));
g1(256,134)=(-(params(1062)+params(1063)));
g1(256,256)=1-params(1064);
g1(257,120)=(-params(1065));
g1(257,257)=1-params(1066);
g1(258,119)=(-1);
g1(258,258)=1;
g1(259,122)=(-1);
g1(259,259)=1;
g1(260,123)=(-1);
g1(260,260)=1;
g1(261,261)=1-params(1068);
g1(261,272)=(-params(1067));
g1(262,262)=1-params(1070);
g1(262,272)=(-params(1069));
g1(263,263)=1-params(1072);
g1(263,272)=(-params(1071));
g1(264,120)=(-(params(1076)+params(1075)+params(1073)+params(1074)));
g1(264,133)=(-params(1085));
g1(264,182)=(-params(1086));
g1(264,207)=(-(params(1084)+params(1083)+params(1082)+params(1081)));
g1(264,213)=(-1);
g1(264,219)=(-(params(1090)+params(1089)+params(1088)+params(1087)));
g1(264,264)=1;
g1(264,267)=(-1);
g1(264,272)=(-(params(1080)+params(1079)+params(1078)+params(1077)));
g1(265,120)=(-(params(1094)+params(1093)+params(1091)+params(1092)));
g1(265,133)=(-params(1103));
g1(265,182)=(-params(1104));
g1(265,207)=(-(params(1102)+params(1101)+params(1100)+params(1099)));
g1(265,213)=(-1);
g1(265,219)=(-(params(1108)+params(1107)+params(1106)+params(1105)));
g1(265,225)=(-(params(1112)+params(1111)+params(1110)+params(1109)));
g1(265,265)=1;
g1(265,266)=(-1);
g1(265,267)=(-1);
g1(265,272)=(-(params(1098)+params(1097)+params(1096)+params(1095)));
g1(266,225)=(-params(1113));
g1(267,219)=(-params(1114));
g1(268,120)=(-(params(1118)+params(1117)+params(1115)+params(1116)));
g1(268,133)=(-params(1127));
g1(268,182)=(-params(1128));
g1(268,207)=(-(params(1126)+params(1125)+params(1124)+params(1123)));
g1(268,213)=(-1);
g1(268,219)=(-(params(1132)+params(1131)+params(1130)+params(1129)));
g1(268,232)=(-(params(1136)+params(1135)+params(1134)+params(1133)));
g1(268,267)=(-1);
g1(268,268)=1;
g1(268,269)=(-1);
g1(268,272)=(-(params(1122)+params(1121)+params(1120)+params(1119)));
g1(269,232)=(-params(1137));
g1(270,66)=(-params(1162));
g1(270,120)=(-(params(1141)+params(1140)+params(1138)+params(1139)));
g1(270,133)=(-params(1147));
g1(270,134)=(-(params(1161)+params(1159)+params(1157)+params(1153)+params(1155)));
g1(270,154)=(-(params(1160)+params(1158)+params(1156)+params(1152)+params(1154)));
g1(270,182)=(-params(1146));
g1(270,206)=(-(params(1151)+params(1150)+params(1148)+params(1149)));
g1(270,270)=1;
g1(270,272)=(-(params(1145)+params(1144)+params(1142)+params(1143)));
g1(271,96)=(-1);
g1(271,97)=1;
g1(271,271)=1;
g1(272,272)=1;
g1(272,273)=(-1);
g1(272,276)=(-1);
g1(273,121)=(-1.50);
g1(273,178)=(-1);
g1(273,207)=(-1);
g1(273,273)=1;
g1(274,274)=0.03000000000000003;
g1(275,274)=(-1);
g1(275,275)=0.09999999999999998;
g1(276,276)=1;
g1(276,277)=(-1);
g1(277,277)=1;
g1(277,278)=(-1);
g1(278,278)=1;
g1(278,279)=(-1);
g1(279,279)=1;
g1(279,280)=(-1);
g1(280,280)=1;
g1(280,281)=(-1);
g1(281,281)=1;
g1(281,282)=(-1);
g1(282,282)=1;
g1(282,283)=(-1);
g1(283,283)=1;
g1(283,284)=(-1);
g1(284,284)=1;
g1(284,285)=(-1);
g1(285,285)=1;
g1(285,286)=(-1);
g1(286,286)=1;
g1(286,287)=(-1);
g1(287,287)=1;
g1(287,288)=(-1);
g1(288,288)=1;
g1(288,289)=(-1);
g1(289,289)=1;
g1(289,290)=(-1);
g1(290,290)=1;
g1(290,291)=(-1);
g1(291,291)=1;
g1(291,292)=(-1);
g1(292,292)=1;
g1(292,293)=(-1);
g1(293,293)=1;
g1(293,294)=(-1);
g1(294,294)=1;
g1(294,295)=(-1);
g1(295,295)=1;
g1(295,296)=(-1);
g1(296,296)=1;
g1(296,297)=(-1);
g1(297,297)=1;
g1(297,298)=(-1);
g1(298,298)=1;
g1(298,299)=(-1);
g1(299,299)=1;
g1(299,300)=(-1);
g1(300,300)=1;
g1(300,301)=(-1);
g1(301,301)=1;
g1(301,302)=(-1);
g1(302,302)=1;
g1(302,303)=(-1);
g1(303,303)=1;
g1(303,304)=(-1);
g1(304,304)=1;
g1(304,305)=(-1);
g1(305,305)=1;
g1(305,306)=(-1);
g1(306,306)=1;
g1(306,307)=(-1);
g1(307,307)=1;
g1(307,308)=(-1);
g1(308,308)=1;
g1(308,309)=(-1);
g1(309,309)=1;
g1(309,310)=(-1);
g1(310,310)=1;
g1(310,311)=(-1);
g1(311,311)=1;
g1(311,312)=(-1);
g1(312,312)=1;
g1(312,313)=(-1);
g1(313,313)=1;
g1(313,314)=(-1);
g1(314,314)=1;
g1(314,315)=(-1);
g1(315,315)=1;
g1(315,316)=(-1);
g1(316,316)=1;
g1(316,317)=(-1);
g1(317,317)=1;
g1(317,318)=(-1);
g1(318,318)=1;
g1(318,319)=(-1);
g1(319,319)=1;
g1(319,320)=(-1);
g1(320,320)=1;
g1(320,321)=(-1);
g1(321,321)=1;
g1(321,322)=(-1);
g1(322,322)=1;
g1(322,323)=(-1);
g1(323,323)=1;
g1(323,324)=(-1);
g1(324,324)=1;
g1(324,325)=(-1);
g1(325,325)=1;
g1(325,326)=(-1);
g1(326,326)=1;
g1(326,327)=(-1);
g1(327,327)=1;
g1(327,328)=(-1);
g1(328,328)=1;
g1(328,329)=(-1);
g1(329,329)=1;
g1(329,330)=(-1);
g1(330,330)=1;
g1(330,331)=(-1);
g1(331,331)=1;
g1(331,332)=(-1);
g1(332,332)=1;
g1(332,333)=(-1);
g1(333,333)=1;
g1(333,334)=(-1);
g1(334,334)=1;
g1(334,335)=(-1);
g1(335,335)=1;
g1(335,336)=(-1);
g1(336,336)=1;
g1(337,119)=(-1);
g1(337,337)=1;
g1(338,119)=(-1);
g1(338,338)=1;
g1(339,119)=(-1);
g1(339,339)=1;
g1(340,119)=(-1);
g1(340,340)=1;
g1(341,119)=(-1);
g1(341,341)=1;
g1(342,119)=(-1);
g1(342,342)=1;
g1(343,119)=(-1);
g1(343,343)=1;
g1(344,4)=(-1);
g1(344,344)=1;
g1(345,4)=(-1);
g1(345,345)=1;
g1(346,199)=(-1);
g1(346,346)=1;
g1(347,7)=(-1);
g1(347,347)=1;
g1(348,84)=(-1);
g1(348,348)=1;
g1(349,8)=(-1);
g1(349,349)=1;
g1(350,84)=(-1);
g1(350,350)=1;
g1(351,11)=(-1);
g1(351,351)=1;
g1(352,12)=(-1);
g1(352,352)=1;
g1(353,12)=(-1);
g1(353,353)=1;
g1(354,66)=(-1);
g1(354,354)=1;
g1(355,66)=(-1);
g1(355,355)=1;
g1(356,15)=(-1);
g1(356,356)=1;
g1(357,15)=(-1);
g1(357,357)=1;
g1(358,18)=(-1);
g1(358,358)=1;
g1(359,18)=(-1);
g1(359,359)=1;
g1(360,21)=(-1);
g1(360,360)=1;
g1(361,21)=(-1);
g1(361,361)=1;
g1(362,24)=(-1);
g1(362,362)=1;
g1(363,24)=(-1);
g1(363,363)=1;
g1(364,174)=(-1);
g1(364,364)=1;
g1(365,207)=(-1);
g1(365,365)=1;
g1(366,51)=(-1);
g1(366,366)=1;
g1(367,41)=(-1);
g1(367,367)=1;
g1(368,41)=(-1);
g1(368,368)=1;
g1(369,41)=(-1);
g1(369,369)=1;
g1(370,46)=(-1);
g1(370,370)=1;
g1(371,47)=(-1);
g1(371,371)=1;
g1(372,48)=(-1);
g1(372,372)=1;
g1(373,41)=(-1);
g1(373,373)=1;
g1(374,48)=(-1);
g1(374,374)=1;
g1(375,41)=(-1);
g1(375,375)=1;
g1(376,207)=(-1);
g1(376,376)=1;
g1(377,207)=(-1);
g1(377,377)=1;
g1(378,207)=(-1);
g1(378,378)=1;
g1(379,85)=(-1);
g1(379,379)=1;
g1(380,204)=(-1);
g1(380,380)=1;
g1(381,204)=(-1);
g1(381,381)=1;
g1(382,94)=(-1);
g1(382,382)=1;
g1(383,201)=(-1);
g1(383,383)=1;
g1(384,72)=(-1);
g1(384,384)=1;
g1(385,103)=(-1);
g1(385,385)=1;
g1(386,105)=(-1);
g1(386,386)=1;
g1(387,105)=(-1);
g1(387,387)=1;
g1(388,105)=(-1);
g1(388,388)=1;
g1(389,106)=(-1);
g1(389,389)=1;
g1(390,117)=(-1);
g1(390,390)=1;
g1(391,107)=(-1);
g1(391,391)=1;
g1(392,107)=(-1);
g1(392,392)=1;
g1(393,107)=(-1);
g1(393,393)=1;
g1(394,111)=(-1);
g1(394,394)=1;
g1(395,111)=(-1);
g1(395,395)=1;
g1(396,111)=(-1);
g1(396,396)=1;
g1(397,123)=(-1);
g1(397,397)=1;
g1(398,123)=(-1);
g1(398,398)=1;
g1(399,123)=(-1);
g1(399,399)=1;
g1(400,126)=(-1);
g1(400,400)=1;
g1(401,120)=(-1);
g1(401,401)=1;
g1(402,76)=(-1);
g1(402,402)=1;
g1(403,132)=(-1);
g1(403,403)=1;
g1(404,66)=(-1);
g1(404,404)=1;
g1(405,66)=(-1);
g1(405,405)=1;
g1(406,66)=(-1);
g1(406,406)=1;
g1(407,66)=(-1);
g1(407,407)=1;
g1(408,66)=(-1);
g1(408,408)=1;
g1(409,66)=(-1);
g1(409,409)=1;
g1(410,66)=(-1);
g1(410,410)=1;
g1(411,66)=(-1);
g1(411,411)=1;
g1(412,66)=(-1);
g1(412,412)=1;
g1(413,66)=(-1);
g1(413,413)=1;
g1(414,66)=(-1);
g1(414,414)=1;
g1(415,66)=(-1);
g1(415,415)=1;
g1(416,164)=(-1);
g1(416,416)=1;
g1(417,165)=(-1);
g1(417,417)=1;
g1(418,55)=(-1);
g1(418,418)=1;
g1(419,122)=(-1);
g1(419,419)=1;
g1(420,122)=(-1);
g1(420,420)=1;
g1(421,179)=(-1);
g1(421,421)=1;
g1(422,186)=(-1);
g1(422,422)=1;
g1(423,187)=(-1);
g1(423,423)=1;
g1(424,212)=(-1);
g1(424,424)=1;
g1(425,238)=(-1);
g1(425,425)=1;
g1(426,134)=(-1);
g1(426,426)=1;
g1(427,120)=(-1);
g1(427,427)=1;
g1(428,120)=(-1);
g1(428,428)=1;
g1(429,272)=(-1);
g1(429,429)=1;
g1(430,272)=(-1);
g1(430,430)=1;
g1(431,272)=(-1);
g1(431,431)=1;
g1(432,206)=(-1);
g1(432,432)=1;
g1(433,206)=(-1);
g1(433,433)=1;
g1(434,206)=(-1);
g1(434,434)=1;
g1(435,138)=(-1);
g1(435,435)=1;
g1(436,138)=(-1);
g1(436,436)=1;
g1(437,138)=(-1);
g1(437,437)=1;
g1(438,138)=(-1);
g1(438,438)=1;
g1(439,219)=(-1);
g1(439,439)=1;
g1(440,219)=(-1);
g1(440,440)=1;
g1(441,219)=(-1);
g1(441,441)=1;
g1(442,232)=(-1);
g1(442,442)=1;
g1(443,232)=(-1);
g1(443,443)=1;
g1(444,232)=(-1);
g1(444,444)=1;
g1(445,225)=(-1);
g1(445,445)=1;
g1(446,225)=(-1);
g1(446,446)=1;
g1(447,225)=(-1);
g1(447,447)=1;
g1(448,140)=(-1);
g1(448,448)=1;
g1(449,140)=(-1);
g1(449,449)=1;
g1(450,140)=(-1);
g1(450,450)=1;
g1(451,140)=(-1);
g1(451,451)=1;
g1(452,141)=(-1);
g1(452,452)=1;
g1(453,141)=(-1);
g1(453,453)=1;
g1(454,141)=(-1);
g1(454,454)=1;
g1(455,141)=(-1);
g1(455,455)=1;
g1(456,142)=(-1);
g1(456,456)=1;
g1(457,142)=(-1);
g1(457,457)=1;
g1(458,142)=(-1);
g1(458,458)=1;
g1(459,142)=(-1);
g1(459,459)=1;
g1(460,95)=(-1);
g1(460,460)=1;
g1(461,154)=(-1);
g1(461,461)=1;
g1(462,154)=(-1);
g1(462,462)=1;
g1(463,134)=(-1);
g1(463,463)=1;
g1(464,154)=(-1);
g1(464,464)=1;
g1(465,134)=(-1);
g1(465,465)=1;
g1(466,154)=(-1);
g1(466,466)=1;
g1(467,134)=(-1);
g1(467,467)=1;
g1(468,468)=1;
g1(469,469)=1;
g1(470,470)=1;
g1(471,471)=1;
g1(472,472)=1;
g1(473,473)=1;
g1(474,474)=1;
g1(475,475)=1;
g1(476,476)=1;
g1(477,477)=1;
g1(478,478)=1;
g1(479,479)=1;
g1(480,480)=1;
g1(481,481)=1;
g1(482,482)=1;
g1(483,483)=1;
g1(484,484)=1;
g1(485,485)=1;
if ~isreal(g1)
    g1 = real(g1)+2*imag(g1);
end
end
