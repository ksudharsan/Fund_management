-- MySQL dump 10.13  Distrib 5.5.47, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: funds
-- ------------------------------------------------------
-- Server version	5.5.47-0ubuntu0.14.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `discipline`
--

DROP TABLE IF EXISTS `discipline`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `discipline` (
  `disci_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) DEFAULT NULL,
  `school_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`disci_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discipline`
--

LOCK TABLES `discipline` WRITE;
/*!40000 ALTER TABLE `discipline` DISABLE KEYS */;
INSERT INTO `discipline` VALUES (1,'Physics',1),(2,'Chemistry',1),(3,'Centre of Astronomy',NULL),(4,'CSE',2),(5,'EE',2),(6,'ME',2),(7,'MSE',NULL),(8,'BSBE',NULL),(9,'HSS',3),(10,'Mathematics',1),(11,'Admin',NULL),(12,'ARC',NULL),(13,'Research Infrastructure',NULL),(14,'Central Workshop(ME & GB)',NULL),(15,'Computer Centre',NULL),(16,'Library',NULL),(17,'Miscellaneous',NULL);
/*!40000 ALTER TABLE `discipline` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `equip_accheads`
--

DROP TABLE IF EXISTS `equip_accheads`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `equip_accheads` (
  `id` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `equip_accheads`
--

LOCK TABLES `equip_accheads` WRITE;
/*!40000 ALTER TABLE `equip_accheads` DISABLE KEYS */;
INSERT INTO `equip_accheads` VALUES (1,'Actual Expenses Booked & Payment Done'),(2,'Actual Expenses Booked'),(3,'PO in process(CWIP)'),(4,'PO in process(Commitment)'),(5,'Indents in process'),(6,'Advance Paid but Expenses not booked');
/*!40000 ALTER TABLE `equip_accheads` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `equip_capitalheads`
--

DROP TABLE IF EXISTS `equip_capitalheads`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `equip_capitalheads` (
  `id` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `equip_capitalheads`
--

LOCK TABLES `equip_capitalheads` WRITE;
/*!40000 ALTER TABLE `equip_capitalheads` DISABLE KEYS */;
INSERT INTO `equip_capitalheads` VALUES (1,'Equipments'),(2,'Furnitures & Fixtures'),(3,'Computers & Peripherals'),(4,'Software'),(5,'Books'),(6,'Others');
/*!40000 ALTER TABLE `equip_capitalheads` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `equip_heads`
--

DROP TABLE IF EXISTS `equip_heads`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `equip_heads` (
  `id` int(11) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `equip_heads`
--

LOCK TABLES `equip_heads` WRITE;
/*!40000 ALTER TABLE `equip_heads` DISABLE KEYS */;
INSERT INTO `equip_heads` VALUES (1,'Physics'),(2,'Chemistry'),(3,'Centre of Astronomy'),(4,'CSE'),(5,'EE'),(6,'ME'),(7,'MSE'),(8,'BSBE'),(9,'HSS'),(10,'Mathematics'),(11,'Admin'),(12,'ARC'),(13,'Research Infrastructure'),(14,'Central Workshop(ME & GB)'),(15,'Computer Centre'),(16,'Library'),(17,'Miscellaneous');
/*!40000 ALTER TABLE `equip_heads` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `est_val`
--

DROP TABLE IF EXISTS `est_val`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `est_val` (
  `Budgettype` int(11) DEFAULT NULL,
  `Disci_id` int(11) DEFAULT NULL,
  `Revised_Est` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `est_val`
--

LOCK TABLES `est_val` WRITE;
/*!40000 ALTER TABLE `est_val` DISABLE KEYS */;
INSERT INTO `est_val` VALUES (1,1,1234576576),(1,4,2147483647),(1,27,123456),(1,7,123456),(2,1,12345678);
/*!40000 ALTER TABLE `est_val` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `funddetails`
--

DROP TABLE IF EXISTS `funddetails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `funddetails` (
  `EntryDate` date DEFAULT NULL,
  `Particulars` varchar(2000) DEFAULT NULL,
  `Year` varchar(20) DEFAULT NULL,
  `Indentor` varchar(255) DEFAULT NULL,
  `Indent_no` int(11) DEFAULT NULL,
  `PO_no` int(11) DEFAULT NULL,
  `IndentAmt` int(11) DEFAULT NULL,
  `Amount` int(11) DEFAULT NULL,
  `Remarks` varchar(2000) DEFAULT NULL,
  `Budgettype` int(11) DEFAULT NULL,
  `Accheads` int(11) DEFAULT NULL,
  `Discipline` int(11) DEFAULT NULL,
  `Equip_captype` int(11) DEFAULT NULL,
  `Equip_exptype` int(11) DEFAULT NULL,
  `IndentType` int(11) DEFAULT NULL,
  `IndentVal` varchar(100) DEFAULT NULL,
  `SNo` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  UNIQUE KEY `SNo` (`SNo`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `funddetails`
--

LOCK TABLES `funddetails` WRITE;
/*!40000 ALTER TABLE `funddetails` DISABLE KEYS */;
INSERT INTO `funddetails` VALUES ('2015-12-09','hjvkjhbj','2011-12','Sudharsan',6587,8909908,643458,656546,'Yo Bitch..!!',2,4,1,1,2,1,NULL,1),('2015-12-09','xilinx','2014-15','Priyanshu',12345,123,1234567,1234567,'You Jackass...!!',2,3,1,4,1,1,NULL,2),('2015-12-21','76','87698768','78976879',6897,68,976,987,'6897',1,3,10,NULL,NULL,1,NULL,4),('2016-01-05','gfju','1234-56','Ravi',5487,76587,56465,56675,'Jon Snow is Alive..!!',1,4,1,NULL,NULL,2,NULL,5),('2016-01-20','sdadfsfd','1234-56','priyanshu',453254,5435,12345,5436,'gfsdujhkl',1,2,1,NULL,NULL,1,NULL,6),('2015-12-15','SUDHARSAN','1234-34','shgdjh',6548769,546789,437658,3337654,'fdsdhgjkoiuholi',1,3,1,NULL,NULL,1,NULL,7),('2016-02-09','HP LAPTOP','2014-15','Sid',NULL,NULL,NULL,1234567,'Machayaaaaaaaa',2,3,4,1,2,2,NULL,8),('2016-02-01','Mobile','1234-56','$udharsan',NULL,NULL,NULL,40000,'O Draconian Devil..!!',1,4,1,NULL,NULL,3,NULL,9),('2016-03-01','laptop','2014-15','SAI',NULL,NULL,NULL,12000,'dgsfgkjlkgh',1,1,3,NULL,NULL,3,NULL,10),('2016-02-01','Iphone','2014-15','Harshit',123,1234,12345,548123,'ASDFGHJKL',1,1,1,NULL,NULL,1,'QWERTY',11),('2016-02-03','Iphone','2014-15','Harshit',NULL,NULL,NULL,1234,'PS Find Robert Langdon',2,1,1,1,2,2,NULL,12),('2016-02-02','laptop','2014-15','Ayush',345,215,12345,12345,'Holy Grail..!!',2,4,1,4,2,1,NULL,13),('2016-01-04','Game Of thrones','2014-15','Sudharsan',678,456,45678,45678,'Enjoooooooooy',2,3,1,5,1,1,NULL,14),('2016-02-04','Arduino','2011-12','Abishek',NULL,NULL,NULL,9886,'qwertyuio',1,2,2,NULL,NULL,2,NULL,15);
/*!40000 ALTER TABLE `funddetails` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `recur_accheads`
--

DROP TABLE IF EXISTS `recur_accheads`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `recur_accheads` (
  `id` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `recur_accheads`
--

LOCK TABLES `recur_accheads` WRITE;
/*!40000 ALTER TABLE `recur_accheads` DISABLE KEYS */;
INSERT INTO `recur_accheads` VALUES (1,'Actual Expenses Booked & Payment Done'),(2,'PO in process'),(3,'Indents in process'),(4,'Advance Paid but Expenses not booked');
/*!40000 ALTER TABLE `recur_accheads` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `recur_heads`
--

DROP TABLE IF EXISTS `recur_heads`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `recur_heads` (
  `id` int(11) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `recur_heads`
--

LOCK TABLES `recur_heads` WRITE;
/*!40000 ALTER TABLE `recur_heads` DISABLE KEYS */;
INSERT INTO `recur_heads` VALUES (1,'Physics'),(2,'Chemistry'),(3,'Mathematics'),(4,'CSE'),(5,'EE'),(6,'ME'),(7,'Centre of Astronomy'),(8,'MSE'),(9,'BSBE'),(10,'HSS'),(11,'Central Workshop'),(12,'ARC'),(13,'Other-Administraation'),(14,'Students Expenditure'),(15,'Vehicle Running & Maintenance'),(16,'Placement Expenses'),(17,'Repair & Maintenance'),(18,'Shifting Charges'),(19,'Medical Treatment'),(20,'Renewal of Software'),(21,'Insurance premium vehicle'),(22,'Waste Testing & Disposal'),(23,'Convocation Expenses'),(24,'Miscellaneous Expenses'),(25,'Postage & Telegram'),(26,'Telephone & Internet Charges'),(27,'Inter IIT Sports Meet (Staff & Faculty)'),(28,'Printing & Stationary'),(29,'Seminar/Conferences/Workshop');
/*!40000 ALTER TABLE `recur_heads` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `school`
--

DROP TABLE IF EXISTS `school`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `school` (
  `school_id` int(11) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `school`
--

LOCK TABLES `school` WRITE;
/*!40000 ALTER TABLE `school` DISABLE KEYS */;
INSERT INTO `school` VALUES (1,'School of Basic Sciences'),(2,'School of Engineering'),(3,'School of HSS');
/*!40000 ALTER TABLE `school` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `username` varchar(50) NOT NULL DEFAULT '',
  `password` varchar(100) DEFAULT NULL,
  `usertype` varchar(10) DEFAULT NULL,
  `id_val` int(11) DEFAULT NULL,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES ('123','83ec45960b80c035a0068df1d9df5aa8','admin',NULL),('123123','d8578edf8458ce06fbc5bb76a58c5ca4','admin_limi',NULL),('123421334','2341234','hos',1),('12342134','2341234','hos',2),('1234wdff21334','2341234','hod',14),('Sudharsan','e2c23d16ac5ec86d82dd1c6902e15887','admin',NULL);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-04-07  3:58:16
