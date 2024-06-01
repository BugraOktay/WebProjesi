CREATE DATABASE  IF NOT EXISTS `webproje` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `webproje`;
-- MySQL dump 10.13  Distrib 8.0.33, for Win64 (x86_64)
--
-- Host: localhost    Database: webproje
-- ------------------------------------------------------
-- Server version	8.0.33

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
-- Table structure for table `atama`
--

DROP TABLE IF EXISTS `atama`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `atama` (
  `ogrenci` varchar(100) DEFAULT NULL,
  `hoca` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `atama`
--

LOCK TABLES `atama` WRITE;
/*!40000 ALTER TABLE `atama` DISABLE KEYS */;
INSERT INTO `atama` VALUES ('t1@gmail.com','h1@gmail.com');
/*!40000 ALTER TABLE `atama` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `beslenme`
--

DROP TABLE IF EXISTS `beslenme`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `beslenme` (
  `ogrenci` varchar(100) DEFAULT NULL,
  `pazartesi` varchar(1005) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `beslenme`
--

LOCK TABLES `beslenme` WRITE;
/*!40000 ALTER TABLE `beslenme` DISABLE KEYS */;
INSERT INTO `beslenme` VALUES ('t1@gmail.com','Kahvaltı: Yulaf ezmesi, süt, çeşitli sebzeler, omlet\r\nÖğle: Köfte, çeşitli sebzeler, ceviz\r\nAkşam: Izgara tavuk, bulgur pilavı, çeşitli sebzeler');
/*!40000 ALTER TABLE `beslenme` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hareket`
--

DROP TABLE IF EXISTS `hareket`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hareket` (
  `ogrenci` varchar(100) DEFAULT NULL,
  `hareket1` varchar(45) DEFAULT NULL,
  `hareket2` varchar(45) DEFAULT NULL,
  `hareket3` varchar(45) DEFAULT NULL,
  `hareket4` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hareket`
--

LOCK TABLES `hareket` WRITE;
/*!40000 ALTER TABLE `hareket` DISABLE KEYS */;
INSERT INTO `hareket` VALUES ('t1@gmail.com','leg','Row','Squat','Deadlift');
/*!40000 ALTER TABLE `hareket` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hoca`
--

DROP TABLE IF EXISTS `hoca`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hoca` (
  `eposta` varchar(100) NOT NULL,
  `sifre` varchar(45) DEFAULT NULL,
  `adsoyad` varchar(45) DEFAULT NULL,
  `dogum` varchar(45) DEFAULT NULL,
  `cinsiyet` varchar(45) DEFAULT NULL,
  `telefon` varchar(45) DEFAULT NULL,
  `hedef` varchar(45) DEFAULT NULL,
  `tur` varchar(45) DEFAULT 'h',
  PRIMARY KEY (`eposta`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hoca`
--

LOCK TABLES `hoca` WRITE;
/*!40000 ALTER TABLE `hoca` DISABLE KEYS */;
INSERT INTO `hoca` VALUES ('h1@gmail.com','1234','ali','2024-06-14','Erkek','05354257660','Kiloalma','h'),('h2@gmail.com','1234','oktay','2024-06-28','Kadın','05354257660','Kiloverme','h'),('h3@gmail.com','1234','melhican','2024-06-03','Erkek','1234','Kiloyukoruma','h'),('h4@gmail.com','1234','h3','2024-06-30','Kadın','05354257660','Kasyapma','h'),('oki1@gmail.com','1234',NULL,NULL,NULL,NULL,NULL,'h');
/*!40000 ALTER TABLE `hoca` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mesaj`
--

DROP TABLE IF EXISTS `mesaj`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mesaj` (
  `gonderen` varchar(100) DEFAULT NULL,
  `alici` varchar(105) DEFAULT NULL,
  `mesaj` varchar(400) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mesaj`
--

LOCK TABLES `mesaj` WRITE;
/*!40000 ALTER TABLE `mesaj` DISABLE KEYS */;
INSERT INTO `mesaj` VALUES ('oki@gmail.com','h1@gmail.com','Merhaba Hocam');
/*!40000 ALTER TABLE `mesaj` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ogrenci`
--

DROP TABLE IF EXISTS `ogrenci`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ogrenci` (
  `eposta` varchar(100) NOT NULL,
  `sifre` varchar(45) DEFAULT NULL,
  `adsoyad` varchar(45) DEFAULT NULL,
  `dogum` varchar(45) DEFAULT NULL,
  `cinsiyet` varchar(45) DEFAULT NULL,
  `hedef` varchar(45) DEFAULT NULL,
  `telefon` varchar(45) DEFAULT NULL,
  `tur` varchar(45) DEFAULT 'o',
  PRIMARY KEY (`eposta`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ogrenci`
--

LOCK TABLES `ogrenci` WRITE;
/*!40000 ALTER TABLE `ogrenci` DISABLE KEYS */;
INSERT INTO `ogrenci` VALUES ('oki@gmail.com','1234',NULL,NULL,NULL,NULL,NULL,'o'),('t1@gmail.com','1234','Meltem Güzel','2024-06-12','Erkek','Kiloalma','05354257660','o');
/*!40000 ALTER TABLE `ogrenci` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spor`
--

DROP TABLE IF EXISTS `spor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `spor` (
  `hareket` varchar(100) NOT NULL,
  `set` varchar(45) DEFAULT NULL,
  `tekrar` varchar(45) DEFAULT NULL,
  `link` varchar(450) DEFAULT NULL,
  PRIMARY KEY (`hareket`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spor`
--

LOCK TABLES `spor` WRITE;
/*!40000 ALTER TABLE `spor` DISABLE KEYS */;
INSERT INTO `spor` VALUES ('Deadlift','3','10','https://www.youtube.com/watch?v=AweC3UaM14o&pp=ygUIZGVhZGxpZnQ%3D'),('leg','3','12','https://www.youtube.com/watch?v=MpEydcQ1oDw&pp=ygUNbGVnIGV4dGVuc2lvbg%3D%3D'),('Row','4','10','https://www.youtube.com/watch?v=FWJR5Ve8bnQ&pp=ygUDcm93'),('Squat','2','8','https://www.youtube.com/watch?v=xqvCmoLULNY&pp=ygUFc3F1YXQ%3D');
/*!40000 ALTER TABLE `spor` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-06-01 20:23:41
