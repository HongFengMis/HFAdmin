/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50505
Source Host           : localhost:3306
Source Database       : hongfeng

Target Server Type    : MYSQL
Target Server Version : 50505
File Encoding         : 65001

Date: 2017-10-24 11:31:09
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for hf_admin
-- ----------------------------
DROP TABLE IF EXISTS `hf_admin`;
CREATE TABLE `hf_admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `tp` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of hf_admin
-- ----------------------------
INSERT INTO `hf_admin` VALUES ('1', 'admin', 'b9c14a62d16e0552fcc356b70433e9d4', '1');

-- ----------------------------
-- Table structure for hf_page1
-- ----------------------------
DROP TABLE IF EXISTS `hf_page1`;
CREATE TABLE `hf_page1` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pid` tinyint(3) DEFAULT NULL,
  `tit` varchar(50) DEFAULT NULL,
  `tit_en` varchar(50) DEFAULT NULL,
  `menu` varchar(50) DEFAULT NULL,
  `img` varchar(50) DEFAULT NULL,
  `pic` varchar(50) DEFAULT NULL,
  `pic_en` varchar(50) DEFAULT NULL,
  `seat` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=29 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of hf_page1
-- ----------------------------
INSERT INTO `hf_page1` VALUES ('6', '1', '银氧化锌', 'AgZnO', '20170701194319775.png', '20170701194333775.png', '20170701194355962.png', '20170628184657130.png', '2');
INSERT INTO `hf_page1` VALUES ('5', '1', '银氧化锡', 'AgSnO2', '20170701194926869.png', '20170701194932140.png', '20170628213056360.png', '20170628213055803.png', '1');
INSERT INTO `hf_page1` VALUES ('7', '1', '银钨', 'AgW', '20170628164258269.png', '20170628164302364.png', '20170628212045439.png', '20170628212015863.png', '3');
INSERT INTO `hf_page1` VALUES ('8', '1', '银碳化钨', 'AgWC', '20170628173641666.png', '20170628173647434.png', '20170628213706693.png', '20170628213706908.png', '4');
INSERT INTO `hf_page1` VALUES ('9', '1', '银碳化钨石墨', 'AgWCC', '20170628174613218.png', '20170628174617816.png', '20170628205838117.jpg', '20170628205841669.jpg', '5');
INSERT INTO `hf_page1` VALUES ('10', '1', '银石墨', 'AgC', '20170628214131539.png', '20170628214135233.png', '20170628214345922.jpg', '20170701200303772.jpg', '6');
INSERT INTO `hf_page1` VALUES ('11', '1', '银镍', 'AgNi', '20170628215441704.png', '20170628215446828.png', '20170628221355112.png', '20170628225341142.png', '7');
INSERT INTO `hf_page1` VALUES ('12', '1', '铜钨', 'CuW', '20170628222959354.png', '20170628223202826.png', '20170628222923421.jpg', '20170628222932670.jpg', '8');
INSERT INTO `hf_page1` VALUES ('13', '1', '新型AgW50/Cu电接触材料', 'AgW50/Cu', '20170628223943134.png', '20170628223947208.png', '20170628224021478.jpg', '20170628224024202.jpg', '9');
INSERT INTO `hf_page1` VALUES ('14', '2', '多层复合异形焊接型触点', 'composite button contact', '20170629134002750.png', '20170629134018632.png', '20170629134402602.jpg', '20170629134408597.jpg', '1');
INSERT INTO `hf_page1` VALUES ('15', '2', '铆钉', 'composite rivet contact', '20170629140212831.png', '20170629140217622.png', '20170629140311467.jpg', '20170629140316763.jpg', '2');
INSERT INTO `hf_page1` VALUES ('16', '2', '复合带材及冲件', 'clad strip & stamped parts', '20170629142337904.png', '20170629142343518.png', '20170629142440634.jpg', '20170629142444243.jpg', '3');
INSERT INTO `hf_page1` VALUES ('17', '2', '复铜钢', 'Cu/Fe/Cu clad materials', '20170629150436986.png', '20170629150439934.png', '20170629150531695.jpg', '20170629150557971.jpg', '4');
INSERT INTO `hf_page1` VALUES ('18', '2', '新型Cu/Ag/Cu双侧面复合薄带材', 'novel Cu/Ag/Cu clad material', '20170629151635442.png', '20170629151639818.png', '20170629151823478.jpg', '20170629151830404.jpg', '5');
INSERT INTO `hf_page1` VALUES ('19', '3', '铆合件', 'staked contact assemblies', '20170629153359700.png', '20170629153403969.png', '20170629153428553.jpg', '20170629153432606.jpg', '1');
INSERT INTO `hf_page1` VALUES ('20', '3', '焊接件', 'welded contact assemblies', '20170629160337859.png', '20170629160341442.png', '20170629160357178.jpg', '20170629160400878.jpg', '2');
INSERT INTO `hf_page1` VALUES ('21', '4', '焊膏', 'Solder paste', '20170629161954584.png', '20170629161958981.png', '20170629162008100.jpg', '20170629162011641.jpg', '1');
INSERT INTO `hf_page1` VALUES ('22', '4', '钎焊材料体系', 'Brazing material system', '20170629162628334.png', '20170629162632284.png', '20170629191240191.jpg', '20170629163015637.jpg', '2');
INSERT INTO `hf_page1` VALUES ('23', '5', '冲件', 'Stamping', '20170629163602815.png', '20170629163604932.png', '20170629163622363.jpg', '20170629163625987.jpg', '1');
INSERT INTO `hf_page1` VALUES ('24', '5', '带材', 'Strip', '20170629164125266.png', '20170629164128241.png', '20170629164143492.jpg', '20170629164146366.jpg', '2');
INSERT INTO `hf_page1` VALUES ('25', '6', '挤压棒料硬质合金', 'Hard Alloy used in Extrusion bar', '20170629164828550.png', '20170629164833306.png', '20170629165457236.jpg', '20170629165558552.jpg', '1');
INSERT INTO `hf_page1` VALUES ('26', '6', '切削用硬质合金', 'Cutting Carbide', '20170629170322631.png', '20170629170326468.png', '20170629170434441.jpg', '20170629170439361.jpg', '2');
INSERT INTO `hf_page1` VALUES ('27', '6', '模具、耐磨零件用硬质合金', 'Hard Alloy used in Mould and Wear part', '20170629171530853.png', '20170629171533678.png', '20170629171634210.jpg', '20170629171638638.jpg', '3');
INSERT INTO `hf_page1` VALUES ('28', '6', '地质矿山工具硬质合金', 'Hard Alloy used in Geological Mine Tools', '20170629172350132.png', '20170629172353339.png', '20170629172557365.jpg', '20170629172602773.jpg', '4');

-- ----------------------------
-- Table structure for hf_page1_case
-- ----------------------------
DROP TABLE IF EXISTS `hf_page1_case`;
CREATE TABLE `hf_page1_case` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pid` tinyint(3) DEFAULT NULL,
  `cid` int(11) DEFAULT NULL,
  `pic` varchar(50) DEFAULT NULL,
  `seat` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=119 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of hf_page1_case
-- ----------------------------
INSERT INTO `hf_page1_case` VALUES ('6', '1', '5', '20170701194457424.jpg', '2');
INSERT INTO `hf_page1_case` VALUES ('5', '1', '5', '20170701194449387.jpg', '1');
INSERT INTO `hf_page1_case` VALUES ('3', '1', '3', '20170628150522354.jpg', '4');
INSERT INTO `hf_page1_case` VALUES ('4', '1', '3', '20170628145042775.png', '3');
INSERT INTO `hf_page1_case` VALUES ('7', '1', '5', '20170701194508499.jpg', '3');
INSERT INTO `hf_page1_case` VALUES ('20', '1', '8', '20170628174255158.jpg', '1');
INSERT INTO `hf_page1_case` VALUES ('118', '1', '6', '20170701194613499.jpg', '3');
INSERT INTO `hf_page1_case` VALUES ('117', '1', '6', '20170701194606973.jpg', '2');
INSERT INTO `hf_page1_case` VALUES ('116', '1', '6', '20170701194559651.jpg', '1');
INSERT INTO `hf_page1_case` VALUES ('16', '1', '7', '20170628172653811.jpg', '1');
INSERT INTO `hf_page1_case` VALUES ('17', '1', '7', '20170628172709846.jpg', '2');
INSERT INTO `hf_page1_case` VALUES ('18', '1', '7', '20170628172724323.jpg', '3');
INSERT INTO `hf_page1_case` VALUES ('19', '1', '7', '20170628172735758.jpg', '4');
INSERT INTO `hf_page1_case` VALUES ('21', '1', '8', '20170628174306779.jpg', '3');
INSERT INTO `hf_page1_case` VALUES ('22', '1', '9', '20170628175053723.jpg', '1');
INSERT INTO `hf_page1_case` VALUES ('23', '1', '9', '20170628175102349.jpg', '3');
INSERT INTO `hf_page1_case` VALUES ('24', '1', '9', '20170628175110766.jpg', '4');
INSERT INTO `hf_page1_case` VALUES ('25', '1', '9', '20170628175120967.jpg', '5');
INSERT INTO `hf_page1_case` VALUES ('26', '1', '9', '20170628175128595.jpg', '6');
INSERT INTO `hf_page1_case` VALUES ('31', '1', '10', '20170628215010617.jpg', '1');
INSERT INTO `hf_page1_case` VALUES ('28', '1', '10', '20170628214932531.jpg', '2');
INSERT INTO `hf_page1_case` VALUES ('29', '1', '10', '20170628214944490.jpg', '3');
INSERT INTO `hf_page1_case` VALUES ('30', '1', '10', '20170628214958431.jpg', '5');
INSERT INTO `hf_page1_case` VALUES ('32', '1', '11', '20170628221548478.jpg', '1');
INSERT INTO `hf_page1_case` VALUES ('33', '1', '12', '20170628223435223.jpg', '1');
INSERT INTO `hf_page1_case` VALUES ('34', '1', '12', '20170628223445725.jpg', '4');
INSERT INTO `hf_page1_case` VALUES ('35', '1', '13', '20170628224528559.jpg', '1');
INSERT INTO `hf_page1_case` VALUES ('37', '1', '13', '20170628224613534.jpg', '3');
INSERT INTO `hf_page1_case` VALUES ('38', '2', '14', '20170629135317777.jpg', '1');
INSERT INTO `hf_page1_case` VALUES ('39', '2', '14', '20170629135334374.jpg', '2');
INSERT INTO `hf_page1_case` VALUES ('40', '2', '14', '20170629135355345.jpg', '3');
INSERT INTO `hf_page1_case` VALUES ('41', '2', '14', '20170629135412626.jpg', '5');
INSERT INTO `hf_page1_case` VALUES ('42', '2', '14', '20170629135430126.jpg', '4');
INSERT INTO `hf_page1_case` VALUES ('44', '2', '14', '20170629135455694.jpg', '7');
INSERT INTO `hf_page1_case` VALUES ('45', '2', '14', '20170629135507973.jpg', '8');
INSERT INTO `hf_page1_case` VALUES ('46', '2', '15', '20170629141350698.jpg', '1');
INSERT INTO `hf_page1_case` VALUES ('47', '2', '15', '20170629141400283.jpg', '3');
INSERT INTO `hf_page1_case` VALUES ('48', '2', '15', '20170629141411211.jpg', '5');
INSERT INTO `hf_page1_case` VALUES ('49', '2', '15', '20170629141420195.jpg', '6');
INSERT INTO `hf_page1_case` VALUES ('50', '2', '15', '20170629141430446.jpg', '8');
INSERT INTO `hf_page1_case` VALUES ('51', '2', '15', '20170629141439325.jpg', '9');
INSERT INTO `hf_page1_case` VALUES ('52', '2', '15', '20170629141449410.jpg', '10');
INSERT INTO `hf_page1_case` VALUES ('53', '2', '16', '20170629142833596.jpg', '1');
INSERT INTO `hf_page1_case` VALUES ('54', '2', '16', '20170629142841236.jpg', '3');
INSERT INTO `hf_page1_case` VALUES ('55', '2', '16', '20170629142850349.jpg', '4');
INSERT INTO `hf_page1_case` VALUES ('56', '2', '16', '20170629142857297.jpg', '5');
INSERT INTO `hf_page1_case` VALUES ('57', '2', '16', '20170629142906552.jpg', '6');
INSERT INTO `hf_page1_case` VALUES ('58', '2', '17', '20170629151219827.jpg', '1');
INSERT INTO `hf_page1_case` VALUES ('59', '2', '17', '20170629151228562.jpg', '2');
INSERT INTO `hf_page1_case` VALUES ('60', '2', '17', '20170629151237170.jpg', '3');
INSERT INTO `hf_page1_case` VALUES ('61', '2', '17', '20170629151245328.jpg', '4');
INSERT INTO `hf_page1_case` VALUES ('62', '2', '18', '20170629152255426.jpg', '1');
INSERT INTO `hf_page1_case` VALUES ('63', '2', '18', '20170629152304488.jpg', '4');
INSERT INTO `hf_page1_case` VALUES ('64', '2', '18', '20170629152314774.jpg', '6');
INSERT INTO `hf_page1_case` VALUES ('65', '3', '19', '20170629155638834.jpg', '1');
INSERT INTO `hf_page1_case` VALUES ('66', '3', '19', '20170629155655371.jpg', '4');
INSERT INTO `hf_page1_case` VALUES ('67', '3', '19', '20170629155705880.jpg', '5');
INSERT INTO `hf_page1_case` VALUES ('68', '3', '19', '20170629155713738.jpg', '6');
INSERT INTO `hf_page1_case` VALUES ('69', '3', '19', '20170629155720495.jpg', '7');
INSERT INTO `hf_page1_case` VALUES ('70', '3', '19', '20170629155728666.jpg', '8');
INSERT INTO `hf_page1_case` VALUES ('71', '3', '19', '20170629155738814.jpg', '9');
INSERT INTO `hf_page1_case` VALUES ('72', '3', '19', '20170629155746221.jpg', '12');
INSERT INTO `hf_page1_case` VALUES ('73', '3', '19', '20170629155758242.jpg', '13');
INSERT INTO `hf_page1_case` VALUES ('74', '3', '19', '20170629155807372.jpg', '14');
INSERT INTO `hf_page1_case` VALUES ('75', '3', '19', '20170629155843164.jpg', '18');
INSERT INTO `hf_page1_case` VALUES ('76', '3', '19', '20170629155852589.jpg', '19');
INSERT INTO `hf_page1_case` VALUES ('77', '3', '19', '20170629155900334.jpg', '20');
INSERT INTO `hf_page1_case` VALUES ('78', '3', '19', '20170629155910651.jpg', '22');
INSERT INTO `hf_page1_case` VALUES ('79', '3', '19', '20170629155921192.jpg', '23');
INSERT INTO `hf_page1_case` VALUES ('80', '3', '19', '20170629155928920.jpg', '24');
INSERT INTO `hf_page1_case` VALUES ('81', '3', '19', '20170629155936697.jpg', '29');
INSERT INTO `hf_page1_case` VALUES ('82', '3', '20', '20170629161402692.jpg', '1');
INSERT INTO `hf_page1_case` VALUES ('83', '3', '20', '20170629161410380.jpg', '2');
INSERT INTO `hf_page1_case` VALUES ('84', '3', '20', '20170629161417443.jpg', '3');
INSERT INTO `hf_page1_case` VALUES ('85', '3', '20', '20170629161423604.jpg', '4');
INSERT INTO `hf_page1_case` VALUES ('86', '3', '20', '20170629161430820.jpg', '5');
INSERT INTO `hf_page1_case` VALUES ('87', '3', '20', '20170629161436782.jpg', '6');
INSERT INTO `hf_page1_case` VALUES ('88', '3', '20', '20170629161444466.jpg', '7');
INSERT INTO `hf_page1_case` VALUES ('89', '3', '20', '20170629161451483.jpg', '8');
INSERT INTO `hf_page1_case` VALUES ('90', '3', '20', '20170629161459454.jpg', '10');
INSERT INTO `hf_page1_case` VALUES ('91', '3', '20', '20170629161506833.jpg', '12');
INSERT INTO `hf_page1_case` VALUES ('92', '3', '20', '20170629161513328.jpg', '14');
INSERT INTO `hf_page1_case` VALUES ('93', '4', '21', '20170629162200629.jpg', '1');
INSERT INTO `hf_page1_case` VALUES ('94', '4', '22', '20170629163218193.jpg', '1');
INSERT INTO `hf_page1_case` VALUES ('95', '5', '23', '20170629163833257.jpg', '1');
INSERT INTO `hf_page1_case` VALUES ('96', '5', '24', '20170629164416216.jpg', '1');
INSERT INTO `hf_page1_case` VALUES ('97', '5', '24', '20170629164423770.jpg', '2');
INSERT INTO `hf_page1_case` VALUES ('98', '5', '24', '20170629164430882.jpg', '3');
INSERT INTO `hf_page1_case` VALUES ('99', '6', '25', '20170629165854669.jpg', '1');
INSERT INTO `hf_page1_case` VALUES ('100', '6', '25', '20170629165906506.jpg', '2');
INSERT INTO `hf_page1_case` VALUES ('101', '6', '26', '20170629171055973.jpg', '1');
INSERT INTO `hf_page1_case` VALUES ('102', '6', '26', '20170629171105150.jpg', '2');
INSERT INTO `hf_page1_case` VALUES ('103', '6', '26', '20170629171113855.jpg', '3');
INSERT INTO `hf_page1_case` VALUES ('104', '6', '26', '20170629171147250.jpg', '4');
INSERT INTO `hf_page1_case` VALUES ('105', '6', '26', '20170629171205309.jpg', '5');
INSERT INTO `hf_page1_case` VALUES ('106', '6', '26', '20170629171216633.jpg', '6');
INSERT INTO `hf_page1_case` VALUES ('107', '6', '27', '20170629172026100.jpg', '1');
INSERT INTO `hf_page1_case` VALUES ('108', '6', '27', '20170629172032521.jpg', '2');
INSERT INTO `hf_page1_case` VALUES ('109', '6', '27', '20170629172040637.jpg', '3');
INSERT INTO `hf_page1_case` VALUES ('110', '6', '27', '20170629172048442.jpg', '4');
INSERT INTO `hf_page1_case` VALUES ('111', '6', '28', '20170629172932599.jpg', '1');
INSERT INTO `hf_page1_case` VALUES ('112', '6', '28', '20170629172939676.jpg', '2');
INSERT INTO `hf_page1_case` VALUES ('113', '6', '28', '20170629172946747.jpg', '3');
INSERT INTO `hf_page1_case` VALUES ('114', '6', '28', '20170629172951368.jpg', '4');
INSERT INTO `hf_page1_case` VALUES ('115', '1', '5', '20170701194518440.jpg', '4');

-- ----------------------------
-- Table structure for hf_page2
-- ----------------------------
DROP TABLE IF EXISTS `hf_page2`;
CREATE TABLE `hf_page2` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pid` tinyint(3) DEFAULT NULL,
  `tit` varchar(50) DEFAULT NULL,
  `tit_en` varchar(50) DEFAULT NULL,
  `img` varchar(50) DEFAULT NULL,
  `info1` text,
  `info1_en` text,
  `info2` text,
  `info2_en` text,
  `info3` text,
  `info3_en` text,
  `pic` varchar(50) DEFAULT NULL,
  `seat` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of hf_page2
-- ----------------------------
INSERT INTO `hf_page2` VALUES ('3', '1', '交流接触器', 'AC contactor', '20170628205412786.png', '<p>交流接触器，指一种利用线圈流过电流产生磁场，使触头闭合，以达到控制负载的自动化切换器。接触器控制容量大，可远距离操作，适用于频繁接通或分断交、直流电路，配合继电器可以实现定时操作，联锁控制，各种定量控制和失压及欠压保护。其主要控制对象是电动机，也可用于控制其它电力负载，如电热器、照明、电焊机、电容器组等。小型的接触器也经常作为中间继电器配合主电路使用。</p>', '<p>AC contactors, also known as electromagnetic switches, have been widely employed in the application of power control. The operating principle of AC contactor is attained by providing current to the windings of the contactor to induce a magnetic field in order to manipulate the contact switch of the AC contactor to open or close, thereby controlling the power appliance. As the AC contactor is durable in large-current applications where the maximum allowable current is as high as 800amps, and is able to readily and frequently turn on or off the power supply for high-current power appliance, e.g. 380 V AC, the AC contactor is commonly used to control the electromagnetic motor with high startup current. The AC contactor can also be employed to control factory equipment, electric heater, metal working machine, or auto-control electric apparatus, thereby fulfilling the purpose of remotely controlling the power appliance or automatically controlling the power appliance.</p>', '<p>（1）在32安培以下的小负荷电路中常用铆钉有：AgCdO12、AgNi10；<br />（2）在32安培以上（含32安培）的电路中，触点形态通常为片材，其材质为AgCdO15或者较为环保的AgSnO2、AgSnO2InO3。个别情况亦采用AgCdO12片材。</p>', '<p>（1）For a less than 32 amp circuit load, rivets are often made from AgCdO (12) and AgNi (10)&nbsp;<br />（2）For an over 32 amp (32 amp included) circuit load, contact tips are made from AgCdO(15) or environment-friendly AgSnO2 and AgSnO2In2O3 for RoHS in sheets. In some cases, AgCdO(12) sheet is used.</p>', '<p>触点：以上各种材质的触点；</p><p>触桥：动/静触桥；</p><p>触点和基座的一体化冲件；</p><p>灭弧罩：一般我们推荐使用覆铜钢材质，亦可根据客户的要求特别定制。</p>', '<p>Contact tip: We provide contacts made of materials mentioned above;<br />Bridge contact: movable/stationary bridge contacts;<br />Integrated stampings with contact and substrate;<br />Arcing Shield: Cu/Fe/Cu clad metals are recommended, and customized materials are also available upon request.</p>', '20170630140137503.png', '1');
INSERT INTO `hf_page2` VALUES ('4', '1', '小型断路器', 'Miniature circuit breaker', '20170629191644585.png', '<p>断路器是一种过电流保护装置，可在室内配线上作总开关与分电流控制开关，亦可作为一种有效保护电器的重要元件，用于短路保护和防止严重超载。小型断路器（MCB）适用于交流50-60Hz、额定电压230V-400V、额定电流63A线路中的过载和短路保护，正常情况下也可作线路的不频繁操作转换之用。小型断路器主要用于工业、商业、高层和民用住宅等各种场所。</p>', '<p>MCB is applicable to electric circuits with rated voltage 230-400V AC, frequency 50-60Hz and rated current up to 63A. The product provides protection against overload and short circuit to electric circuits and equipment in household and commercial installations. MCB is also used as non-frequent changeover of electric circuits.</p>', '<p>银-石墨触点纤维组织均匀细腻，无毒环保，且具有很高的抗熔焊性和较低的接触电阻，所以被大量使用于小型断路器中。</p>', '<p>Sliver graphite material is widely used to make contacts for miniature circuit breakers for it has excellent anti-welding property and low contact resistance and has neither toxic nor carcinogenic components.</p>', '<p>我公司为小型断路器提供AgC触点，导电性能高、强度好的覆铜钢材质的灭弧栅片和触桥。</p>', '<p>Hongfeng offers AgC contacts, contact bridges and arc splitter plates made of Cu/Fe/Cu clad metals that have excellent electrical conductivity and toughness for MCB.</p>', '20170630140202330.png', '2');
INSERT INTO `hf_page2` VALUES ('5', '1', '塑壳断路器', 'Molded-case circuit breaker', '20170629192810431.png', '<p>塑壳断路器是一种在低压电路（即1000VAC以下）中使用的断路器，其额定电流可达1000A。塑壳断路器在电流超过跳脱设定后能够自动切断电流。其中塑壳指的是用塑料绝缘体来作为装置的外壳，用来隔离导体之间以及接地金属部分。塑壳断路器通常含有热磁跳脱单元，而大型号的塑壳断路器会配备固态跳脱传感器。<br />现在的配电系统要求断路器除了能通断电流实现电路控制和简单的短路、过载保护外，还要能提供隔离和安全保护功能，特别是在针对人身、设备安全与配电系统的可靠性方面都提出了新的要求。</p>', '<p>Molded-case circuit breakers are utilized to open/close low-voltage circuits and protect wiring by automatically closing circuits when overloading or short-circuiting occurs. Its rated current is up to 1000A. Molded case refers to the insulating case that houses the breaker and insulates conductors from each other and the earthed metal parts.<br />Modern electrical distribution system places higher safety demand on circuit breaker. More concern is placed on personal safety, equipment reliability and system consistency.</p>', '<p>1、应选用接触电阻稳定、导电率高、硬度高耐磨、对电弧的侵蚀、粘着力、熔焊的抵抗力大，能满足断路通断要求的材质。<br />2、通常我们选用银碳化钨或者银钨做触头材料。除触头外，宏丰还能根据客户的需要生产灭弧罩（覆铜钢）、动/静触桥（紫铜/黄铜）以及开关中的各种金属冲件。</p>', '<p>1. Applied materials should have stable contact resistance, good electrical conductivity, high hardness, excellent anti-arc erosion and anti-welding properties.<br />2. Materials like silver tungsten carbide or silver tungsten are recommended for making electrical contacts. Besides contacts, we also supply customized arc extinguishing chamber (Cu/Fe/Cu clad metals), movable and stationary bridge contact (red cooper / brass) and various stamping parts for switches.</p>', '', '', '20170630140217235.png', '3');
INSERT INTO `hf_page2` VALUES ('6', '1', '智能型框架式断路器', 'Intelligent air circuit breaker', '20170629193559931.png', '<p>智能型框架式断路器，又称万能式断路器，是一种既能接通、承载以及分断正常电路条件下的电流，也能在规定的非正常电路条件下接通、承载一定时间和分电流的一种机械开关电器。框架式断路器主要在配电网络中用来分配电能和保护线路及电源设备免受过载、欠电压、短路、单相接地等故障危害，因而必须具备能选择性保护、动作准确，全分断时间短、无飞弧等特点，以避免不必要的停电，提高供电可靠性。</p>', '<p>Intelligent Air Circuit Breaker is also called conventional circuit breaker. It is extensively used as the main switch in the low voltage distribution switchboard. Its function is to control and protect the electrical circuit from damage and prevent power equipment from harm of overload, under-voltage, short circuit and single phase earth etc. With intelligent protecting function and precise selective protection, breaker can enhance the reliability of power supply and avoid unwanted power cut.</p>', '<p>一般选用材质有：AgZnO(8)、AgZnO(12)、AgNi(20)、AgNi(30)、AgNi(30)C3及AgNi(40)。</p>', '<p>Recommended materials are:AgZnO(8) , AgZnO(12) , AgNi(20) , AgNi(30) , AgNi(30)C(3) and AgNi(40).</p>', '<p>除上述由材质生产的各种型号触头以外，我们还能根据客户的需要生产其配套的元器件，如覆铜钢灭弧罩、动/静触桥以及开关中的各种金属冲件。</p>', '<p>Apart from contacts, we also supply customized arc extinguishing chamber (Cu/Fe/Cu clad metals), movable and stationary bridge contact and various stampings for switches.</p>', '20170630140238402.png', '4');
INSERT INTO `hf_page2` VALUES ('7', '1', '继电器', ' Relay', '20170629194118502.png', '<p>继电器是一种电子控制器件，它具有控制系统（又称输入回路）和被控制系统（又称输出回路），通常应用于自动控制电路中。它实际上是用较小的电流去控制较大电流的一种&ldquo;自动开关&rdquo;：当输入量(如电压、电流、温度等)达到规定值时，使被控制的输出电路导通或断开的电器，故在电路中起着自动调节、安全保护、转换电路等作用。其原理与接触器原理相同，只是接触器控制的负载功率较大，故体积也较大。继电器具有动作快、工作稳定、使用寿命长、体积小等优点，广泛运用于电力保护、自动化、运动、遥控、测量和通信等装置中。</p>', '<p>A relay is an electrically operated switch. Current flowing through the coil of the relay creates a magnetic field which attracts a lever and changes the switch contacts. Relays allow one low-power circuit to switch a second higher-power circuit which can be completely separated from the first. There is no electrical connection inside the relay between the two circuits; the link is magnetic and mechanical. When input (eg. Voltage, ampere, temperature) reaches a preset value, a relay switches on or off the controlled circuit for adjustment, protection or changeover. Relays have advantages of quick action, good stability, long service life, small volume, and thus are widely used in equipment for power protection, automation, measurement, remote control, communications, etc.</p>', '<p>整体型：整体为银，或者为AgCdO、AgZnO和AgSnO2的常规触点<br />复合型：主要为降低成本而设计，常用的有：<br />AgCdO/Cu&nbsp;&nbsp; &nbsp;主要成分为银氧化镉，具有稳定的接触电阻<br />AgNi/Cu&nbsp;&nbsp; &nbsp;无镉材料，在耐电弧方面优于银氧化镉，在大电流范围内具有良好的抗粘接性<br />AgZnO/Cu&nbsp;&nbsp; &nbsp;具有比银氧化镉更高的热稳定性，耐电腐蚀能力良好，无毒，对环境无污染<br />AgSnO2/Cu&nbsp;&nbsp; &nbsp;是最有希望代替AgCdO的材料。此材料在耐电弧性和低粘结检测中更具优越性</p>', '<p>Solid Type: pure silver or AgCdO, AgZnO or AgSnO2<br />Clad Type: specially engineered to save cost, typical materials are：<br />AgCdO/Cu main composition is AgCdO; stable contact resistance.<br />AgNi/Cu&nbsp;&nbsp; &nbsp;Cd-free, better arc erosion resistance than AgCdO, excellent anti-welding resistance under large current.<br />AgZnO/Cu higher thermostability than AgCdO, good electrical erosion resistance, nontoxic, and pollution-free.<br />AgSnO2/Cu most promising substitute for AgCdO material; excellent arc erosion resistance and anti-welding resistance.</p>', '<p>公司主要采用上述材质，生产电磁式继电器用触点。其交付形态通常为铆钉。另外，我们还能根据您的需要生产电器中的动/静簧片（铁/铜质），并拥有元器件的组装能力，以提供配套服务，缩短工艺流程、降低产品成本。</p>', '<p>We offer rivet contacts made of the above materials for electromagnetic relays. We also make customized movable/stationary contact spring (made of iron or copper). Besides, we offer component assembling service and supporting service, which are helpful in shortening process flow and reducing product cost.</p>', '20170630140347969.png', '5');
INSERT INTO `hf_page2` VALUES ('8', '1', '熔断器', 'Fuse', '20170629194610871.png', '<p>熔断器是一种以金属导体作为熔体而分段电路的电器。当被保护电路的电流超过规定值，并经过一定时间后，由熔体自身产生的热量熔断熔体，从而对电力系统、各种电工设备及家用电器起到保护作用。熔断器广泛应用于低压配电系统和控制系统及用电设备中，作为短路和过电流保护，是应用最普遍的保护器件之一。</p>', '<p>A fuse is a type of low resistance resistor that acts as a sacrificial device to provide overcurrent protection for either the load or source circuit. Its essential component is a metal wire or strip that melts when too much current flows, which interrupts the circuit in which it is connected. Short circuit, overloading, mismatched loads or device failure are the prime reasons for excessive current. Fuses are manufactured in a wide range of current and voltage ratings and are widely used to protect wiring systems and electrical equipment.</p>', '', '', '<p>我们可以提供银桥数从1桥至6桥的带材，用来替代纯银作为熔断器的熔体材料。</p>', '<p>We offer clad metal with silver stripes ranging from 1 to 6 instead of pure silver strip as materials for fuse element.</p>', '20170630140553136.png', '6');
INSERT INTO `hf_page2` VALUES ('9', '2', '墙壁开关', 'Wall-mounted switch', '20170629195408410.png', '<p>墙壁开关的接触结构包括壳体、按柄、叉杆、弹簧、静触点和动触点。静触点固定在壳体内，并与动触点相配合，动触点为滚筒式，且与叉杆活动连接，弹簧的两端分别套装在按柄和叉杆之间。</p>', '<p>The contact system of wall mounted switch consists of enclosure, handle, fork arm, spring, stationary contact and movable contact. The stationary contact is fixed in the enclosure pairing with the sliding contact (movable contact). The movable contact is rolling type and connected with fork arm. Both ends of the spring are between the handle and fork arm.</p>', '', '', '<p>1）跳板（又称摆片、触桥），通常为紫铜<br />2）触点<br />3）覆银的跳板</p>', '<p>1)contact bridge, usually made of red copper<br />2)contact tips<br />3)Ag clad bridge</p>', '20170630140605937.png', '1');
INSERT INTO `hf_page2` VALUES ('10', '2', '电源插座', 'Socket outlet', '20170629195904124.png', '<p>电源插座，俗称接线板或拖线板，又叫移动式插座转换器，由电源插头、电缆线、插座主体三部分构成。电源插座是终端设备与固定插座的电源连接转换器，必须保证用电的安全和可靠。</p>', '<p>Socket outlet consists of plug, cable, and socket. The socket outlet works as a convertor connecting the terminal device and the plug to keep the circuit safe and reliable.</p>', '', '', '<p>电源插座中的冲压件，其材质为青铜、铁或者黄铜。</p>', '<p>Hongfeng offers the stamping parts of the outlet made of materials like bronze, iron or brass.</p>', '20170630140616475.png', '2');
INSERT INTO `hf_page2` VALUES ('11', '4', '微电机', 'Micro motor', '20170629200329384.png', '<p>微电机全称&ldquo;微型电动机&rdquo;，是指直径小于160mm或额定功率小于750W的电机，微型电机门类繁多，大体可分为直流电动机、交流电动机、自态角电机、步进电动机、旋转变压器、轴角编码器、交直流两用电动机、测速发电机、感应同步器、直线电机、压电电动机、电机机组、其他特种电机等13大类。</p><p><br />微电机常用于控制系统或传动机械负载中，用于实现机电信号或能量的检测、解析运算、放大、执行或转换等功能，或用于传动机械负载，也可作为设备的交、直流电源。</p>', '<p>Micro Motors refer to motors with rated voltage lower than 750 W and diameter less than 160mm. They can be sorted into various categories: AC motor, DC motor, stepper motor, electric resolver, shaft encoder, universal AC/DC motor, tachogenerator, inductosyn, linear motor, piezo motor, electric motor assembly, etc.<br /><br />Micro motors are generally used in control system or mechanical transmission system to test, resolve, magnify, execute or convert electrical signals or power. It can also be used as AC/DC power supply for equipment.</p>', '', '', '<p>主要应用于手机、振动器上的微型震动马达等。<br />我们的产品包含异型丝材，其材质有：AgCuZnNi、AgCuPd、AgCuIn等。</p>', '<p>It is mainly applied to micro motors in cell phones, vibrators etc.<br />Our products include profiled wire made of the materials such as AgCuZnNi, AgCuPd, AgCuIn etc.</p>', '20170630140632665.png', '1');
INSERT INTO `hf_page2` VALUES ('12', '4', '轻触开关', 'Touch switch', '20170629200743458.png', '<p>轻触开关一种电子开关，使用时轻轻点按开关按钮就可使开关接通，当松开手时开关即断开。其内部结构是靠金属弹片受力弹动来实现通断的。</p><p><br />轻触开关由体积小重量轻在家用电器方面得到广泛的应用。如：彩电按键，影碟机按键，电脑鼠标等等。除此以外，轻触开关还可用于控制照明灯和排风扇等小功率家用电器。该电子开关在市电停电后自动断开再次来电时不会自行接通 (需按动控制按钮才能接通)，可避免因电器长期通电而耗费电能或引发意外事故。</p>', '<p>A touch switch is a kind of switch that only has to be touched by an object to operate. It has two metal plates which spring under external force to break and make the circuit.&nbsp;<br /><br />Small as it is, it is widely used in home power control applications for convenience such as TV power button, computer mouse etc. It is also used to control lamps, ventilators and other low power household appliance. This electronic switch breaks after electric supply is cut off and shall not make when the supply is restored until the button is pushed. Therefore, it prevents the unnecessary power consumption and accidents.</p>', '', '', '<p>生产轻触开关用薄带材，其材质根据您的需要可以为整体型和复合型。<br />其中复合材质为Ag/QSn。</p>', '<p>We offer thin strips either solid or clad according to your requirement.<br />The recommended material is Ag/QSn.</p>', '20170630140653204.png', '2');
INSERT INTO `hf_page2` VALUES ('13', '3', '温控器', 'Thermostat', '20170629204242658.png', '<p>温控器是利用热双金属的热膨胀系数不同的原理，用双金属片作温度采样元件，和开关结合，应用于汽车空调、热交换器的控温，同时也可用于民用冰箱、空调、热水器、电饭煲和电水壶等需要调控温度的地方。</p>', '<p>A thermostat is a component of a control system which senses the temperature of a system so that the temperature is maintained near a desired set point. The thermostat does this by switching heating or cooling devices on or off, or regulating the flow of a heat transfer fluid as needed, to maintain the correct temperature.<br /><br />The most common of these technologies in thermostats is the bimetallic strip. This technology uses two thin strips of different metals &mdash; such as copper and iron, copper and steel and brass and steel &mdash; bonded together and rolled into a coil. As the temperature changes, the different metals expand or contact at different rates, causing the strip to bend. When the strip bends enough to touch an electrical contact and complete an electrical circuit, it turns on the heating or cooling system. If the temperature changes enough to unbend the strip, contact is lost, and the system turns off. Thermostats are applied in automotive air-conditioner, heat exchanger as well as in household appliances such as refrigerator, air-conditioner, water heater, electric cooker and electric kettle.</p>', '', '', '<p>1、端子：Ag/BZn, Ag/Cu/Fe, AgNi10/Cu/Fe</p><p>2、纽扣触头：AgNi10/Cu/Fe430, AgCdO/Cu/Fe430</p>', '<p>1. Terminal: Ag/BZn, Ag/Cu/Fe, AgNi(10)/Cu/Fe<br />2. Button contact: AgNi(10)/Cu/Fe430, AgCdO/Cu/Fe430</p>', '20170630134958882.png', '1');
