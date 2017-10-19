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
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `customer` (
  `cId` int(255) NOT NULL AUTO_INCREMENT,
  `cFirstName` varchar(255) NOT NULL,
  `cLastName` varchar(255) NOT NULL,
  `cEmail` varchar(255) NOT NULL,
  `cPassword` varchar(255) DEFAULT 'XXX123XXX',
  `cStatus` varchar(8) DEFAULT '1',
  PRIMARY KEY (`cId`),
  UNIQUE KEY `cEmail` (`cEmail`)
) ENGINE=InnoDB AUTO_INCREMENT=801 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer`
--

LOCK TABLES `customer` WRITE;
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
INSERT INTO `customer` VALUES (1,'Moonis','Abdi','moonisabidi@me.com','matrix786','1'),(2,'Steve','Jobs','steve@apple.com','steve123','1'),(13,'Brandon','Stark','brandon@winterfell','XXX123XXX','0'),(14,'Test','Testa','test@test.com','XXX123XXX','0'),(16,'','','','XXX123XXX','0'),(113,'Ya Ali','Madad','yam@yam.com','XXX123XXX','0'),(536,'Test','Testa','dareloder@gcom','XXX123XXX','0'),(784,'t','t','ry@h.com','XXX123XXX','0'),(785,'Test','Testa','dareloder@gmailllll.com','XXX123XXX','0'),(786,'Test','Testa','lfhkdfjghdfkjlx@gm.com','XXX123XXX','0'),(787,'Test','Testa','dd@FDFD.COM','XXX123XXX','0'),(788,'Test','Testa','dareloder@gmail.commm','XXX123XXX','0'),(789,'Test','Testa','darelohhhh@gmail.comll','XXX123XXX','0'),(790,'Test','Testa','dareloder@gmail.comlllllllll','XXX123XXX','0'),(791,'Matrix','Inc','matrix@gmai.com','XXX123XXX','0'),(792,'Matrix','Inc','matrix@gmai.coml','XXX123XXX','0'),(793,'zzzzzzzz','XXXX','DDSDSD@VVDV.COM','XXX123XXX','0'),(794,'zzzzzzzz','XXXX','DDSDSD@VVDV.COMl','XXX123XXX','0'),(795,'zzzzzzzz','XXXX','DDSDSD@VVDV.COMlk','XXX123XXX','0'),(796,'Dr','Strange','dr@strange.com','XXX123XXX','1'),(797,'Steven','Strange','steven@strange','XXX123XXX','1'),(798,'Mega','Zone','mega@zone.com','XXX123XXX','1'),(799,'Ultra','Zone','ultra@zone.com','XXX123XXX','1'),(800,'Sandesh','Timilsina','sandesh@timilsina.com','XXX123XXX','1');
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-08-10 21:04:37
