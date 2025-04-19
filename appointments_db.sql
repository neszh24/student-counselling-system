CREATE DATABASE  IF NOT EXISTS `appointments_db` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `appointments_db`;
-- MySQL dump 10.13  Distrib 8.0.41, for Win64 (x86_64)
--
-- Host: localhost    Database: appointments_db
-- ------------------------------------------------------
-- Server version	8.0.41

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
-- Table structure for table `appointments`
--

DROP TABLE IF EXISTS `appointments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `appointments` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `appointment_date` date NOT NULL,
  `end_time` time(6) NOT NULL,
  `notes` varchar(255) DEFAULT NULL,
  `start_time` time(6) NOT NULL,
  `status` enum('PENDING','CANCELLED','COMPLETED') DEFAULT NULL,
  `counselor_id` bigint NOT NULL,
  `student_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FKahej6fl37or532ks83qsb8caw` (`counselor_id`),
  KEY `FK4ciselyhy10ku6eiyabq3ylga` (`student_id`),
  CONSTRAINT `FK4ciselyhy10ku6eiyabq3ylga` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`),
  CONSTRAINT `FKahej6fl37or532ks83qsb8caw` FOREIGN KEY (`counselor_id`) REFERENCES `counselors` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `appointments`
--

LOCK TABLES `appointments` WRITE;
/*!40000 ALTER TABLE `appointments` DISABLE KEYS */;
INSERT INTO `appointments` VALUES (8,'2025-04-25','10:00:00.000000','','09:00:00.000000','PENDING',1,2),(9,'2025-04-30','11:00:00.000000','','10:00:00.000000','PENDING',1,2),(10,'2025-04-22','13:00:00.000000','depression','12:00:00.000000','PENDING',1,2),(11,'2025-05-02','13:00:00.000000','Personal issues','12:00:00.000000','PENDING',1,1),(12,'2025-05-30','11:00:00.000000','Stress','10:00:00.000000','PENDING',1,1),(13,'2025-05-13','11:00:00.000000','Test','10:00:00.000000','PENDING',1,1),(14,'2025-05-14','12:00:00.000000','test2','11:00:00.000000','PENDING',1,1),(15,'2025-05-15','11:00:00.000000','test3','10:00:00.000000','PENDING',1,1),(16,'2025-05-16','11:00:00.000000','test4','10:00:00.000000','PENDING',1,1),(17,'2025-09-19','11:00:00.000000','Pressure','10:00:00.000000','PENDING',1,1),(18,'2025-05-01','14:00:00.000000','stress','13:00:00.000000','PENDING',1,2),(19,'2025-04-20','10:00:00.000000','Sorrow','09:00:00.000000','PENDING',1,2),(21,'2025-04-20','12:00:00.000000','bully','11:00:00.000000','PENDING',1,1),(22,'2025-04-20','13:00:00.000000','fear','12:00:00.000000','PENDING',1,1),(23,'2025-04-20','11:00:00.000000','Session booked via portal','10:00:00.000000','PENDING',2,1),(24,'2025-06-07','10:00:00.000000','test','09:00:00.000000','PENDING',1,2),(25,'2025-04-25','16:00:00.000000','anxiety','15:00:00.000000','PENDING',1,1),(26,'2025-05-07','15:00:00.000000','Session booked via portal','14:00:00.000000','PENDING',3,2),(27,'2025-04-28','10:00:00.000000','anxiety','09:00:00.000000','PENDING',1,2),(28,'2025-04-25','11:00:00.000000','Follow-up on previous session','10:00:00.000000','PENDING',1,2),(29,'2025-04-25','12:00:00.000000','Follow-up on previous session','11:00:00.000000','PENDING',1,1),(30,'2025-04-23','11:00:00.000000','stress','10:00:00.000000','PENDING',1,1),(31,'2025-04-23','13:00:00.000000','stress','12:00:00.000000','PENDING',2,2),(32,'2025-04-23','14:00:00.000000','depression','13:00:00.000000','PENDING',2,2),(33,'2025-07-31','17:00:00.000000','Session booked via portal','16:00:00.000000','PENDING',1,1),(34,'2025-04-28','11:00:00.000000','stressed','10:00:00.000000','PENDING',1,2),(35,'2025-04-28','17:00:00.000000','stress','16:00:00.000000','PENDING',1,1),(36,'2025-09-30','17:00:00.000000','depression','16:00:00.000000','PENDING',2,2),(37,'2025-10-21','15:00:00.000000','family issues','14:00:00.000000','PENDING',2,1),(38,'2025-10-31','17:00:00.000000','stress','16:00:00.000000','PENDING',1,1),(39,'2025-04-28','11:00:00.000000','stress','10:00:00.000000','PENDING',1,1);
/*!40000 ALTER TABLE `appointments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `counselors`
--

DROP TABLE IF EXISTS `counselors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `counselors` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `email` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `specialization` varchar(255) DEFAULT NULL,
  `user_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK6ux0rc2jcgadrwn55nm1k4mlr` (`user_id`),
  CONSTRAINT `FKi59g674601d7aqvhvd2andntn` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `counselors`
--

LOCK TABLES `counselors` WRITE;
/*!40000 ALTER TABLE `counselors` DISABLE KEYS */;
INSERT INTO `counselors` VALUES (1,'thinesh001@e.ntu.edu.sg','Dr. John Counselor','Stress Management',2),(2,'thinesh001@e.ntu.edu.sg','Dr. Jane Counselor','Academic Guidance',5),(3,'thinesh001@e.ntu.edu.sg','Dr. James Counselor','Emotions',11);
/*!40000 ALTER TABLE `counselors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `students`
--

DROP TABLE IF EXISTS `students`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `students` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `department` varchar(255) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `full_name` varchar(255) NOT NULL,
  `user_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UKg4fwvutq09fjdlb4bb0byp7t` (`user_id`),
  CONSTRAINT `FKdt1cjx5ve5bdabmuuf3ibrwaq` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `students`
--

LOCK TABLES `students` WRITE;
/*!40000 ALTER TABLE `students` DISABLE KEYS */;
INSERT INTO `students` VALUES (1,'Computer Science','thinesh001@e.ntu.edu.sg','Jane Student',1),(2,'Information Systems','thinesh001@e.ntu.edu.sg','Alice Tan',3),(3,'Psychology','david@student.com','David Lee',4),(4,'IT','amy@student.com','Amy Student',7),(5,'Engineering','mark@student.com','Mark Student',8);
/*!40000 ALTER TABLE `students` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `password` varchar(255) NOT NULL,
  `role` enum('ADMIN','COUNSELOR','STUDENT') NOT NULL,
  `username` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UKr43af9ap4edm43mmtq01oddj6` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'$2b$12$YzaUDeGKSsbq24EgNKlj2eJ0XQihjBVL75/zO5N8xhkbRDe68XpHq','STUDENT','student1'),(2,'$2a$12$gvXsIVVHm4F0rcbrKiJb/eqkaYz6.shwknxY9rFCUnErp23sItI2O','COUNSELOR','counselor1'),(3,'$2b$12$UX0QSVtbF8zKyNngCHGGq.RnBteCA.sVG30QdAs8tUBITN8YEMpDa','STUDENT','student2'),(4,'$2b$12$6DFgnu.ZAZui3bY5YjT64.le2aNcp5.EmwlWK8L0nYssAs/Mf6Q/m','STUDENT','student3'),(5,'$2b$12$gvXsIVVHm4F0rcbrKiJb/eqkaYz6.shwknxY9rFCUnErp23sItI2O','COUNSELOR','counselor2'),(7,'$2b$12$iEI1I3zXNsyBMyj3pGxcJ.hNHrMBsJJ3nVQ.wCQ7gk75nUpJChuPW','STUDENT','student4'),(8,'$2b$12$vz/fLf4EC/z.TDO9W092sOydjQv7HIen9Bt5rHyn9MYGxFZuTWj8y','STUDENT','student5'),(11,'$2a$12$gvXsIVVHm4F0rcbrKiJb/eqkaYz6.shwknxY9rFCUnErp23sItI2O','COUNSELOR','counselor11');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-04-19 22:29:32
