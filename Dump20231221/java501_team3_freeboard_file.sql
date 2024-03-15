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
-- Table structure for table `freeboard_file`
--

DROP TABLE IF EXISTS `freeboard_file`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `freeboard_file` (
  `freeboard_file_idx` int NOT NULL AUTO_INCREMENT COMMENT '자유게시판 첨부파일 IDX',
  `freeboard_idx` int NOT NULL COMMENT '자유게시판 IDX(참조용)',
  `freeboard_orgfile_name` varchar(200) NOT NULL COMMENT '자유게시판 원본파일명',
  `freeboard_storedfile_name` varchar(200) NOT NULL COMMENT '자유게시판 서버저장파일명',
  `freeboard_filesize` varchar(45) NOT NULL COMMENT '자유게시판 첨부파일 사이즈',
  `freeboard_userid` varchar(45) NOT NULL COMMENT '자유게시판 첨부파일 유저아이디',
  `freeboard_createdate` datetime NOT NULL COMMENT '자유게시판 첨부파일 저장일자',
  `freeboard_deleted_yn` char(1) DEFAULT 'N',
  PRIMARY KEY (`freeboard_file_idx`),
  KEY `foreignIdx_idx` (`freeboard_idx`),
  CONSTRAINT `foreignIdx` FOREIGN KEY (`freeboard_idx`) REFERENCES `freeboard` (`board_idx`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='자유게시판 첨부파일 테이블';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `freeboard_file`
--

LOCK TABLES `freeboard_file` WRITE;
/*!40000 ALTER TABLE `freeboard_file` DISABLE KEYS */;
INSERT INTO `freeboard_file` VALUES (1,17,'족발1.jpg','C:/upload/img/2023-12-20/444484575772300.jpg','46105','test4','2023-12-20 15:53:22','N'),(2,18,'족발3.jpg','C:/upload/img/2023-12-20/444958951495900.jpg','57391','test3','2023-12-20 16:01:17','N'),(3,18,'화덕족발jpg.jpg','C:/upload/img/2023-12-20/444958952107700.jpg','136397','test3','2023-12-20 16:01:17','N'),(4,21,'족발1.jpg','C:/upload/img/2023-12-21/508692941305400.jpg','46105','test7','2023-12-21 09:43:28','N');
/*!40000 ALTER TABLE `freeboard_file` ENABLE KEYS */;
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
