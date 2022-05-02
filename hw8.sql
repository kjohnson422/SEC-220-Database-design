-- MySQL dump 10.13  Distrib 8.0.28, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: school
-- ------------------------------------------------------
-- Server version	8.0.28

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `class`
--

DROP TABLE IF EXISTS `class`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `class` (
  `id` int NOT NULL AUTO_INCREMENT,
  `class_subject` varchar(30) NOT NULL,
  `studentId` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  KEY `studentId` (`studentId`),
  CONSTRAINT `class_ibfk_1` FOREIGN KEY (`studentId`) REFERENCES `student` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `class`
--

LOCK TABLES `class` WRITE;
/*!40000 ALTER TABLE `class` DISABLE KEYS */;
INSERT INTO `class` VALUES (2,'Database Design',1234),(3,'Penetration Testing',123),(4,'Networking',12345),(5,'Cryptography',4234),(6,'Python Programming',347262),(7,'Linux Server Administration',73623),(8,'C++ Programming',12348324),(9,'Powershell Programming',83732),(10,'Digital Forensics',837324),(11,'Mobile Device Forensics',8373242);
/*!40000 ALTER TABLE `class` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student`
--

DROP TABLE IF EXISTS `student`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `student` (
  `id` int NOT NULL AUTO_INCREMENT,
  `firstname` varchar(15) DEFAULT NULL,
  `lastname` varchar(15) DEFAULT NULL,
  `studentID` int DEFAULT NULL,
  `email` varchar(30) DEFAULT NULL,
  `classid` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student`
--

LOCK TABLES `student` WRITE;
/*!40000 ALTER TABLE `student` DISABLE KEYS */;
INSERT INTO `student` VALUES (1,'Kris','Johnson',NULL,'kjohnson422@g.rwu.edu',1234),(2,'Nathan','Gershman',NULL,'ngershman123@g.rwu.edu',123),(3,'Evan','Isaac',NULL,'eisaac346@g.rwu.edu',12345),(4,'Matt','King',NULL,'mking453@g.rwu.edu',4234),(5,'John','Smith',NULL,'jsmith734@g.rwu.edu',347262),(6,'Jane','Doe',NULL,'jdoe423@g.rwu.edu',73623),(7,'John','Doe',NULL,'jdoe754@g.rwu.edu',12348324),(8,'Homer','Simpson',NULL,'hsimpson610@g.rwu.edu',83732),(9,'Marge','Simpson',NULL,'msimpson683@g.rwu.edu',837324),(10,'Bart','Simpson',NULL,'bsimpson091@g.rwu.edu',8373242);
/*!40000 ALTER TABLE `student` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student_address`
--

DROP TABLE IF EXISTS `student_address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `student_address` (
  `id` int NOT NULL AUTO_INCREMENT,
  `street` varchar(20) NOT NULL,
  `num` int NOT NULL,
  `town` varchar(20) NOT NULL,
  `zip` int NOT NULL,
  `studentId` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  KEY `studentId` (`studentId`),
  CONSTRAINT `student_address_ibfk_1` FOREIGN KEY (`studentId`) REFERENCES `student` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student_address`
--

LOCK TABLES `student_address` WRITE;
/*!40000 ALTER TABLE `student_address` DISABLE KEYS */;
INSERT INTO `student_address` VALUES (1,'Old Ferry Road',1,'Bristol',2809,1234),(2,'Old Ferry Road',1,'Bristol',2809,123),(3,'Old Ferry Road',1,'Bristol',2809,12345),(4,'Old Ferry Road',1,'Bristol',2809,4234),(5,'Old Ferry Road',1,'Bristol',2809,347262),(6,'Old Ferry Road',1,'Bristol',2809,73623),(7,'Old Ferry Road',1,'Bristol',2809,12348324),(8,'Old Ferry Road',1,'Bristol',2809,83732),(9,'Old Ferry Road',1,'Bristol',2809,837324),(10,'Old Ferry Road',1,'Bristol',28091,8373242);
/*!40000 ALTER TABLE `student_address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student_class_association`
--

DROP TABLE IF EXISTS `student_class_association`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `student_class_association` (
  `studentId` int NOT NULL,
  `classId` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student_class_association`
--

LOCK TABLES `student_class_association` WRITE;
/*!40000 ALTER TABLE `student_class_association` DISABLE KEYS */;
/*!40000 ALTER TABLE `student_class_association` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-05-02 16:08:46
