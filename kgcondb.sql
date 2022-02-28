-- MySQL dump 10.14  Distrib 5.5.68-MariaDB, for Linux (x86_64)
--
-- Host: localhost    Database: webdb
-- ------------------------------------------------------
-- Server version	5.5.68-MariaDB

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
-- Table structure for table `board_free`
--

DROP TABLE IF EXISTS `board_free`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `board_free` (
  `No` int(11) NOT NULL AUTO_INCREMENT,
  `Title` varchar(50) NOT NULL,
  `Content` varchar(500) NOT NULL,
  `Userid` varchar(50) NOT NULL,
  `Date` varchar(50) NOT NULL,
  PRIMARY KEY (`No`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `board_free`
--

LOCK TABLES `board_free` WRITE;
/*!40000 ALTER TABLE `board_free` DISABLE KEYS */;
INSERT INTO `board_free` VALUES (1,'test','1234','1','2022-02-01'),(2,'2','123','1','2022-02-01'),(3,'기타 연주자 구합니다','초보 밴드입니다\r\n연락주세요','Test','2022-02-02');
/*!40000 ALTER TABLE `board_free` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `board_notice`
--

DROP TABLE IF EXISTS `board_notice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `board_notice` (
  `No` int(11) NOT NULL AUTO_INCREMENT,
  `Title` varchar(50) NOT NULL,
  `Content` varchar(500) NOT NULL,
  `Userid` varchar(50) NOT NULL,
  `Date` varchar(50) NOT NULL,
  PRIMARY KEY (`No`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `board_notice`
--

LOCK TABLES `board_notice` WRITE;
/*!40000 ALTER TABLE `board_notice` DISABLE KEYS */;
INSERT INTO `board_notice` VALUES (1,'2022 02-20 아이유 비대면 콘서트 정보','1부 : Love for Moment\r\n1. 하루 끝\r\n2. 팔레트 (Acoustic Ver.)\r\n3. 가을 아침\r\n4. 금요일에 만나요\r\n5. 비밀의 화원\r\n\r\n2부 : Love for Message\r\n6. Red Queen[편곡]\r\n7. 잼잼\r\n8. 스물셋\r\n9. 삐삐\r\n10. 내 손을 잡아\r\n11. 있잖아 (Rock Ver.)\r\n12. 어젯밤 이야기\r\n13. 잊어버리지마\r\n14. Oasis\r\n\r\n3부 : Love for Meaning\r\n15. 너의 의미 (Feat. 유애나)\r\n16. 무릎 (Guitar Ver.)\r\n17. 싫은 날\r\n18. 별을 찾는 아이\r\n19. 자장가\r\n20. 밤편지\r\n\r\nKG Concert\r\n18:00 ~ 19:00\r\n','Master','2022-02-04');
/*!40000 ALTER TABLE `board_notice` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `board_stream`
--

DROP TABLE IF EXISTS `board_stream`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `board_stream` (
  `No` int(11) NOT NULL AUTO_INCREMENT,
  `Title` varchar(50) NOT NULL,
  `Userid` varchar(50) NOT NULL,
  `Date` varchar(50) NOT NULL,
  `url` varchar(500) NOT NULL,
  `runtime` varchar(50) NOT NULL,
  `price` varchar(50) NOT NULL,
  PRIMARY KEY (`No`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `board_stream`
--

LOCK TABLES `board_stream` WRITE;
/*!40000 ALTER TABLE `board_stream` DISABLE KEYS */;
INSERT INTO `board_stream` VALUES (1,'2022 IU(아이유) 비대면 콘서트','Master','2022-02-04','3iM_06QeZi8','2022-02-20 18:00 ~ 19:30','30,000');
/*!40000 ALTER TABLE `board_stream` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `member`
--

DROP TABLE IF EXISTS `member`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `member` (
  `No` int(11) NOT NULL AUTO_INCREMENT,
  `ID` varchar(50) NOT NULL,
  `PW` varchar(100) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `phone` varchar(50) NOT NULL,
  `addr` varchar(50) NOT NULL,
  `Mail` varchar(50) NOT NULL,
  `credit` varchar(50) NOT NULL,
  PRIMARY KEY (`No`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `member`
--

LOCK TABLES `member` WRITE;
/*!40000 ALTER TABLE `member` DISABLE KEYS */;
INSERT INTO `member` VALUES (1,'Master','*E6CC90B878B948C35E92B003C792C46C58C4AF40','1','1','1','1@1','');
/*!40000 ALTER TABLE `member` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reply_free`
--

DROP TABLE IF EXISTS `reply_free`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reply_free` (
  `reply_No` int(11) NOT NULL AUTO_INCREMENT,
  `board_No` int(11) NOT NULL,
  `coments` varchar(500) NOT NULL,
  `userid` varchar(50) NOT NULL,
  `date` varchar(50) NOT NULL,
  PRIMARY KEY (`reply_No`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reply_free`
--

LOCK TABLES `reply_free` WRITE;
/*!40000 ALTER TABLE `reply_free` DISABLE KEYS */;
INSERT INTO `reply_free` VALUES (1,1,'반가워요','user1','2022-02-04'),(2,1,'asd','test','2022-02-04'),(3,1,'asdasd','test','2022-02-04');
/*!40000 ALTER TABLE `reply_free` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-02-19 22:16:21
