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
-- Table structure for table `review_file`
--

DROP TABLE IF EXISTS `review_file`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `review_file` (
  `file_idx` int NOT NULL AUTO_INCREMENT COMMENT '리뷰 첨부파일 인덱스',
  `file_review_idx` int NOT NULL COMMENT '리뷰db idx(참조용)',
  `file_review_orgfile_name` varchar(200) NOT NULL COMMENT '리뷰 파일 원본명',
  `file_review_storedfile_name` varchar(200) NOT NULL COMMENT '리뷰 서버저장파일명',
  `file_review_filesize` varchar(100) NOT NULL COMMENT '리뷰용 첨부 파일 사이즈',
  `file_review_userid` varchar(45) NOT NULL COMMENT '리뷰 작성 유저아이디',
  `file_review_createdate` datetime NOT NULL COMMENT '리뷰 작성일자 (참조용)',
  `file_review_deleted_yn` char(1) DEFAULT 'N' COMMENT '리뷰의 첨부파일 삭제여부 확인',
  PRIMARY KEY (`file_idx`),
  KEY `fkReviewFile_idx` (`file_review_idx`),
  CONSTRAINT `fk_review` FOREIGN KEY (`file_review_idx`) REFERENCES `review` (`review_idx`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='리뷰용 첨부파일 테이블';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `review_file`
--

LOCK TABLES `review_file` WRITE;
/*!40000 ALTER TABLE `review_file` DISABLE KEYS */;
INSERT INTO `review_file` VALUES (1,1,'족발2.jpg','C:/upload/img/2023-12-20/444563104645100.jpg','65124','test4','2023-12-20 15:54:41','N'),(2,2,'족발3.jpg','C:/upload/img/2023-12-20/444587100102600.jpg','57391','test1','2023-12-20 15:55:05','N'),(3,3,'순두부.jpg','C:/upload/img/2023-12-20/444742755677000.jpg','31857','test2','2023-12-20 15:57:40','N'),(4,4,'막국수.jpg','C:/upload/img/2023-12-20/444851981286600.jpg','118628','test3','2023-12-20 15:59:30','N'),(5,5,'화덕족발jpg.jpg','C:/upload/img/2023-12-20/444903529109000.jpg','136397','test3','2023-12-20 16:00:21','N'),(6,6,'순두부.jpg','C:/upload/img/2023-12-21/508809572535700.jpg','31857','test7','2023-12-21 09:45:25','N'),(7,7,'순두부.jpg','C:/upload/img/2023-12-21/512095228645700.jpg','31857','test1','2023-12-21 10:40:10','N');
/*!40000 ALTER TABLE `review_file` ENABLE KEYS */;
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
