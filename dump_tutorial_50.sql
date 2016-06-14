--
--
-- COMMAND LINE: mysqldump springtutorial -u root -p 
--Enter password: 
--
--
-- MySQL dump 10.13  Distrib 5.6.31, for Linux (x86_64)
--
-- Host: localhost    Database: springtutorial
-- ------------------------------------------------------
-- Server version       5.6.31

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
mysqldump: Couldn't find table: "mysqllocaldba01"
megazor@m5:/me/code/spring-tutorial-linux$ mysqldump springtutorial -u root -p
Enter password: 
-- MySQL dump 10.13  Distrib 5.6.31, for Linux (x86_64)
--
-- Host: localhost    Database: springtutorial
-- ------------------------------------------------------
-- Server version       5.6.31

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
-- Table structure for table `offers`
--

DROP TABLE IF EXISTS `offers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `offers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `email` varchar(60) NOT NULL,
  `text` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3010 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `offers`
--

LOCK TABLES `offers` WRITE;
/*!40000 ALTER TABLE `offers` DISABLE KEYS */;
INSERT INTO `offers` VALUES (1000,'Mike','mike@nowhereatall.com','Web design, very cheap'),(1001,'Bob','bob@nowhereatall.com','Will write Java for your organization'),(1002,'Sue','sue@nowhereatall.com','PHP coding'),(1003,'Pete','pete@nowhereatall.com','Will write Java for your organization'),(1004,'Kate','kate@nowhereatall.com','Web design, very cheap'),(1005,'Mary','mary@nowhereatall.com','PHP coding'),(2999,'Dave','dave@caveofprogramming.com','Coding Java'),(3000,'Dave','dave@caveofprogramming.com','Coding Java'),(3001,'Dave','dave@caveofprogramming.com','Coding Java'),(3002,'Karen','karen@caveofprogramming.com','Software testing to order.'),(3003,'Dave','dave@caveofprogramming.com','Coding Java'),(3004,'Karen','karen@caveofprogramming.com','Software testing to order.'),(3005,'Albert','albert@caveofprogramming.com','Agile guru'),(3006,'Albert','albert@caveofprogramming.com','Agile guru'),(3007,'Claire','claire@caveofprogramming.com','Web Development to fit any budget'),(3008,'Dave','dave@caveofprogramming.com','Cash for Software'),(3009,'Karen','karen@caveofprogramming.com','Elegent Web Design');
/*!40000 ALTER TABLE `offers` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-06-10 23:52:25

