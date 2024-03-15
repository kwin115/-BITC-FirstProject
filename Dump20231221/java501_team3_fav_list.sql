-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: 58.239.58.243    Database: java501_team3
-- ------------------------------------------------------
-- Server version	8.0.27

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
-- Table structure for table `fav_list`
--

DROP TABLE IF EXISTS `fav_list`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fav_list` (
  `fav_list_user_id` varchar(45) NOT NULL COMMENT '즐겨찾기 목록 사용할 유저 아이디',
  `fav_list_store_idx` int NOT NULL COMMENT '즐겨찾기한 음식점 이름',
  `fav_list_check_yn` char(1) NOT NULL DEFAULT 'N' COMMENT '즐겨찾기 여부',
  UNIQUE KEY `unique_key_name` (`fav_list_user_id`,`fav_list_store_idx`),
  KEY `fav_user_id_idx` (`fav_list_user_id`),
  CONSTRAINT `fav_user_id` FOREIGN KEY (`fav_list_user_id`) REFERENCES `user` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='유저 찜 목록';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fav_list`
--

LOCK TABLES `fav_list` WRITE;
/*!40000 ALTER TABLE `fav_list` DISABLE KEYS */;
INSERT INTO `fav_list` VALUES ('test1',0,'N'),('test1',1,'N'),('test1',2,'N'),('test1',3,'N'),('test1',4,'N'),('test2',0,'N'),('test2',1,'N'),('test2',2,'N'),('test2',3,'N'),('test2',4,'N'),('test2',5,'N'),('test2',6,'N'),('test4',0,'N'),('test4',1,'N'),('test4',2,'N'),('test7',0,'N');
/*!40000 ALTER TABLE `fav_list` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-12-21 16:36:00
