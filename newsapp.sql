-- MySQL dump 10.13  Distrib 8.0.22, for Win64 (x86_64)
--
-- Host: localhost    Database: newsapp
-- ------------------------------------------------------
-- Server version	5.7.31-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `menu`
--

DROP TABLE IF EXISTS `menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tittle` varchar(45) NOT NULL,
  `subtitle` varchar(45) NOT NULL,
  `urlimage` varchar(45) NOT NULL,
  `parentcode` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu`
--

LOCK TABLES `menu` WRITE;
/*!40000 ALTER TABLE `menu` DISABLE KEYS */;
INSERT INTO `menu` VALUES (1,'Sports R','Hot sport\'s news ...','https://reactnative.dev/img/tiny_logo.png','0'),(2,'Photo','Photograph here we are','.','0'),(3,'Culture','Food and Travel VietNam','.','0'),(4,'Premiere League','Hot News with England Soccer','.','1'),(5,'Champion Leauge','Hot News with UEFA Champion Leauge','.','1'),(6,'La Liga','Hot News with La Liga','.','1'),(7,'Mountain','Photo of Majetic Moutain','.','2'),(8,'Sky','Photo of Wonder Sky','.','2'),(9,'Ocean','Photo of Beautiful Ocean','.','2'),(10,'Traditional Food','Traditional Food In VietNam','.','3'),(11,'Tralvel HaNoi','Welcome to HaNoi City','.','3'),(12,'Resort Five Star','A Great Resort ...','.','3'),(13,'D13 CNPM3','CNPM3 hoc api tes','.','3');
/*!40000 ALTER TABLE `menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `note`
--

DROP TABLE IF EXISTS `note`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `note` (
  `id` int(12) NOT NULL,
  `tittle` varchar(25) NOT NULL,
  `content` varchar(500) NOT NULL,
  `datetime` varchar(25) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `note`
--

LOCK TABLES `note` WRITE;
/*!40000 ALTER TABLE `note` DISABLE KEYS */;
INSERT INTO `note` VALUES (1,'Hào','Hào 123','26/09/2020'),(2,'Hào','Hào 567','26/09/2020'),(4,'test1','hoang vinh bao','08/09/2020');
/*!40000 ALTER TABLE `note` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbcategorynote`
--

DROP TABLE IF EXISTS `tbcategorynote`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbcategorynote` (
  `catid` int(30) NOT NULL AUTO_INCREMENT,
  `catname` varchar(255) NOT NULL,
  PRIMARY KEY (`catid`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbcategorynote`
--

LOCK TABLES `tbcategorynote` WRITE;
/*!40000 ALTER TABLE `tbcategorynote` DISABLE KEYS */;
INSERT INTO `tbcategorynote` VALUES (1,'Sức khỏe');
/*!40000 ALTER TABLE `tbcategorynote` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbclass`
--

DROP TABLE IF EXISTS `tbclass`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbclass` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `clname` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbclass`
--

LOCK TABLES `tbclass` WRITE;
/*!40000 ALTER TABLE `tbclass` DISABLE KEYS */;
INSERT INTO `tbclass` VALUES (1,'CNPM1'),(2,'CNPM2'),(3,'CNPM3'),(4,'QTANM1'),(5,'HTTMDT1'),(6,'HTTMDT2');
/*!40000 ALTER TABLE `tbclass` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbmonhoc`
--

DROP TABLE IF EXISTS `tbmonhoc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbmonhoc` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `mhName` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbmonhoc`
--

LOCK TABLES `tbmonhoc` WRITE;
/*!40000 ALTER TABLE `tbmonhoc` DISABLE KEYS */;
INSERT INTO `tbmonhoc` VALUES (1,'Java'),(2,'Mobile'),(3,'C#'),(4,'LT Web NC'),(5,'CSDL');
/*!40000 ALTER TABLE `tbmonhoc` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbnote`
--

DROP TABLE IF EXISTS `tbnote`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbnote` (
  `noteid` int(30) NOT NULL AUTO_INCREMENT,
  `notename` varchar(255) NOT NULL,
  `notecontent` varchar(255) NOT NULL,
  `notecat` int(30) NOT NULL,
  `date` datetime NOT NULL,
  PRIMARY KEY (`noteid`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbnote`
--

LOCK TABLES `tbnote` WRITE;
/*!40000 ALTER TABLE `tbnote` DISABLE KEYS */;
INSERT INTO `tbnote` VALUES (29,'D','F',0,'2021-01-05 00:00:00'),(31,'LaLa','65221',912345678,'2020-12-09 00:00:00'),(38,'','',0,'2021-01-05 00:00:00'),(45,'vdjdb','d ddjb ',1,'2021-01-05 00:00:00'),(46,'','',0,'2021-01-05 00:00:00'),(47,'','',0,'2021-01-05 00:00:00'),(48,'','',0,'2021-01-05 00:00:00');
/*!40000 ALTER TABLE `tbnote` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbscore`
--

DROP TABLE IF EXISTS `tbscore`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbscore` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `studentID` int(11) DEFAULT NULL,
  `monhocID` int(11) DEFAULT NULL,
  `score` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbscore`
--

LOCK TABLES `tbscore` WRITE;
/*!40000 ALTER TABLE `tbscore` DISABLE KEYS */;
INSERT INTO `tbscore` VALUES (1,3,1,9),(2,3,2,9),(3,3,3,10),(4,3,4,8),(5,3,5,10);
/*!40000 ALTER TABLE `tbscore` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbstudent`
--

DROP TABLE IF EXISTS `tbstudent`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbstudent` (
  `id` int(12) NOT NULL AUTO_INCREMENT,
  `stName` varchar(45) NOT NULL,
  `birthday` datetime DEFAULT NULL,
  `stsex` tinyint(4) DEFAULT NULL,
  `classid` int(11) DEFAULT NULL,
  `address` varchar(145) DEFAULT NULL,
  `img` varchar(445) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbstudent`
--

LOCK TABLES `tbstudent` WRITE;
/*!40000 ALTER TABLE `tbstudent` DISABLE KEYS */;
INSERT INTO `tbstudent` VALUES (1,'D13 CNPM3','1987-08-16 00:00:00',1,1,'18 Hoàng Quốc Việt, Cầu Giấy, Hà Nội','https://toplist.vn/images/800px/tiem-chup-anh-the-lay-ngay-dep-nhat-o-hue-chu-de-da-duoc-nhan-cua-kieu-nguyen-317636.jpg'),(2,'Nguyễn Hoàng Minh 123','1987-08-15 00:00:00',1,NULL,'Bắc Từ Liêm, Hà Nội','https://newsmd1fr.keeng.net/tiin/archive/images/20200629/143256_90223325_2410382045884730_9153501852480831488_o.jpg'),(3,'Lâm Hoàng Vinh','1999-07-09 00:00:00',0,2,'16 Nguyễn Văn Cừ, Phường Đông Hòa, Quận Hồng Bàng, TP Hải Phòng','https://2.bp.blogspot.com/-egKrdXSSO4E/WrJ4DPoCwFI/AAAAAAAAA3U/wyhvgGrfmaUvBr8ummAavf_1yRS2D3aKACLcBGAs/s1600/cach%2Bchup%2Banh%2Bthe%2Bdep%2B8.jpg'),(4,'Hoàng Văn Thụ','1995-07-28 00:00:00',1,2,'Quế Võ, Bắc Ninh','https://toplist.vn/images/800px/tiem-chup-anh-the-lay-ngay-dep-nhat-o-hue-chu-de-da-duoc-nhan-cua-kieu-nguyen-317636.jpg'),(5,'Cấn Đức Điệp','1992-04-17 00:00:00',1,4,'Số 15, Nguyễn Công Hoan, Thành Phố Thanh Hóa, Thanh Hóa','https://toplist.vn/images/800px/tiem-chup-anh-the-lay-ngay-dep-nhat-o-hue-chu-de-da-duoc-nhan-cua-kieu-nguyen-317636.jpg'),(6,'Đỗ Thị Thu Hương','1990-08-11 00:00:00',1,NULL,'Cổ Nhuế 1, Bắc Từ Liêm, Hà Nội','https://toplist.vn/images/800px/tiem-chup-anh-the-lay-ngay-dep-nhat-o-hue-chu-de-da-duoc-nhan-cua-kieu-nguyen-317636.jpg');
/*!40000 ALTER TABLE `tbstudent` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-12-06 13:33:01
