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
-- Table structure for table `freeboard`
--

DROP TABLE IF EXISTS `freeboard`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `freeboard` (
  `board_idx` int NOT NULL AUTO_INCREMENT COMMENT '글 번호',
  `board_title` varchar(200) NOT NULL COMMENT '글 제목',
  `board_content` varchar(1000) NOT NULL COMMENT '글 내용',
  `board_user_id` varchar(45) NOT NULL COMMENT '작성자',
  `board_create_date` datetime NOT NULL COMMENT '작성일',
  `board_hitcnt` int NOT NULL DEFAULT '0',
  `board_deleted_yn` char(1) NOT NULL DEFAULT 'N' COMMENT '삭제여부',
  PRIMARY KEY (`board_idx`),
  KEY `user_id_idx` (`board_user_id`),
  CONSTRAINT `FK_ID` FOREIGN KEY (`board_user_id`) REFERENCES `user` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='자유게시판';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `freeboard`
--

LOCK TABLES `freeboard` WRITE;
/*!40000 ALTER TABLE `freeboard` DISABLE KEYS */;
INSERT INTO `freeboard` VALUES (1,'테스트 제목1','테스트 내용1','test1','2023-12-20 15:44:56',1,'N'),(2,'테스트 제목2','테스트 내용2','test1','2023-12-20 15:45:04',0,'N'),(3,'테스트 제목3','테스트 내용3','test1','2023-12-20 15:45:13',0,'N'),(4,'테스트 제목4','테스트 내용4','test1','2023-12-20 15:45:25',0,'N'),(5,'테스트 제목5','테스트 내용5','test1','2023-12-20 15:45:36',0,'N'),(6,'테스트 제목6','테스트 내용6','test2','2023-12-20 15:47:11',0,'N'),(7,'테스트 제목7','테스트 내용7','test2','2023-12-20 15:47:20',0,'N'),(8,'테스트 제목8','테스트 내용8','test2','2023-12-20 15:47:28',0,'N'),(9,'테스트 제목9','테스트 내용9','test2','2023-12-20 15:47:50',0,'N'),(10,'테스트 제목10','테스트  내용10','test2','2023-12-20 15:47:58',1,'N'),(11,'테스트 제목11','테스트 내용11','test3','2023-12-20 15:48:29',0,'N'),(12,'테스트 제목12','테스트 내용12','test3','2023-12-20 15:48:39',0,'N'),(13,'테스트 제목13','테스트 내용13','test3','2023-12-20 15:48:50',0,'N'),(14,'테스트 제목14','테스트 내용14','test3','2023-12-20 15:49:05',0,'N'),(15,'테스트 제목15','테스트 내용16','test3','2023-12-20 15:49:17',2,'N'),(16,'댓글이 있는 테스트 제목16','테스트 내용16','test4','2023-12-20 15:50:20',7,'N'),(17,'사진이 있는 테스트 제목17','사진이 있는 테스트 내용 17','test4','2023-12-20 15:53:22',13,'N'),(18,'사진이 있는 테스트제목18','사진이 있는 테스트 내용18','test3','2023-12-20 16:01:17',3,'N'),(19,'테스트 제목19','테스트 내용19','test1','2023-12-20 16:02:02',0,'N'),(20,'테스트 제목20','테스트 내용21','test1','2023-12-20 16:02:10',8,'Y'),(21,'테스트 제목21','테스트 내용21','test7','2023-12-21 09:43:28',2,'N');
/*!40000 ALTER TABLE `freeboard` ENABLE KEYS */;
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
