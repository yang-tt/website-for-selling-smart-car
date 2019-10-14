-- MySQL dump 10.13  Distrib 8.0.11, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: javawebdb
-- ------------------------------------------------------
-- Server version	8.0.11

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `productinfo`
--

DROP TABLE IF EXISTS `productinfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `productinfo` (
  `proID` int(11) NOT NULL,
  `proName` varchar(45) DEFAULT NULL,
  `proImg` varchar(500) DEFAULT NULL,
  `proPrice` double DEFAULT NULL,
  `proDetail` varchar(45) DEFAULT NULL,
  `proNum` int(11) DEFAULT NULL,
  PRIMARY KEY (`proID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `productinfo`
--

LOCK TABLES `productinfo` WRITE;
/*!40000 ALTER TABLE `productinfo` DISABLE KEYS */;
INSERT INTO `productinfo` VALUES (1,'track robot','https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1531759886169&di=e81285421732b0033d6cffd8862af064&imgtype=jpg&src=http%3A%2F%2Fimg1.imgtn.bdimg.com%2Fit%2Fu%3D1751366736%2C4103812868%26fm%3D214%26gp%3D0.jpg',5000,'type:intellegent weight:7kg',2),(2,'serve robot','http://www.agvbaike.com/2016/11/02/5530ce4d8474e.jpg',2000,'type:serve weight:50kg',113),(3,'camera robot','http://bpic.ooopic.com/12/58/38/78bOOOPIC37_1024.jpg!/fw/750/quality/90/unsharp/true/compress/true/watermark/url/bG9nby53YXRlci52NS5wbmc=/repeat/true/align/center/format/jpg',4500,'type:camera weight:5kg',35),(4,'cooking robot','http://img01.taopic.com/160313/240371-1603131Q63373.jpg',6000,'type:serve weight:30kg',18),(5,'sweeping robot','https://photo.16pic.com/00/52/50/16pic_5250043_b.jpg',7000,'type:serve weight:10kg',23),(6,'speaking robot','https://img.zcool.cn/community/017dbf595bf862a8012193a3e5ecb2.jpg@2o.jpg',3000,'type:serve weight:5kg',50),(7,'controlling robot','http://img1.cache.netease.com/catchpic/9/9F/9FF4EE53B603696085F1AD64C669CBBF.jpg',1000,'type:intellgent weight:1kg',60);
/*!40000 ALTER TABLE `productinfo` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-07-19 16:28:12
