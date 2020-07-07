/*
SQLyog Community v13.1.5  (64 bit)
MySQL - 10.4.8-MariaDB : Database - survey
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`survey` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `survey`;

/*Table structure for table `cat1` */

DROP TABLE IF EXISTS `cat1`;

CREATE TABLE `cat1` (
  `id` int(10) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `cat1` */

insert  into `cat1`(`id`,`title`) values 
(1,'Governance'),
(2,'Society Awareness & Acculturation'),
(3,'Cybersecurity Readiness'),
(4,'Legislative, Regulatory & Enforcement'),
(5,'Technology & Infrastructure');

/*Table structure for table `cat2` */

DROP TABLE IF EXISTS `cat2`;

CREATE TABLE `cat2` (
  `id` int(10) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `parent_cat` int(10) DEFAULT NULL,
  `child_index` int(10) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `cat2` */

insert  into `cat2`(`id`,`title`,`parent_cat`,`child_index`) values 
(1,'Cyber Security Strategy',1,1),
(2,'Incident Response',1,2),
(3,'Critical Infrastructure (Ci) Protection',1,3),
(4,'Cyber Security Mind-set',2,1),
(5,'Reporting Mechanism',2,2),
(6,'Media & Social Media',2,3),
(7,'Awareness Raising',3,1),
(8,'Framework for Education',3,2),
(9,'Framework For Professional Training',3,3),
(10,'Legal Frameworks',4,1),
(11,'Formal And Informal Cooperation Frameworks To Combat Cybercrime',4,2),
(12,'Adherence to Standards',5,1),
(13,'Internet Infrastructure Resilience',5,2),
(14,'Technical Security Controls',5,3);

/*Table structure for table `failed_jobs` */

DROP TABLE IF EXISTS `failed_jobs`;

CREATE TABLE `failed_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `failed_jobs` */

/*Table structure for table `mat_explain` */

DROP TABLE IF EXISTS `mat_explain`;

CREATE TABLE `mat_explain` (
  `id` int(10) NOT NULL,
  `dimension` int(10) DEFAULT NULL,
  `level` int(10) DEFAULT NULL,
  `text` text DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `mat_explain` */

insert  into `mat_explain`(`id`,`dimension`,`level`,`text`) values 
(1,1,0,'- Your organisation has <span  style=\'color:red\'>NO</span> cyber security guideline.\r\n<br>- Your organisation has <span  style=\'color:red\'>NO</span> dedicated response mechanism and team to address cyber security incidents.\r\n<br>- Your organisation <span  style=\'color:red\'>DOES NOT</span> have a list of declared Critical Infrastructure (CI) assets\r\n'),
(2,1,1,'- Your organisation has <span  style=\'color:red\'>NO</span> cyber security guideline BUT there is some effort/intention to implement it.\r\n<br>- Your organisation has <span  style=\'color:red\'>NO</span> dedicated response mechanism and team to address cyber security incidents BUT it will still respond to an incident.\r\n<br>- Your organisation <span  style=\'color:red\'>DOES NOT</span> have a list of declared Critical Infrastructure (CI) assets BUT is aware they exist.\r\n'),
(3,1,2,'- Your organisation has <span  style=\'color:red\'>NO</span> cyber security guideline BUT there is some effort/intention to implement it.\r\n<br>- Your organisation has <span  style=\'color:red\'>NO</span> dedicated response mechanism and team to address cyber security incidents BUT it will still respond to an incident.\r\n<br>- Your organisation <span  style=\'color:red\'>DOES NOT</span> have a list of declared Critical Infrastructure (CI) assets BUT is aware they exist.\r\n'),
(4,1,3,'- Your organisation <span  style=\'color:red\'>HAS</span> a cyber security guideline and is <span  style=\'color:red\'>WELL ENFORCED.</span>\r\n<br>- Your organisation <span  style=\'color:red\'>HAS</span> a dedicated and <span  style=\'color:red\'>SYSTEMATICALLY REVIEWED</span> response mechanism and team to address cyber security incidents.\r\n<br>- Your organisation <span  style=\'color:red\'>HAS</span> a list of declared Critical Infrastructure (CI)  assets and they are <span  style=\'color:red\'>WELL PROTECTED</span> and <span  style=\'color:red\'>RISK ASSESSED</span>.\r\n'),
(5,1,4,'- Your organisation <span  style=\'color:red\'>HAS</span> a cyber security guideline and is <span  style=\'color:red\'>WELL ENFORCED</span>. It is <span  style=\'color:red\'>AUTOMATICALLY UPDATED</span> to accommodate latest trends of technologies and cyber threats.\r\n<br>- Your organisation <span  style=\'color:red\'>HAS</span> a dedicated and <span  style=\'color:red\'>SYSTEMATICALLY REVIEWED</span> response mechanism and team to address cyber security incidents.\r\n<br>- Your organisation <span  style=\'color:red\'>HAS</span> a list of declared Critical Infrastructure (CI)  assets and they are <span  style=\'color:red\'>WELL PROTECTED</span> and <span  style=\'color:red\'>RISK ASSESSED</span>. There is also a <span  style=\'color:red\'>CONTINGENCY PLAN</span> to remove or minimize risk on the asset.\r\n'),
(6,2,0,'- The cyber security mind-set is <span  style=\'color:red\'>NOT</span> a common practice in your organisation.\r\n<br>- Your organisation <span  style=\'color:red\'>DOES NOT</span> have an efficient reporting mechanism.\r\n<br>- Your organisation <span  style=\'color:red\'>DOES NOT</span> validate information from the media and social media.\r\n'),
(7,2,1,'- The cyber security mind-set is <span  style=\'color:red\'>NOT</span> a common practice in your organisation BUT some efforts have been made to emulate it in daily working life.\r\n<br>- Your organisation <span  style=\'color:red\'>DOES NOT</span> have an efficient reporting mechanism BUT the staff relies on it.\r\n<br>- Your organisation <span  style=\'color:red\'>MAKES</span> minimal effort to validate information from the media and social media.\r\n'),
(8,2,2,'- The cyber security mind-set <span  style=\'color:red\'>IS A</span> common practice in your organisation.\r\n<br>- Your organisation <span  style=\'color:red\'>HAS</span> an efficient reporting mechanism.\r\n<br>- Your organisation always <span  style=\'color:red\'>VALIDATES</span> information from the media and social media.\r\n'),
(9,2,3,'- The cyber security mind-set <span  style=\'color:red\'>IS A</span> common practice in your organisation AND everybody plays a role in spreading the awareness and best practices in it.\r\n<br>- Your organisation <span  style=\'color:red\'>HAS</span> an efficient reporting mechanism AND is easily reachable and responded anytime.\r\n<br>- Your organisation always <span  style=\'color:red\'>VALIDATES</span> information from the media and social media.\r\n<br>- Your organisation <span  style=\'color:red\'>ENCOURAGES</span> AND <span  style=\'color:red\'>TRUSTS</span> the use of media and social media to spread cyber security awareness.\r\n'),
(10,2,4,'- The cyber security mind-set <span  style=\'color:red\'>IS A</span> common practice in your organisation AND everybody plays a role in spreading the awareness and best practices in it. There is also a <span  style=\'color:red\'>SPECIALISED INTERNAL SUPPORTS</span> purely dedicated to address any cyber threats.\r\n<br>- Your organisation <span  style=\'color:red\'>HAS</span> an efficient reporting mechanism AND is easily reachable and responded anytime.\r\n<br>- Your organisation always <span  style=\'color:red\'>VALIDATES</span> information from the media and social media.\r\n>br>- Your organisation <span  style=\'color:red\'>ENCOURAGES</span> AND <span  style=\'color:red\'>TRUSTS</span> the use of media and social media to spread cyber security awareness. It is also used to perform <span  style=\'color:red\'>ONLINE PROCUREMENTS</span>.\r\n'),
(11,3,0,'- Your organisation has <span  style=\'color:red\'>NEVER</span> organised or participated in a cyber security awareness event.\r\n<br>- Your organisation <span  style=\'color:red\'>DOES NOT</span> provide the staff with any cyber security education.\r\n<br>- Your organisation <span  style=\'color:red\'>DOES NOT</span> provide the staff with any cyber security training.\r\n'),
(12,3,1,'- Your organisation has <span  style=\'color:red\'>NEVER</span> organised or participated in a cyber security awareness event BUT some efforts have been made for it to happen.\r\n<br>- Your organisation <span  style=\'color:red\'>DOES NOT</span> provide the staff with any cyber security education BUT some form of its informal education has already been spread and circulated.\r\n<br>- Your organisation <span  style=\'color:red\'>DOES NOT</span> provide the staff with any cyber security training BUT the staff is fuzzily aware of what needs to be done in emergency.\r\n'),
(13,3,2,'- Your organisation <span  style=\'color:red\'>HAS</span> organised or participated in a cyber security awareness event.\r\n<br>- Your organisation <span  style=\'color:red\'>PROVIDES</span> the staff with a cyber security education.\r\n<br>- Your organisation <span  style=\'color:red\'>PROVIDES</span> the staff with a cyber security training.\r\n'),
(14,3,3,'- Your organisation <span  style=\'color:red\'>HAS</span> organised or participated in a cyber security awareness event. The event gets a <span  style=\'color:red\'>PUBLICITY</span> AND it is a <span  style=\'color:red\'>JOINT EFFORT</span> with other organisations.\r\n<br>- Your organisation <span  style=\'color:red\'>PROVIDES</span> the staff with a cyber security education AND it is recognized by the Government.\r\n<br>- Your organisation <span  style=\'color:red\'>PROVIDES</span> the staff with a cyber security training AND a <span  style=\'color:red\'>CYBER DRILL</span> is conducted from time to time. It is also joined by the <span  style=\'color:red\'>C-LEVEL PERSONNEL</span>.\r\n'),
(15,3,4,'- Your organisation <span  style=\'color:red\'>HAS</span> organised or participated in a cyber security awareness event. The event gets a <span  style=\'color:red\'>PUBLICITY</span> AND it is a <span  style=\'color:red\'>JOINT EFFORT</span> with other organisations. There is also <span  style=\'color:red\'>A DESIGNATED TEAM</span> that is in charge to update and share the awareness activities to the public\r\n<br>- Your organisation <span  style=\'color:red\'>PROVIDES</span> the staff with a cyber security education AND it is recognized by the Government. There is also a <span  style=\'color:red\'>RESEARCH</span> being carried out on cyber security.\r\n<br>- Your organisation <span  style=\'color:red\'>PROVIDES</span> the staff with a cyber security training AND a <span  style=\'color:red\'>CYBER DRILL</span> is conducted from time to time. It is also joined by the <span  style=\'color:red\'>C-LEVEL PERSONNEL</span>. The training modules are <span  style=\'color:red\'>ALWAYS UPDATED</span> to adapt to the changing environment threats.\r\n'),
(16,4,0,'- Your organisation <span  style=\'color:red\'>DOES NOT</span> have legal frameworks or strict procedures on cyber security.\r\n<br>- Your organisation <span  style=\'color:red\'>DOES NOT</span> have strong formal and informal cooperation frameworks to combat cybercrimes\r\n'),
(17,4,1,'- Your organisation <span  style=\'color:red\'>DOES NOT</span> have legal frameworks or strict procedures on cyber security BUT there are some efforts to implement some safety procedures.\r\n<br>- Your organisation <span  style=\'color:red\'>DOES NOT</span> have strong formal and informal cooperation frameworks to combat cybercrimes BUT the staffs are aware on who to reach out when there is a situation.\r\n'),
(18,4,2,'- Your organisation <span  style=\'color:red\'>HAS</span> legal frameworks or strict procedures on cyber security.\r\n<br>- Your organisation <span  style=\'color:red\'>HAS</span> strong formal and informal cooperation frameworks to combat cybercrimes.\r\n'),
(19,4,3,'- Your organisation <span  style=\'color:red\'>HAS</span> legal frameworks or strict procedures on cyber security. People who have left your organisation for good are STRICTLY PROHIBITED from accessing any information and data either physically or online.\r\n<br>- Your organisation <span  style=\'color:red\'>HAS</span> strong formal and informal cooperation frameworks to combat cybercrimes. The IT units make UPDATING the application system of your organisation MANDATORY.\r\n'),
(20,4,4,'- Your organisation <span  style=\'color:red\'>NO</span> legal frameworks or strict procedures on cyber security. People who have left your organisation for good are STRICTLY PROHIBITED from accessing any information and data either physically or online. \r\n<br>- There is a procedure to report to MYCERT when a cyber incident occurs.\r\n<br>- Your organisation <span  style=\'color:red\'>HAS</span> strong formal and informal cooperation frameworks to combat cybercrimes. The IT unit makes UPDATING the application system of your organisation MANDATORY. \r\n<br>- Your organisation is IN CONTACT with the following agencies: National Cyber Security Agency (NACSA)/ MYCERT / Cyber Security Malaysia/ Malaysian Communications and Multimedia Commission (MCMC)\r\n'),
(21,5,0,'- Your organisation <span  style=\'color:red\'>DOES NOT</span> have a guideline (reference) on whom the staff may share information of task/project.\r\n<br>- Your organisation <span  style=\'color:red\'>DOES NOT</span> have a reliable internet infrastructure.\r\n<br>- Your organisation <span  style=\'color:red\'>DOES NOT</span> have good technical security controls.\r\n'),
(22,5,1,'- Your organisation <span  style=\'color:red\'>DOES NOT</span> have a guideline (reference) on whom the staff may share information of task/project BUT <span  style=\'color:red\'>MOST</span> staff knows best to not share them with outsiders.\r\n<br>- Your organisation <span  style=\'color:red\'>DOES NOT</span> have a reliable internet infrastructure BUT some efforts have been made to make it available.\r\n<br>- Your organisation <span  style=\'color:red\'>DOES NOT</span> have good technical security controls BUT efforts like implementing a firewall into the system have been made to improve the situation.\r\n'),
(23,5,2,'- Your organisation <span  style=\'color:red\'>HAS</span> a guideline (reference) on whom the staff may share information of task/project.\r\n<br>- Your organisation <span  style=\'color:red\'>HAS</span> a reliable internet infrastructure.\r\n<br>- Your organisation <span  style=\'color:red\'>HAS</span> good technical security controls.\r\n'),
(24,5,3,'- Your organisation <span  style=\'color:red\'>HAS</span> a guideline (reference) on whom the staff may share information of task/project AND is REFERRED by the staff.\r\n<br>- Your organisation <span  style=\'color:red\'>HAS</span> a reliable internet infrastructure with a CONSIDERABLE SPEED.\r\n<br>- Your organisation <span  style=\'color:red\'>HAS</span> good technical security controls AND the system is WELL-BACKED UP.\r\n'),
(25,5,4,'- Your organisation <span  style=\'color:red\'>HAS</span> a guideline (reference) on whom the staff may share information of task/project AND is REFERRED by the staff. The guideline is ALWAYS UPDATED to accommodate the changing trends of technologies and cyber threats.\r\n<br>- Your organisation <span  style=\'color:red\'>HAS</span> a reliable internet infrastructure with a CONSIDERABLE SPEED. Your organisation is concerned to UPGRADE it if it is found to not be reliable.\r\n<br>- Your organisation <span  style=\'color:red\'>HAS</span> good technical security controls AND the system is WELL-BACKED UP. There is a DEDICATED TECHNICAL PERSONAL in charge to keep track of the information and network security\r\n');

/*Table structure for table `migrations` */

DROP TABLE IF EXISTS `migrations`;

CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `migrations` */

insert  into `migrations`(`id`,`migration`,`batch`) values 
(1,'2014_10_12_000000_create_users_table',1),
(2,'2014_10_12_100000_create_password_resets_table',1),
(3,'2019_08_19_000000_create_failed_jobs_table',1);

/*Table structure for table `options` */

DROP TABLE IF EXISTS `options`;

CREATE TABLE `options` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `question_id` int(255) DEFAULT NULL,
  `option` varchar(255) DEFAULT NULL,
  `mark` int(10) DEFAULT NULL,
  `label` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=156 DEFAULT CHARSET=utf8;

/*Data for the table `options` */

insert  into `options`(`id`,`question_id`,`option`,`mark`,`label`) values 
(1,1,'A',0,'No'),
(2,1,'B',1,'Yes'),
(3,2,'A',1,'Yes'),
(4,2,'B',0,'No'),
(5,3,'A',1,'Disciplinary actions will be taken'),
(6,3,'B',1,'Disciplinary actions & proper application of the guideline should be enforced.'),
(7,3,'C',0,'Nothing happen'),
(8,4,'A',0,'No'),
(9,4,'B',1,'Yes'),
(10,5,'A',0,'Maybe'),
(12,5,'C',1,'Yes'),
(11,5,'B',0,'No'),
(13,6,'A',0,'No'),
(14,6,'B',1,'Yes'),
(15,7,'A',1,'Yes'),
(16,7,'B',0,'No'),
(17,8,'A',0,'No'),
(18,8,'B',1,'Yes'),
(19,9,'A',0,'Minimal knowledge on information and network security'),
(20,9,'B',1,'Knowledgeable/experience in information and network security'),
(21,9,'C',0,'Zero knowledge on information and network security'),
(22,10,'A',1,'Yes'),
(23,10,'B',0,'No'),
(24,11,'A',1,'Yes'),
(25,11,'B',0,'No'),
(26,12,'A',1,'Yes'),
(27,12,'B',0,'No'),
(28,13,'A',0,'No'),
(29,13,'B',1,'Yes'),
(30,14,'A',0,'No'),
(31,14,'B',1,'Yes'),
(32,15,'A',1,'Yes'),
(33,15,'B',0,'No'),
(34,16,'A',1,'Yes'),
(35,16,'B',0,'No'),
(36,17,'A',0,'Yes'),
(37,17,'B',1,'No'),
(38,18,'A',0,'No'),
(39,18,'B',1,'Yes'),
(40,19,'A',1,'Yes'),
(41,19,'B',0,'No'),
(42,20,'A',0,'No'),
(43,20,'B',1,'Yes'),
(44,21,'A',1,'Make a record/screenshot of the incident to be used as a proof.'),
(45,21,'B',1,'Contact the authority'),
(46,21,'C',0,'Do nothing/do not know.'),
(47,22,'A',1,'HOTLINE'),
(48,22,'B',0,'NO REPORTING MECHANISM'),
(49,22,'C',1,'EMAIL'),
(50,23,'A',0,'SOCIAL MEDIA'),
(51,23,'B',1,'MyCERT'),
(52,23,'C',1,'POLICE'),
(53,24,'A',1,'Within 24 hours'),
(54,24,'B',0,'More than 24 hours'),
(55,25,'A',0,'No'),
(56,25,'B',1,'Yes'),
(57,26,'A',0,'No'),
(58,26,'B',1,'Yes'),
(59,27,'A',1,'Yes'),
(60,27,'B',0,'No'),
(61,28,'A',0,'No'),
(62,28,'B',1,'Yes'),
(63,29,'A',1,'Check the truthfulness or the validity of the news'),
(64,29,'B',1,'Delete immediately upon receiving suspicion content'),
(65,29,'C',0,'Do nothing'),
(66,30,'A',0,'No'),
(67,30,'B',1,'Yes'),
(68,31,'A',1,'Yes'),
(69,31,'B',0,'No'),
(70,32,'A',1,'Based on the age group'),
(71,32,'B',1,'Based on the nature of the work'),
(72,32,'C',0,'Randomly selected'),
(73,33,'A',1,'Any combination of the following parties: Government, Private, International,'),
(74,33,'B',0,'None'),
(75,34,'A',0,'No'),
(76,34,'B',1,'Yes'),
(77,35,'A',1,'Yes'),
(78,35,'B',0,'No'),
(79,36,'A',1,'Yes'),
(80,36,'B',0,'No'),
(81,37,'A',0,'No'),
(82,37,'B',1,'Yes'),
(83,38,'A',0,'No'),
(84,38,'B',1,'Yes'),
(85,38,'C',0,'Do not know'),
(86,39,'A',1,'Yes'),
(87,39,'B',0,'No'),
(88,40,'A',1,'Yes'),
(89,40,'B',0,'No'),
(90,41,'A',1,'Yes'),
(91,41,'B',0,'No'),
(92,42,'A',1,'Yes'),
(93,42,'B',0,'No'),
(94,42,'C',0,'Do not know'),
(95,43,'A',0,'No'),
(96,43,'B',1,'Yes'),
(97,44,'A',0,'No'),
(98,44,'B',1,'Yes'),
(99,45,'A',1,'Yes'),
(100,45,'B',0,'No'),
(101,46,'A',1,'Yes'),
(102,46,'B',0,'No'),
(103,47,'A',0,'No'),
(104,47,'B',1,'Yes'),
(105,48,'A',0,'No'),
(106,48,'B',1,'Yes'),
(107,49,'A',1,'Yes'),
(108,49,'B',0,'No'),
(109,50,'A',0,'No'),
(110,50,'B',1,'Yes'),
(111,51,'A',0,'No'),
(112,51,'B',1,'Yes'),
(113,52,'A',1,'Yes'),
(114,52,'B',0,'No'),
(115,53,'A',0,'No'),
(116,53,'B',1,'Yes'),
(117,54,'A',1,'Yes'),
(118,54,'B',0,'No'),
(119,55,'A',0,'No'),
(120,55,'B',1,'Yes'),
(121,56,'A',1,'Yes'),
(122,56,'B',0,'No'),
(123,57,'A',0,'Sharing of work information with outsiders (competitors, friends, relatives).'),
(124,57,'B',1,'Dissemination of work related information among those who are involved in the task'),
(125,57,'C',0,'Sharing of work related information with colleagues who are not involved in the task'),
(126,58,'A',1,'Yes'),
(127,58,'B',0,'No'),
(128,59,'A',0,'Not applicable (do not have guidelines)'),
(129,59,'B',0,'No'),
(130,59,'C',1,'Yes'),
(131,60,'A',1,'Yes'),
(132,60,'B',0,'No'),
(133,60,'C',0,'Not applicable (do not have guidelines)'),
(134,61,'A',1,'Available most of the time'),
(135,61,'B',0,'Not always available'),
(136,62,'A',1,'Yes'),
(137,62,'B',0,'No'),
(138,63,'A',0,'TV & radio'),
(139,63,'B',1,'Social media & search engine (e.g. Google/Bing)'),
(140,63,'C',0,'Printed materials (e.g. newspaper / books/ magazines)'),
(141,64,'A',1,'Download it first and then watch'),
(142,64,'B',1,'Watch the stream online video'),
(143,64,'C',0,'None of the above because both are slow.'),
(144,65,'A',0,'No'),
(145,65,'B',1,'Yes'),
(146,66,'A',0,'No'),
(147,66,'B',1,'Yes'),
(148,67,'A',1,'Yes'),
(149,67,'B',0,'No'),
(150,68,'A',0,'No'),
(151,68,'B',1,'Yes'),
(152,69,'A',1,'Yes'),
(153,69,'B',0,'No'),
(154,70,'A',1,'Yes'),
(155,70,'B',0,'No');

/*Table structure for table `password_resets` */

DROP TABLE IF EXISTS `password_resets`;

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `password_resets` */

/*Table structure for table `question_explain` */

DROP TABLE IF EXISTS `question_explain`;

CREATE TABLE `question_explain` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cat1` int(10) DEFAULT NULL,
  `cat2` int(10) DEFAULT NULL,
  `text` text DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=71 DEFAULT CHARSET=utf8;

/*Data for the table `question_explain` */

insert  into `question_explain`(`id`,`cat1`,`cat2`,`text`) values 
(1,0,0,'Your organisation has <span style=\"color:red;\">NO</span> documented guideline (e.g. policy/framework/standards) on cyber security. Hence, it is lacking in a <u>systematic process</u> to ensure an optimal working ambience and a cyber security guarded environment. Lacking in <strong>a systematic process</strong> correspond to lacking in <strong>‘Aql</strong>.	'),
(60,4,0,'It is NOT in your organisation’s environment for staff to automatically refer to the latest and updated guideline. Hence, it is lacking in a systematic process to ensure an optimal working ambience and a cyber security guarded environment. Lacking in a systematic process correspond to lacking in ‘Aql.'),
(59,4,0,'Your organisation DOES NOT update its cyber security guideline based on the advancement of technologies and cyber threats. Hence, it is lacking in updated resources and a systematic process to ensure an optimal working ambience and a cyber security guarded environment. Lacking in updated resources and a systematic process correspond to lacking in Mal and ‘Aql respectively.'),
(58,4,0,'It is NOT in your organisation’s environment for staff to be extremely careful when sharing devices (e.g. thumb drive, notebook, tablet) that contain confidential information of work. Hence, it is lacking in resources and a systematic process to ensure an optimal working ambience and a cyber security guarded environment. Lacking in resources and a systematic process correspond to lacking in Mal and ‘Aql respectively.'),
(57,4,0,'Your organisation ALLOWS for the dissemination of work related information among those who are NOT involved in the task. Hence, it is lacking in a systematic process to ensure its data and information confidentiality. Lacking in a systematic process correspond to lacking in ‘Aql.'),
(56,4,0,'Your organisation has NO guideline (reference) on whom staff may share information of their task/project. Hence, it is lacking in a systematic process to ensure an optimal working ambience and a cyber security guarded environment. Lacking in a systematic process correspond to lacking in ‘Aql.'),
(55,3,1,'Your organisation DOES NOT communicate or in contact with any of these agencies – National Cyber Security Agency (NACSA)/ MYCERT / Cyber Security Malaysia/ Malaysian \r\nCommunications and Multimedia Commission (MCMC). Hence, it lacking in a knowledge sharing and collaboration environment. Lacking in knowledge sharing and collaboration environment correspond to lacking in ‘Aql.'),
(54,3,1,'The IT Unit in your organisation DOES NOT make updating of application systems (e.g. Microsoft Office, Adobe) compulsory. Hence, your organisation is lacking in updated resources and a systematic process to ensure an optimal working ambience and a cyber security guarded environment.  Lacking in updated resources and a systematic process correspond to lacking in Mal and ‘Aql respectively.'),
(53,3,1,'Your organisation has NO reporting mechanism to report to when there is a suspicious or real cyberattacks. Hence, it is lacking in resources to report to and its incident handling is considered to be insufficient. Lacking in resources and incident handling correspond to lacking in Mal and ‘Aql respectively.'),
(52,3,1,'The staff are NOT well-guided on what to do in the case of cyberattacks. Hence, it is lacking a systematic process to ensure the safety of your organisation and staff. Lacking in a systematic process correspond to lacking in ‘Aql.'),
(51,3,1,'Your organisation DOES NOT make announcement (to everyone in your organisation) when there is a cyberattack incidents (such as phishing, virus, spam email). Hence, it is lacking in resources that can help warn your organisation when being attacked and its incident handling is considered to be insufficient. Lacking in resources and incident handling correspond to lacking in Mal and ‘Aql respectively.'),
(50,3,0,'Your organisation DOES NOT have a procedure to report to MYCERT should there be any suspicious online activities against it. Hence, it is lacking in a systematic process to ensure an optimal working ambience and a cyber security guarded environment. Lacking in a systematic process correspond to lacking in ‘Aql.'),
(49,3,0,'Your organisation DOES NOT immediately block physical and online access to employee who leaves the organization (resign, end of contract, retire, terminate of service). Hence, it is lacking in resources and a systematic process for physical and online access control. Lacking in resources and a systematic process correspond to lacking in Mal and ‘Aql respectively.'),
(48,3,0,'Your organisation DOES NOT practice the Clear Desk policy. Hence, your organisation is lacking in a systematic process to ensure an optimal working ambience and a cyber security guarded environment. Lacking in a systematic process correspond to lacking in ‘Aql.'),
(47,3,0,'Your organisation DOES NOT enforce a strict access procedure to its confidential data. Hence, it is lacking in resources and a systematic process for data access control. Lacking in resources and a systematic process correspond to lacking in Mal and ‘Aql respectively.'),
(46,3,0,'Your organisation is NOT aware of the Personal Data and Protection Act (PDPA). Hence, your organisation is lacking in an awareness towards data protection act. Lacking in an awareness towards data protection act correspond to lacking in ‘Aql.'),
(45,2,2,'The higher-level personnel (C-level officers) ARE NOT involved in the cyber security training organised by your organisation. Hence, it is lacking in the role of leaders to know what’s happening at lower levels and a systematic process to ensure an optimal working ambience and a cyber security guarded environment. Lacking in the role of leaders and a systematic process correspond to lacking in Deen and ‘Aql.'),
(44,2,2,'Your organisation has NEVER conducted a cyber drill (similar to fire drill but for cyber security matters). Hence, it is lacking in updated resources and a systematic process to ensure an optimal working ambience and a cyber security guarded environment. Lacking in updated resources and a systematic process correspond to lacking in Mal and ‘Aql.'),
(43,2,2,'Your organisation DOES NOT update its cyber security training modules based on the advancement of cyber threats. Hence, it is lacking in updated resources and a systematic process to ensure an optimal working ambience and a cyber security guarded environment. Lacking in updated resources and a systematic process correspond to lacking in Mal and ‘Aql.'),
(42,2,2,'It is UNKNOWN or NOT in your organisation’s environment for staff to apply what they’ve learnt in the training in the office. Hence, it is lacking in a systematic process to ensure an optimal working ambience and a cyber security guarded environment. Lacking in a systematic process correspond to lacking in ‘Aql.'),
(41,2,2,'Your organisation DOES NOT provide any cyber security training for staff. Hence, it is lacking in resources and a systematic process to ensure an optimal working ambience with cyber security trained staff. Lacking in resources and a systematic process correspond to lacking in Mal and ‘Aql respectively.'),
(40,2,1,'Your organisation DOES NOT carry out any cyber security research. Hence, it does not fully utilised its manpower and resources for the purpose of improving the cyber security education. It is also lacking in a systematic process to ensure an optimal working ambience and a cyber security guarded environment. Lacking in utilisation of manpower, resources and a systematic process correspond to lacking in Nafs, Mal and ‘Aql respectively.'),
(39,2,1,'The Government DOES NOT provide any fund for your organisation’s cyber security education program. Hence, your organisation is lacking in resources to sustain the program. Lacking in resources correspond to lacking in Mal.'),
(38,2,1,'The Government DOES NOT recognise the cyber security education as a necessity/ prerequisite requirement for everyone in your organisation. Hence, it is lacking in a national-level synchronisation. Lacking in a national-level synchronisation correspond to lacking in Deen.\r\n\r\nOR\r\n\r\nIt is UNKNOWN whether the Government RECOGNISE OR NOT the cyber security education as a necessity/ prerequisite requirement for everyone in your organisation. Hence, it is lacking in a national-level synchronisation. Lacking in a national-level synchronisation correspond to lacking in Deen.\r\n'),
(37,2,1,'Your organisation DOES NOT provide any certification of learning and assessments for the cyber security education. Hence, it is lacking in resources and a systematic process to ensure an optimal working ambience with cyber security educated staff. Lacking in resources and a systematic process correspond to lacking in Mal and ‘Aql respectively.'),
(36,2,1,'Your organisation DOES NOT provide any cyber security education for staff. Hence, it is lacking in resources and a systematic process to ensure an optimal working ambience with cyber security educated staff. Lacking in resources and a systematic process correspond to lacking in Mal and ‘Aql respectively.'),
(35,2,0,'Your organisation has NO designated group that is responsible to update and share the awareness activities to the public. Hence, it is lacking in manpower and resources to support the awareness program. Its awareness program handling is also considered to be insufficient. Lacking in manpower, resources and programs handling correspond to lacking in Nafs, Mal and ‘Aql respectively.'),
(34,2,0,'The cyber security awareness program hosted by your organisation DOES NOT get publicity. Hence, it is lacking in a full resources utilisation and knowledge and awareness sharing ambience. Lacking in resources utilisation and knowledge and awareness sharing ambience correspond to lacking in Mal and ‘Aql respectively.'),
(33,2,0,'There is NO involvement of other parties in the cyber security awareness program hosted by your organisation. Hence, your organisation is lacking in a knowledge sharing ambience that can benefited everyone involved. Lacking in a knowledge sharing ambience correspond to lacking in ‘Aql.'),
(32,2,0,'The target audiences for the cyber security awareness program are RANDOMLY selected by your organisation. Hence, it is lacking in a strategic thinking process to ensure the best results and outcome. Lacking in a strategic thinking process correspond to lacking in ‘Aql.'),
(31,2,0,'Your organisation has NEVER organised/participated in cyber security awareness program. Hence, it does not fully utilised its manpower and resources for the purpose of networking and awareness raising. It is also lacking in a systematic process to ensure an optimal working ambience. Lacking in utilisation of manpower, resources and a systematic process correspond to lacking in Nafs, Mal and ‘Aql respectively.'),
(30,1,2,'Your organisation has DOES NOT make any online procurement (online services, hardware devices, software). Hence, it does not fully utilised the resources and is lacking in a systematic process to ensure an optimal working ambience and a cyber security guarded environment. Lacking in resources utilisation and a systematic process correspond to lacking in Mal and ‘Aql respectively.'),
(29,1,2,'Your organisation DOES NOT take any action to prevent the spreading of false news in your organisation. Hence, it is lacking in a systematic process to ensure an optimal working ambience and a cyber security guarded environment. Lacking in a systematic process correspond to lacking in ‘Aql.'),
(28,1,2,'The current media/social media in your organisation CANNOT be used to communicate with colleagues or networking companies without worrying that a third party might be eavesdropping.  Hence, it is lacking in resources and a systematic SOP (Standard Operating Procedure) for a safe, uninterrupted communication. Lacking in resources and systematic SOP correspond to lacking in Mal and ‘Aql respectively.'),
(27,1,2,'The current media/social media in your organisation CANNOT be used to collect data/information. Hence, it is lacking in resources and a systematic process for data/information collection. Lacking in resources and systematic process correspond to lacking in Mal and ‘Aql respectively.'),
(26,1,2,'Your organisation DOES NOT make use of social media to spread cyber security awareness among staffs. Hence, it is lacking in resources for awareness spreading and a systematic process to ensure the staff are well-educated on cyber security. Lacking in resources and systematic process correspond to lacking in Mal and ‘Aql respectively.'),
(25,1,1,'The reporting mechanisms in your organisation are NOT reachable and responded anytime (24 by 7). Hence, the welfare of the staff is not well- protected and its incident handling is considered to be insufficient. Lacking in welfare of the staff and incident handling correspond to lacking in Nafs and ‘Aql respectively.'),
(24,1,1,'Your organisation is NOT AWARE on how fast should the responsible organisations supposedly response to the reported incidents. Hence, they are lacking in awareness on the normal response time limit. Lacking in awareness correspond to lacking in ‘Aql.'),
(23,1,1,'It is NOT in your organisation’s environment for staff to immediately report to authorised personnel (MyCERT, POLICE) upon becoming a victim of online frauds.  Hence, it is lacking in a systematic process to ensure an optimal working ambience. Lacking in a systematic process correspond to lacking in ‘Aql.'),
(22,1,1,'Your organisation has NO reporting mechanism.  Hence, it is lacking in resources to deal with the dire situations. Its cyberattacks handling is also considered to be insufficient. Lacking in resources and cyberattacks handling correspond to lacking in Mal and ‘Aql respectively.'),
(21,1,1,'Your organisation DOES NOT attempt to report a cyber-related incident that occurs in it. Hence, its incident handling is considered to be insufficient. Lacking in incident handling correspond to lacking in ‘Aql.'),
(20,1,0,'Your organisation has NO internal support to address cyberattacks. Hence, it is lacking in manpower and resources to deal with the dire situations. Its cyberattacks handling is also considered to be insufficient. Lacking in manpower, resources and cyberattacks handling correspond to lacking in Nafs, Mal and ‘Aql respectively.'),
(19,1,0,'It is NOT in your organisation’s environment for superiors, colleagues or juniors to always spread awareness in cyber security. Hence, it is lacking in a knowledge and awareness sharing ambience. Lacking in knowledge and awareness sharing ambience correspond to lacking in ‘Aql.'),
(18,1,0,'“Hacking, Malware, Phishing” are NOT well-known terms inside your organisation. Hence, your organisation is lacking in an awareness towards cyber threats. Lacking in an awareness towards cyber threats correspond to lacking in ‘Aql.'),
(17,1,0,'It is NOT in your organisation’s environment for staff to always ensure the workstation is left off unattended.  Hence, it is lacking in a systematic process to ensure an optimal working ambience and a cyber security guarded environment. Lacking in a systematic process correspond to lacking in ‘Aql.'),
(16,1,0,'It is NOT in your organisation’s environment for staff to automatically scan for virus before using external devices on computers at work. Hence, it is lacking in resources and a systematic process to ensure an optimal working ambience and a cyber security guarded environment. Lacking in resources and a systematic process correspond to lacking in Mal and ‘Aql respectively.'),
(15,0,2,'Your organisation DOES NOT review the risk assessment and the plan associated with it (e.g. recovery, mitigation) for the purpose of improvement. Hence, its Critical Infrastructure (CI) assets handling is considered to be insufficient. Lacking in CI assets handling correspond to lacking in ‘Aql.'),
(14,0,2,'Your organisation DOES NOT have a contingency plan to remove or minimize risk of the Critical Infrastructure (CI) asset for the purpose of backing up in case of emergency. Hence, its CI assets handling is considered to be insufficient. Lacking in CI assets handling correspond to lacking in ‘Aql.'),
(13,0,2,'Your organisation DOES NOT carry out risk assessments on the Critical Infrastructure (CI) assets. Hence, its CI assets handling is considered to be insufficient. Lacking in CI assets handling correspond to lacking in ‘Aql.'),
(12,0,2,'Your organisation has NO designated team to keep track of the status of all declared Critical Infrastructure (CI) assets. Hence, it is lacking in manpower and resources for assets tracking. Its CI assets handling is also considered to be insufficient. Lacking in manpower, resources and CI assets handling correspond to lacking in Nafs, Mal and ‘Aql respectively.'),
(11,0,2,'Your organisation has NO list of Critical Infrastructure (CI) assets to be protected/declared (note: the assets depend on the nature of the business). Therefore, it has limited resources for assets tracking and lacking in a systematic process to ensure the CI assets are well-protected. Lacking in resources and systematic process correspond to lacking in Mal and ‘Aql respectively.'),
(10,0,1,'Your organisation has NO periodical review on the provided incident respond services (e.g. efficiency, effectiveness) for the purpose of improvement which resulted in poor incident handling. Poor incident handling corresponds to lacking in ‘Aql.'),
(9,0,1,'The members in your organisation’s response team have NO or VERY MINIMAL KNOWLEDGE in Information and Network Security. Therefore, they have little to none mastery and skills to alleviate the dire situation. Lacking in mastery and skills correspond to lacking in ‘Aql.'),
(8,0,1,'Your organisation has NO designated team to take charge of the reported incidents. Hence, it is lacking in manpower and resources to alleviate the dire situation. Its incident handling is also considered to be insufficient. Lacking in manpower, resources and incident handling correspond to lacking in Nafs, Mal and ‘Aql respectively.'),
(7,0,1,'Your organisation has NO database of previous cyber security attacks. Hence, it does not have enough resources that can be referred to when classifying new incidents and its incident handling is considered to be limited. Limited resources and poor incident handling correspond to lacking in Mal and ‘Aql respectively.'),
(6,0,1,'Your organisation has NO organised alert mechanism. Therefore, it is limited in resources that can help warn your organisation when being attacked and its incident handling is considered to be insufficient. Lacking in resources and incident handling correspond to lacking in Mal and ‘Aql respectively.'),
(5,0,0,'Your organisation’s cyber security guideline <span style=\"color:red;\">DOES NOT</span> comply to the national cyber security guideline. Hence, it lacks in supporting the <u>country’s cyber security agenda</u>. Lacking in support to the <strong>country’s cyber security agenda</strong> correspond to lacking in <strong>Deen</strong>.\r\nor\r\nIt is <span style=\"color:red;\">UNKNOWN</span> whether your organisation’s cyber security guideline does or does not comply to the national cyber security guideline. Hence, it lacks in supporting the <u>country’s cyber security agenda</u>. Lacking in support to the <strong>country’s cyber security agenda</strong> correspond to lacking in <strong>Deen</strong>.\r\n'),
(4,0,0,'Your organisation <span style=\"color:red;\">DOES NOT</span> update its cyber security guideline based on the advancement of cyber threats resulting in a lacking of a <u>systematic process</u> that is essential to ensure an optimal working ambience and a cyber security guarded environment. Lacking in <strong>a systematic process</strong> correspond to lacking in <strong>‘Aql</strong>.'),
(3,0,0,'Your organisation <span style=\"color:red;\">DOES NOT</span> take actions against a staff who does not adhere to the documented guideline which is a minus in a <u>systematic process</u> that can ensure an optimal working ambience and a cyber security guarded environment. Inadequate <strong>systematic process</strong>. corresponds to lacking in <strong>‘Aql</strong>.'),
(2,0,0,'Your organisation <span style=\"color:red;\">DOES NOT</span> make it mandatory for the staffs to apply and practice the documented guideline in their everyday work. Its <u>systematic process</u> therefore is not sufficient to foster an optimal working ambience as well as a cyber security guarded environment. Insufficiency in <strong>a systematic process</strong> correspond to lacking in <strong>‘Aql</strong>.'),
(61,4,1,'The internet infrastructure in your organisation is NOT always available. Hence, it is lacking in resources and a systematic process to ensure the availability of internet for staff to use at all time. Lacking in resources and a systematic process correspond to lacking in Mal and ‘Aql respectively.'),
(62,4,1,'The internet infrastructure in your organisation DOES NOT have a considerable speed. Hence, it is lacking in resources and a systematic process to ensure an optimal working ambience and a cyber security guarded environment. Lacking in resources and a systematic process correspond to lacking in Mal and ‘Aql respectively.'),
(63,4,1,'The internet is NOT the first choice of information source in your organisation. Hence, your organisation is lacking in resources and a systematic process to ensure an optimal working ambience and a cyber security guarded environment. Lacking in resources and a systematic process correspond to lacking in Mal and ‘Aql respectively.'),
(64,4,1,'It is NOT practical to watch work-related videos online (either via streaming or downloading it first) at your organisation since the Internet’s speed is very slow. Hence, your organisation is lacking in resources and a systematic process to ensure an optimal working ambience and a cyber security guarded environment. Lacking in resources and a systematic process correspond to lacking in Mal and ‘Aql respectively.'),
(65,4,1,'Your organisation is NOT concerned to upgrade the Internet infrastructure if it was reported to be unreliable. Hence, it is lacking in manpower, resources and report handling for the purpose of improving the quality of the Internet service. Lacking in manpower, resources and report handling correspond to lacking in Nafs, Mal and ‘Aql respectively. '),
(66,4,2,'Your organisation DOES NOT implement or plan to implement the ISO 27001 ISMS (Information Security Management Systems). Hence, it is lacking in resources and a systematic process to ensure the security of your organisation is well-protected. Lacking in resources and a systematic process correspond to lacking in Mal and ‘Aql respectively.'),
(67,4,2,'Your organisation DOES NOT apply Firewall in its network. Hence, it is lacking in resources and a systematic process to ensure the security of your organisation is well-protected. Lacking in resources and a systematic process correspond to lacking in Mal and ‘Aql respectively.'),
(68,4,2,'Your organisation has NO dedicated technical personal in charge of information or network security.  Hence, it is lacking in manpower, resources and a systematic process to oversee the security of your organisation’s network. Lacking in manpower, resources and a systematic process correspond to lacking in Nafs, Mal and ‘Aql respectively.'),
(69,4,2,'Your organisation DOES NOT enforce a strict access control to the server room. Hence, it is lacking in resources and a systematic process for server room access control. Lacking in resources and a systematic process correspond to lacking in Mal and ‘Aql respectively.'),
(70,4,2,'There is no back-up for the system in your organisation. Hence, it is lacking in resources and a systematic process to act as a contingency plan if the system is compromised. Lacking in resources and a systematic process correspond to lacking in Mal and ‘Aql respectively.');

/*Table structure for table `questions` */

DROP TABLE IF EXISTS `questions`;

CREATE TABLE `questions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `text` tinytext DEFAULT NULL,
  `cat1` int(10) DEFAULT NULL,
  `cat2` int(10) DEFAULT NULL,
  `mark` int(10) DEFAULT NULL,
  `ms_element` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=71 DEFAULT CHARSET=utf8;

/*Data for the table `questions` */

insert  into `questions`(`id`,`text`,`cat1`,`cat2`,`mark`,`ms_element`) values 
(1,'Is there a documented guideline (e.g. policy/framework/standards) on cyber security in your',1,1,1,'Aql'),
(2,'If your organisation were to have a cyber security guideline, will it be mandatory for the staw to apply\r\nand practice the documented guideline in their everyday work?',1,1,0,'Aql'),
(3,'If your organisation were to have a cyber security guideline, what punishments await if a sta???? does\r\nnot adhere to it?',1,1,1,'Aql'),
(4,'If your organisation were to have a cyber security guideline, would it be updated based on the\r\nadvancement of cyber threats?',1,1,1,'Aql'),
(5,'If your organisation were to have a cyber security guideline, will it comply to the national cyber\r\nsecurity guideline?',1,1,1,'Deen'),
(6,'Is there an organised mechanism to alert the organisation if an incident happens?',1,2,0,'Aql,Mal'),
(7,'Is there a database of previous attacks that can be referred to classify an incident?',1,2,1,'Aql,Mal'),
(8,'Is there a designated team in your organisation to take charge of the reported incidents?',1,2,0,'Nafs,Aql,Mal'),
(9,'What is the technical background of members in the response team?',1,2,1,'Aql'),
(10,'Is there a periodical review on the incident respond services provided (e.g. effectiveness)?',1,2,1,'Aql'),
(11,'Is there a list of CI assets to be protected/declared (note: the assets depend on the nature of the\r\nbusiness)?',1,3,1,'Aql,Mal'),
(12,'Is there a team assigned to keep track of the status of all declared CI assets?',1,3,0,'Nafs,Aql,Mal'),
(13,'Is there any risk assessment carried out on the CI assets?',1,3,0,'Aql'),
(14,'Does your organisation have a contingency plan to remove or minimize risk of the CI asset?',1,3,0,'Aql'),
(15,'Does your organisation review the risk assessment and the plan associated with it (e.g. recovery,\r\nmitigation)?',1,3,1,'Aql'),
(16,'Do you scan for virus before using external devices on computers at work?',2,4,0,'Aql,Mal'),
(17,'Do you leave your workstation on when unattended?',2,4,0,'Aql'),
(18,'“Hacking, Malware, Phishing”\r\nHave you ever heard any of the following terms?',2,4,0,'Aql'),
(19,'Do your superiors, colleagues, juniors or environments play a role in making you aware of cyber\r\nsecurity?',2,4,1,'Aql'),
(20,'Do you have an internal support to address cyberattacks in your organisation?',2,4,0,'Nafs,Aql,Mal'),
(21,'Which of the following actions would you first attempt when reporting a cyber-related Incident that\r\noccurs in your organisation?',2,5,1,'Aql'),
(22,'Which of the following mechanism is easily accessible to a staff for reporting an incident?',2,5,1,'Aql,Mal'),
(23,'You as a staff have been a victim of online fraud. Which of the following organization do you first report to?',2,5,0,'Aql'),
(24,'How fast should the responsible organisation response to the reported incidents?',2,5,1,'Aql'),
(25,'Are the reporting mechanisms reachable and responded anytime (24 by 7)?',2,5,0,'Nafs,Aql'),
(26,'Does your organisation make use of social media to spread cyber security awareness among staff?',2,6,0,'Aql,Mal'),
(27,'Does your organisation validate information obtained from the media/social media before being\r\nused?',2,6,1,'Aql,Mal'),
(28,'Can the current media/social media be used to communicate with your colleagues or networking\r\ncompanies without worrying that a third party might be eavesdropping?',2,6,0,'Aql,Mal'),
(29,'Which of the following action do you take to prevent the spread of false news in your organisation?',2,6,1,'Aql'),
(30,'Does your organisation make any online procurement (online services, hardware devices, software)?',2,6,0,'Aql,Mal'),
(31,'Has your organisation organised/participated in cyber security awareness program?',3,7,1,'Nafs,Aql,Mal'),
(32,'If your organisation were to organise a cyber security awareness program, who would be the target\r\naudiences?',3,7,1,'Aql'),
(33,'Who is involved in the awareness event (besides your organisation)?',3,7,1,'Aql'),
(34,'Will the event get a publicity (made known to the public)?',3,7,0,'Aql,Mal'),
(35,'Is there any designated group in your organisation that is responsible to update and share the\r\nawareness activities to the public?',3,7,1,'Nafs,Aql,Mal'),
(36,'Is there any cyber security education program for staff in your organisation?',3,8,0,'Aql,Mal'),
(37,'Will there be assessments and certification of learning achievement?',3,8,0,'Aql,Mal'),
(38,'Does the Government recognize the Cyber security as a necessity/ prerequisite requirement for\r\neveryone in your organisation?',3,8,0,'Deen'),
(39,'Does the Government provide any fund for the Cyber Security education program?',3,8,1,'Mal'),
(40,'Is there any research being carried out on cyber security in your organisation?',3,8,1,'Nafs,Aql,Mal'),
(41,'Are your staff in your organisation went through your cyber security training?',3,9,0,'Aql,Mal'),
(42,'If your organisation were to organise a cyber security training for your staff, do you think they will apply what they\'ve learnt in the training in the office?',3,9,1,'Aql'),
(43,'If your organisation were to organise a cyber security training for your sta????, would the training\r\nmodules adapt to the changing environment threats?',3,9,0,'Aql,Mal'),
(44,'Has your organisation conducted a cyber drill (similar to fire drill but for cyber security matters)?',3,9,0,'Aql,Mal'),
(45,'Does the higher-level personnel (C-level o????icers) in the organisation involved in the training?',3,9,1,'Deen,Aql'),
(46,'Are you aware of the Personal Data and Protection Act (PDPA)?',4,10,1,'Aql'),
(47,'Is there a strict access procedure to confidential data in your organisation?',4,10,0,'Aql,Mal'),
(48,'Does your organisation practice the Clear Desk policy (e.g. confidential information is not left unattended, discussion information on the whiteboard is erased after every meeting)?',4,10,0,'Aql'),
(49,'Does your organisation immediately block all physical and online access by an employee who had\r\nleft the organisation (resign, end of contract, retire, terminate of service)?',4,10,1,'Aql,Mal'),
(50,'Does your organisation has a procedure to report to MYCERT should there be any suspicious online\r\nactivities against your organisation?',4,10,0,'Aql'),
(51,'Are there announcements made known to your organisation when there is a cyberattack incident\r\n(such as phishing, virus, spam email)?',4,11,0,'Aql,Mal'),
(52,'Are ALL staff being guided on what to do when such cyberattacks happened?',4,11,1,'Aql'),
(53,'Is there a reporting mechanism to be used when there is suspicious or real cyberattacks in your\r\norganisation?',4,11,0,'Aql,Mal'),
(54,'Does your IT Unit make updating of application systems (e.g. Microso???? O????ice, Adobe) compulsory?',4,11,1,'Aql,Mal'),
(55,'Does your organisation communicate or in contact with any of these – National Cyber Security\r\nAgency (NACSA)/ MYCERT / Cyber Security Malaysia/ Malaysian Communications and Multimedia\r\nCommission (MCMC)?',4,11,0,'Aql'),
(56,'Is there a guideline (reference) of with whom you may share information related to your\r\ntask/project?',5,12,1,'Aql'),
(57,'Which of the following scenarios is allowed based on your organisation’s guideline?',5,12,0,'Aql'),
(58,'Are you careful when sharing devices (e.g. thumb drive, notebook, tablet) that contain confidential\r\ninformation of your work?',5,12,1,'Aql,Mal'),
(59,'Is the guideline (refer to question 1) updated based on trends of technologies and cyberattacks?',5,12,0,'Aql,Mal'),
(60,'Do you refer to the latest and updated guideline?',5,12,1,'Aql'),
(61,'Is your organisation\'s internet infrastructure always available?',5,13,1,'Aql,Mal'),
(62,'Does your organisation\'s internet infrastructure has a considerable speed?',5,13,1,'Aql,Mal'),
(63,'Which of the following would you first refer to for gaining information?',5,13,0,'Aql,Mal'),
(64,'Which is more practical for you when watching an online video for your work?',5,13,1,'Aql,Mal'),
(65,'Does your organisation concern to upgrade the Internet infrastructure if it is found to be not reliable?',5,13,0,'Nafs,Aql,Mal'),
(66,'Does your organisation implement or plan to implement the ISO 27001 ISMS (Information Security\r\nManagement Systems)?',5,14,0,'Aql,Mal'),
(67,'Does your organisation apply Firewall in its network?',5,14,1,'Aql,Mal'),
(68,'Is there a dedicated technical personal in charged of information or network security?',5,14,0,'Nafs,Aql,Mal'),
(69,'Is the server room in your organisation has a strict access control?',5,14,1,'Aql,Mal'),
(70,'Is there a back-up for systems in your organisation?',5,14,1,'Aql,Mal');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `organization` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `users` */

insert  into `users`(`id`,`name`,`email`,`email_verified_at`,`password`,`organization`,`remember_token`,`created_at`,`updated_at`) values 
(1,'Sergii Kolesnyk','hhdream019@gmail.com',NULL,'$2y$10$VKfd99IzeLhh1Y8XPNY5..gYHhWq3wQGT6EnvWn7nQnagGUfHIAxm','AXing',NULL,'2020-06-13 12:12:56','2020-06-13 12:12:56'),
(11,'a','a@gmail.com',NULL,'$2y$10$zZtd1h3i7/agkaonSDBLZOONQ5l/fWERSOrnbCOu/Z4eDYxO8Bo3S','a',NULL,'2020-06-15 01:00:57','2020-06-15 01:00:57'),
(12,'b','b@gmail.com',NULL,'$2y$10$qiZOEHfpjJybpcGbP4kxAehkAiHtHOY9PEt9J.OdPh5fK.YoUStlC','b',NULL,'2020-06-15 01:02:19','2020-06-15 01:02:19'),
(13,'c','c@gmail.com',NULL,'$2y$10$.kS5N9PpO3zzQpZkgB0.oer2AV4xNriEvjPI6hRcCpGcZ3GdXJJ9W','c',NULL,'2020-06-15 01:04:23','2020-06-15 01:04:23'),
(14,'d','d@gmail.com',NULL,'$2y$10$51kx9DTXCSGWSwMT/x5BmulEgx6ZsKIfqpcwSNccKg6TN6beGGCY6','d',NULL,'2020-06-15 01:05:07','2020-06-15 01:05:07'),
(15,'bb','e@gmail.com',NULL,'$2y$10$pDHbEuPYiqyHYDWV6iSuX.KRKkYcIvAMjC/mvNRRSzBnlr11aeHtG','s',NULL,'2020-06-15 01:06:06','2020-06-15 01:06:06'),
(16,'aa@gmail.com','aa@gmail.com',NULL,'$2y$10$kwfNLp0rR0VGUZoBH.HZD.oYkhuHochyjSd2DdOBZCpUjzGs2cp6u','aa',NULL,'2020-06-16 20:03:30','2020-06-16 20:03:30');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
