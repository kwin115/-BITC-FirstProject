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
-- Table structure for table `comment`
--

DROP TABLE IF EXISTS `comment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `comment` (
  `cm_idx` int NOT NULL AUTO_INCREMENT COMMENT '댓글 번호',
  `cm_board_idx` int NOT NULL COMMENT '게시판 글 번호',
  `cm_content` varchar(200) NOT NULL COMMENT '댓글 내용',
  `cm_user_id` varchar(45) NOT NULL COMMENT '댓글 작성자',
  `cm_create_date` datetime NOT NULL COMMENT '댓글 작성일',
  PRIMARY KEY (`cm_idx`),
  KEY `FK_BOARD_IDX_idx` (`cm_board_idx`),
  KEY `FK_COMM_USERID_idx` (`cm_user_id`),
  CONSTRAINT `FK_BOARD_IDX` FOREIGN KEY (`cm_board_idx`) REFERENCES `freeboard` (`board_idx`),
  CONSTRAINT `FK_COMM_USERID` FOREIGN KEY (`cm_user_id`) REFERENCES `user` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='자유게시판 댓글';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comment`
--

LOCK TABLES `comment` WRITE;
/*!40000 ALTER TABLE `comment` DISABLE KEYS */;
INSERT INTO `comment` VALUES (1,16,'댓글 테스트1','test4','2023-12-20 15:50:29'),(2,17,'테스트 댓글2','test4','2023-12-20 15:53:33'),(3,17,'테스트 댓글3','test1','2023-12-21 09:01:54'),(4,17,'테스트 댓글4','test1','2023-12-21 09:02:13'),(5,20,'댓글 등록은 가능하다','test7','2023-12-21 09:42:58'),(6,20,'댓글수 2','test7','2023-12-21 09:43:37');
/*!40000 ALTER TABLE `comment` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-12-21 16:35:59
