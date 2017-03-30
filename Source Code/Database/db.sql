/*
SQLyog Community v8.4 RC2
MySQL - 5.0.67-community-nt : Database - fuzzy
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`fuzzy` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `fuzzy`;

/*Table structure for table `fuzzydata` */

DROP TABLE IF EXISTS `fuzzydata`;

CREATE TABLE `fuzzydata` (
  `keyw` varchar(500) default NULL,
  `rc` int(11) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `fuzzydata` */

insert  into `fuzzydata`(`keyw`,`rc`) values ('cloud',1),('deduplication',1),('encryption cloud',1),('online database',2),('oruta cloud',1),('secure cloud',1);

/*Table structure for table `querydata` */

DROP TABLE IF EXISTS `querydata`;

CREATE TABLE `querydata` (
  `rid` int(11) NOT NULL auto_increment,
  `data` varchar(1000) default NULL,
  `file` blob,
  `author` varchar(500) default NULL,
  `keywords` varchar(500) default NULL,
  `rank` int(11) default '0',
  PRIMARY KEY  (`rid`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

/*Data for the table `querydata` */

insert  into `querydata`(`rid`,`data`,`file`,`author`,`keywords`,`rank`) values (6,'Decentralized Access Control with Anonymous Authentication of Data Stored in Clouds','We propose a new decentralized access control scheme for secure data storage in clouds that supports anonymous\r\nauthentication. In the proposed scheme, the cloud verifies the authenticity of the series without knowing the user?s identity before storing\r\ndata. Our scheme also has the added feature of access control in which only valid users are able to decrypt the stored information. The\r\nscheme prevents replay attacks and supports creation, modification, and reading data stored in the cloud. We also address user\r\nrevocation.','Sushmita Ruj','cloud, online database',0),(7,'Building Confidential and Efficient Query Services in the Cloud with RASP','With the wide deployment of public cloud computing infrastructures, using clouds to host data query services has\r\nbecome an appealing solution for the advantages on scalability and cost-saving. However, some data might be sensitive that the\r\ndata owner does not want to move to the cloud unless the data confidentiality and query privacy are guaranteed. On the other\r\nhand, a secured query service should still provide efficient query processing and significantly reduce the in-house workload to\r\nfully realize the benefits of cloud computing','Huiqi Xu','secure cloud',0),(8,'Performance and cost evaluation of an adaptive encryption architecture for cloud databases','The cloud database as a service is a novel paradigm that can support several Internet-based applications, but its adoption\r\nrequires the solution of information confidentiality problems. We propose a novel architecture for adaptive encryption of public cloud\r\ndatabases that offers an interesting alternative to the trade-off between the required data confidentiality level and the flexibility of the\r\ncloud database structures at design time. We demonstrate the feasibility and performance of the proposed solution through a software\r\nprototype. Moreover, we propose an original cost model that is oriented to the evaluation of cloud database services in plain and\r\nencrypted instances and that takes into account the variability of cloud prices and tenant workload during a medium-term period.','Luca Ferretti','encryption cloud, online database',0),(9,'A Hybrid Cloud Approach for Secure Authorized Deduplication','Data deduplication is one of important data compression techniques for eliminating duplicate copies of repeating data,\r\nand has been widely used in cloud storage to reduce the amount of storage space and save bandwidth. To protect the confidentiality\r\nof sensitive data while supporting deduplication, the convergent encryption technique has been proposed to encrypt the data before\r\noutsourcing. To better protect data security, this paper makes the first attempt to formally address the problem of authorized data\r\ndeduplication. Different from traditional deduplication systems, the differential privileges of users are further considered in duplicate\r\ncheck besides the data itself. We also present several new deduplication constructions supporting authorized duplicate check in a hybrid\r\ncloud architecture. Security analysis demonstrates that our scheme is secure in terms of the definitions specified in the proposed\r\nsecurity model.','Jin Li','deduplication',0),(10,'Oruta: Privacy-Preserving Public Auditing for Shared Data in the Cloud','Abstract?With cloud storage services, it is commonplace for data to be not only stored in the cloud, but also shared across multiple\r\nusers. However, public auditing for such shared data ? while preserving identity privacy ? remains to be an open challenge. In this\r\npaper, we propose the first privacy-preserving mechanism that allows public auditing on shared data stored in the cloud. In particular,\r\nwe exploit ring signatures to compute the verification information needed to audit the integrity of shared data.','Boyang Wang','oruta cloud',0);

/*Table structure for table `register` */

DROP TABLE IF EXISTS `register`;

CREATE TABLE `register` (
  `uid` int(11) default NULL,
  `name` varchar(100) default NULL,
  `addr` varchar(500) default NULL,
  `tele` varchar(100) default NULL,
  `email` varchar(100) default NULL,
  `un` varchar(100) NOT NULL,
  `pwd` varchar(100) default NULL,
  PRIMARY KEY  (`un`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `register` */

insert  into `register`(`uid`,`name`,`addr`,`tele`,`email`,`un`,`pwd`) values (1,'MD SAJID','2nd street','8121345345','sajid@in.com','sajid','sajid'),(2,'MD SAJID','Ameerpet, Hyderabad','08121953811','cloudtechnologiesprojects@gmail.com','sajid@ct','sajid');

/*Table structure for table `temp` */

DROP TABLE IF EXISTS `temp`;

CREATE TABLE `temp` (
  `keywords` varchar(500) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `temp` */

insert  into `temp`(`keywords`) values ('cloud'),('online database'),('secure cloud'),('encryption cloud'),('online database'),('deduplication'),('oruta cloud');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
