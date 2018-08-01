/*
SQLyog v10.2 
MySQL - 5.6.24 : Database - onlineqa
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`onlineqa` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `onlineqa`;

/*Table structure for table `answers` */

DROP TABLE IF EXISTS `answers`;

CREATE TABLE `answers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ansContent` varchar(255) NOT NULL,
  `ansDate` datetime NOT NULL,
  `qid` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `qid` (`qid`),
  CONSTRAINT `answers_ibfk_1` FOREIGN KEY (`qid`) REFERENCES `questions` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

/*Data for the table `answers` */

insert  into `answers`(`id`,`ansContent`,`ansDate`,`qid`) values (1,'没看懂','2018-07-10 14:23:30',1),(2,'什么是面向对象？','2018-07-10 14:23:47',1),(3,'稍等','2018-07-10 14:59:54',2),(4,'aaa','2018-07-10 16:06:56',1),(5,'啊啊啊','2018-07-10 16:29:09',3),(6,'bbb','2018-07-10 16:45:41',1),(7,'bbb','2018-07-10 16:46:32',1),(8,'bbb','2018-07-10 16:46:56',3),(9,'cc','2018-07-10 16:47:22',3),(10,'什么歌','2018-08-01 15:10:22',2),(11,'万物皆对象，你懂吧？','2018-08-01 15:13:16',1);

/*Table structure for table `questions` */

DROP TABLE IF EXISTS `questions`;

CREATE TABLE `questions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) NOT NULL,
  `detailDesc` varchar(255) DEFAULT NULL,
  `answerCount` int(11) NOT NULL,
  `lastModified` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

/*Data for the table `questions` */

insert  into `questions`(`id`,`title`,`detailDesc`,`answerCount`,`lastModified`) values (1,'谁能给我讲讲面向对象是怎么回事','java',6,'2018-08-01 15:13:16'),(2,'帮忙找一首歌','music',2,'2018-08-01 15:10:22'),(3,'什么是区块链','什么是区块链',3,'2018-07-10 16:47:22');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
