/*
SQLyog Ultimate v11.33 (64 bit)
MySQL - 5.0.45-community-nt : Database - newsportal
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`newsportal` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `newsportal`;

/*Table structure for table `articles` */

DROP TABLE IF EXISTS `articles`;

CREATE TABLE `articles` (
  `id` int(10) NOT NULL auto_increment,
  `articlename` varchar(250) NOT NULL,
  `department` varchar(100) NOT NULL,
  `category` varchar(100) NOT NULL,
  `template` int(10) NOT NULL,
  `description` longtext NOT NULL,
  `image` longblob NOT NULL,
  `email` varchar(250) NOT NULL,
  `status` varchar(100) NOT NULL,
  PRIMARY KEY  (`articlename`),
  KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;

/*Data for the table `articles` */

/*Table structure for table `login` */

DROP TABLE IF EXISTS `login`;

CREATE TABLE `login` (
  `username` varchar(250) NOT NULL,
  `password` varchar(250) default NULL,
  `auth` int(10) default NULL,
  PRIMARY KEY  (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `login` */

insert  into `login`(`username`,`password`,`auth`) values ('admin@gmail.com','admin',0),('jakkamohanakrishnapriya@gmail.com','krishna',1),('mr.s.srikanthbabu@gmail.com','sravani',1),('s.srikanthbabu2011@gmail.com','bujji',1),('shakeera.shaik911@gmail.com','Shakeera',1),('sowjanyaananthasetty07@gmail.com','Sowjanya',1),('sowmyaananthasetty@gmail.com','sowjanya',1),('sushamanimmagadda@gmail.com','bujji',1);

/*Table structure for table `register` */

DROP TABLE IF EXISTS `register`;

CREATE TABLE `register` (
  `id` int(10) NOT NULL auto_increment,
  `firstname` varchar(250) NOT NULL,
  `lastname` varchar(250) NOT NULL,
  `email` varchar(250) NOT NULL,
  `mobile` varchar(10) NOT NULL,
  `password` varchar(100) NOT NULL,
  PRIMARY KEY  (`email`),
  KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

/*Data for the table `register` */

insert  into `register`(`id`,`firstname`,`lastname`,`email`,`mobile`,`password`) values (9,'Krishnapriya','Jakka','jakkamohanakrishnapriya@gmail.com','7989044915','krishna'),(5,'Sravani','Kumari','mr.s.srikanthbabu@gmail.com','9063643665','sravani'),(3,'Srikanth','Bujji','s.srikanthbabu2011@gmail.com','9063643665','bujji'),(6,'shakeera','shaik','shakeera.shaik911@gmail.com','9010425362','Shakeera'),(7,'Sowjanya','Ananthasetty','sowjanyaananthasetty07@gmail.com','7386780566','Sowjanya'),(8,'Sowjanya','Ananthasetty','sowmyaananthasetty@gmail.com','7386780566','sowjanya'),(4,'sushama','N','sushamanimmagadda@gmail.com','9063643665','bujji');

/*Table structure for table `urldata` */

DROP TABLE IF EXISTS `urldata`;

CREATE TABLE `urldata` (
  `id` int(10) NOT NULL auto_increment,
  `title` varchar(250) NOT NULL,
  `link` varchar(250) NOT NULL,
  `ldate` date NOT NULL,
  KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

/*Data for the table `urldata` */

insert  into `urldata`(`id`,`title`,`link`,`ldate`) values (1,'Off Campus','https://www.geeksforgeeks.org/','2023-01-15'),(2,'BUILD-A-THON','https://www.linkedin.com/posts/gdg-on-campus-necn_buildathon2026-hackathon2026-gdgoncampus-activity-7419624863625162752-QR2y?utm_source=share&utm_medium=member_android&rcm=ACoAAEQq780BQuLpoIvYZ9z3zjFCTY4ThgrAGas','2026-01-27');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
