CREATE DATABASE  IF NOT EXISTS `alphalogic` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `alphalogic`;
-- MySQL dump 10.13  Distrib 5.6.25, for Win64 (x86_64)
--
-- Host: localhost    Database: alphalogic
-- ------------------------------------------------------
-- Server version	5.6.25-log

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
-- Table structure for table `customerpersonalinfo`
--

DROP TABLE IF EXISTS `customerpersonalinfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `customerpersonalinfo` (
  `cPId` int(255) NOT NULL AUTO_INCREMENT,
  `cPhoneNo` varchar(12) DEFAULT '0000000000',
  `cCity` varchar(45) DEFAULT 'Not Defined',
  `cAddress` varchar(256) DEFAULT 'Not Defined',
  `cPostalCode` varchar(12) DEFAULT '00000',
  `cId` int(255) NOT NULL,
  `cImageUrl` varchar(255) DEFAULT 'https://cdn1.iconfinder.com/data/icons/unique-round-blue/93/user-512.png',
  PRIMARY KEY (`cPId`),
  KEY `customer-personalinfo_idx` (`cId`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customerpersonalinfo`
--

LOCK TABLES `customerpersonalinfo` WRITE;
/*!40000 ALTER TABLE `customerpersonalinfo` DISABLE KEYS */;
INSERT INTO `customerpersonalinfo` VALUES (1,'1234567890','North','Winterfell','1081',13,'https://cdn1.iconfinder.com/data/icons/unique-round-blue/93/user-512.png'),(2,'1111111111','test','test','11111',14,'https://cdn1.iconfinder.com/data/icons/unique-round-blue/93/user-512.png'),(3,'','','','',16,'https://cdn1.iconfinder.com/data/icons/unique-round-blue/93/user-512.png'),(4,'1111111111','Najaf','......','1111',113,'https://cdn1.iconfinder.com/data/icons/unique-round-blue/93/user-512.png'),(5,'9990861759','Gr.Noida','K-390 Jv','530',536,'https://cdn1.iconfinder.com/data/icons/unique-round-blue/93/user-512.png'),(6,'77777777','gkhgkh','gjhg','868652',784,'https://cdn1.iconfinder.com/data/icons/unique-round-blue/93/user-512.png'),(7,'7987987977','jkldjflds','sjlfhdds43','4324',785,'https://cdn1.iconfinder.com/data/icons/unique-round-blue/93/user-512.png'),(8,'9990861759','GrNoida','K-390Jv','55434',786,'https://cdn1.iconfinder.com/data/icons/unique-round-blue/93/user-512.png'),(9,'79798','hkj','khvk','3303',787,'https://cdn1.iconfinder.com/data/icons/unique-round-blue/93/user-512.png'),(10,'121212121','GrNoida','K-390Jv','6868',788,'https://cdn1.iconfinder.com/data/icons/unique-round-blue/93/user-512.png'),(11,'9990861759','jhansi','fdfedf4','4344',789,'https://cdn1.iconfinder.com/data/icons/unique-round-blue/93/user-512.png'),(12,'9990861759','jhansi','Winterfell','7997',790,'https://cdn1.iconfinder.com/data/icons/unique-round-blue/93/user-512.png'),(13,'9990861759','jhansi','Winterfell','41778',791,'https://cdn1.iconfinder.com/data/icons/unique-round-blue/93/user-512.png'),(14,'9990861759','jhansi','Winterfell','41778',792,'https://cdn1.iconfinder.com/data/icons/unique-round-blue/93/user-512.png'),(15,'86789687969','GHJGHJ','GJGHJG','687684',793,'https://cdn1.iconfinder.com/data/icons/unique-round-blue/93/user-512.png'),(16,'86789687969','GHJGHJ','GJGHJG','687684',794,'https://cdn1.iconfinder.com/data/icons/unique-round-blue/93/user-512.png'),(17,'86789687969','GHJGHJ','GJGHJG','687684',795,'https://cdn1.iconfinder.com/data/icons/unique-round-blue/93/user-512.png'),(18,'9990861759','jhansi','Winterfell','79887',796,'https://cdn1.iconfinder.com/data/icons/unique-round-blue/93/user-512.png'),(19,'22323','lhlk','klhjljhlk','687687',797,'https://cdn1.iconfinder.com/data/icons/unique-round-blue/93/user-512.png'),(20,'1111111111','Gr.Noida','Winterfell','987895',799,'C:\\Moonis\\JavaCodes\\Neon\\AlphaLogicAdmin\\WebContent\\uploads\\799.jpg'),(21,'1111111111','jhansi','Winterfell','32248',800,'C:\\Moonis\\JavaCodes\\Neon\\AlphaLogicAdmin\\WebContent\\uploads\\800.jpg');
/*!40000 ALTER TABLE `customerpersonalinfo` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-08-10 21:04:40
