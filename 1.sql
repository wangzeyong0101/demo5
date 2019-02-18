/*
SQLyog 
MySQL - 5.5.29 : Database - epet
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`epet` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `epet`;

/*Table structure for table `dog` */

CREATE TABLE `dog` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(12) DEFAULT NULL,
  `health` int(11) DEFAULT NULL,
  `love` int(11) DEFAULT NULL,
  `strain` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

/*Data for the table `dog` */

LOCK TABLES `dog` WRITE;

insert  into `dog`(`id`,`name`,`health`,`love`,`strain`) values (4,'11',100,1000,'奥术大师多');
insert  into `dog`(`id`,`name`,`health`,`love`,`strain`) values (5,'aa',11,11,'aaa');

UNLOCK TABLES;

/*Table structure for table `master` */

CREATE TABLE `master` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(12) DEFAULT NULL,
  `password` varchar(20) DEFAULT NULL,
  `card` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

/*Data for the table `master` */

LOCK TABLES `master` WRITE;

insert  into `master`(`id`,`name`,`password`,`card`) values (2,'bb','bb','bb');

UNLOCK TABLES;

/*Table structure for table `pet` */

CREATE TABLE `pet` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '宠物编号',
  `name` varchar(10) NOT NULL COMMENT '宠物名称',
  `health` int(11) NOT NULL COMMENT '健康值',
  `love` int(11) NOT NULL COMMENT '爱心值',
  `strain` varchar(20) NOT NULL COMMENT '品种',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `pet` */

LOCK TABLES `pet` WRITE;

UNLOCK TABLES;

/*Table structure for table `student` */

CREATE TABLE `student` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `price` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

/*Data for the table `student` */

LOCK TABLES `student` WRITE;

insert  into `student`(`id`,`name`,`price`) values (1,'a','11');
insert  into `student`(`id`,`name`,`price`) values (2,'a2','111');

UNLOCK TABLES;

/*Table structure for table `user` */

CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

/*Data for the table `user` */

LOCK TABLES `user` WRITE;

insert  into `user`(`id`,`name`,`password`) values (1,'1','1');

UNLOCK TABLES;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
