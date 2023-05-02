-- MySQL dump 10.13  Distrib 8.0.31, for Win64 (x86_64)
--
-- Host: localhost    Database: biblioteca
-- ------------------------------------------------------
-- Server version	8.0.31

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
-- Table structure for table `alumno`
--

DROP TABLE IF EXISTS `alumno`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `alumno` (
  `idalumno` int NOT NULL AUTO_INCREMENT,
  `carnet` varchar(10) DEFAULT NULL,
  `nombres` varchar(100) DEFAULT NULL,
  `apellidos` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`idalumno`),
  UNIQUE KEY `carnet` (`carnet`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `alumno`
--

LOCK TABLES `alumno` WRITE;
/*!40000 ALTER TABLE `alumno` DISABLE KEYS */;
/*!40000 ALTER TABLE `alumno` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `autor`
--

DROP TABLE IF EXISTS `autor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `autor` (
  `idautor` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) NOT NULL,
  `apellidos` varchar(100) DEFAULT NULL,
  `fecha_nac` date NOT NULL,
  `fecha_muerte` date DEFAULT NULL,
  `pais` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`idautor`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `autor`
--

LOCK TABLES `autor` WRITE;
/*!40000 ALTER TABLE `autor` DISABLE KEYS */;
INSERT INTO `autor` VALUES (1,'Julio','Verne','1828-02-08','1905-03-24','Francia'),(2,'Julio','Verne','1828-02-08','1905-03-24','Francia'),(3,'Jane','Austen','1775-12-16','1817-07-24','Reino Unido'),(4,'Charles','Dickens','1812-02-07','1870-06-09','Reino Unido'),(5,'Julio','Verne','1828-02-08','1905-03-24','Francia'),(6,'Jane','Austen','1775-12-16','1817-07-24','Reino Unido'),(7,'Charles','Dickens','1812-02-07','1870-06-09','Reino Unido'),(8,'Oscar','Wilde','1854-10-16','1900-11-30','Irlanda'),(9,'Franz','Kafka','1883-07-03','1924-06-03','Praga'),(10,'Julio','Verne','1828-02-08','1905-03-24','Francia'),(11,'Jane','Austen','1775-12-16','1817-07-24','Reino Unido'),(12,'Charles','Dickens','1812-02-07','1870-06-09','Reino Unido'),(13,'Oscar','Wilde','1854-10-16','1900-11-30','Irlanda'),(14,'Franz','Kafka','1883-07-03','1924-06-03','Praga'),(15,'Hermann','Hesse','1877-07-02','1962-08-09','Alemania'),(16,'Arthur','Conan Doyle','1859-05-22','1930-07-07','Reino Unido'),(17,'Julio','Verne','1828-02-08','1905-03-24','Francia'),(18,'Jane','Austen','1775-12-16','1817-07-24','Reino Unido'),(19,'Charles','Dickens','1812-02-07','1870-06-09','Reino Unido'),(20,'Oscar','Wilde','1854-10-16','1900-11-30','Irlanda'),(21,'Franz','Kafka','1883-07-03','1924-06-03','Praga'),(22,'Hermann','Hesse','1877-07-02','1962-08-09','Alemania'),(23,'Arthur','Conan Doyle','1859-05-22','1930-07-07','Reino Unido'),(24,'Agatha','Christie','1890-09-15','1976-01-12','Reino Unido'),(25,'Miguel','de Cervantes','1547-09-29','1616-03-22','España'),(26,'Gabriel','García Márquez','1927-03-06','2014-04-17','Colombia'),(27,'Rosario','Villajos','1978-08-14',NULL,'España'),(28,'Oé','Kenzaburo','1935-01-31','2023-03-03','Japón'),(29,'Santiago','Posteguillo','1967-01-01',NULL,'España'),(30,'Rafael','Cadenas','1930-04-08',NULL,'Venezuela'),(31,'Gustavo','Rodríguez','1968-05-02',NULL,'Perú'),(32,'Daniel','Kehlmann','1975-01-13',NULL,'Alemania'),(33,'Sarah','Winman','1964-12-24',NULL,'Inglaterra'),(34,'John William','Polidori','1795-09-07','1821-08-24','Inglaterra'),(35,'María Elena','Walsh','1930-02-01','2011-01-10','Argentina'),(36,'Antón','Chéjov','1860-01-29','1904-07-15','Rusia'),(37,'prueba','ssfd','2023-04-17','2023-04-17','fdsfdf'),(38,'DVS','DEFGBHE','2023-04-18','2023-04-18','RTGHRD'),(39,'Fernando','Vergara','0001-01-01','2023-04-19','Rusia'),(40,'jghj','hgjhg','2023-04-19','2023-04-19','jhgj'),(41,'jghj','hgjhg','2023-04-19','2023-04-19','jhgj'),(42,'jghjgh','hgjhgghgh','2023-04-19','2023-04-19','jhgjghg'),(43,'Carlos','Giron','2023-04-19','2023-04-19','Guatemala'),(44,'Guillermo','Galindo','1995-09-29','0001-01-01','Guatemala'),(45,'Guillermo','Galindo','1995-09-29','2023-04-19','Guatemala'),(46,'Leonor','Rosales','2005-12-12','0001-01-01','Guatemala');
/*!40000 ALTER TABLE `autor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bibliotecario`
--

DROP TABLE IF EXISTS `bibliotecario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bibliotecario` (
  `idbiblio` int NOT NULL AUTO_INCREMENT,
  `apellidos` varchar(100) DEFAULT NULL,
  `nombre` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`idbiblio`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bibliotecario`
--

LOCK TABLES `bibliotecario` WRITE;
/*!40000 ALTER TABLE `bibliotecario` DISABLE KEYS */;
/*!40000 ALTER TABLE `bibliotecario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `libro`
--

DROP TABLE IF EXISTS `libro`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `libro` (
  `idlibro` int NOT NULL AUTO_INCREMENT,
  `titulo` varchar(255) NOT NULL,
  `descripcion` text,
  `idautor` int NOT NULL,
  `fechapub` date NOT NULL,
  `isbn` varchar(13) DEFAULT NULL,
  PRIMARY KEY (`idlibro`),
  KEY `idautor` (`idautor`),
  CONSTRAINT `libro_ibfk_1` FOREIGN KEY (`idautor`) REFERENCES `autor` (`idautor`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `libro`
--

LOCK TABLES `libro` WRITE;
/*!40000 ALTER TABLE `libro` DISABLE KEYS */;
INSERT INTO `libro` VALUES (1,'IT','Un monstruo aparece cada 27 años para aterrorizar a los niños de un pueblo llamado Derry',1,'1986-01-01','9788497593793'),(2,'IT','Un monstruo aparece cada 27 años para aterrorizar a los niños de un pueblo llamado Derry',1,'1986-01-01','9788497593793'),(3,'Boulevard','Una historia en donde dos adolescentes crean su propio Boulevard ante la llovizna que hay en sus corazones',2,'2020-07-15','978607384'),(4,'El retrato de Dorian Gray','La historia de un muchacho llamado Dorian Gray, poseedor de una belleza física extraordinaria',3,'1820-07-20','9789875503229'),(5,'Wonder','Trata de un niño, August, que nació con una enfermedad que le deformó la cara',4,'2012-02-12','9788415594024'),(6,'IT','Un monstruo aparece cada 27 años para aterrorizar a los niños de un pueblo llamado Derry',1,'1986-01-01','9788497593793'),(7,'Boulevard','Una historia en donde dos adolescentes crean su propio Boulevard ante la llovizna que hay en sus corazones',2,'2020-07-15','978607384'),(8,'El retrato de Dorian Gray','La historia de un muchacho llamado Dorian Gray, poseedor de una belleza física extraordinaria',3,'1820-07-20','9789875503229'),(9,'Wonder','Trata de un niño, August, que nació con una enfermedad que le deformó la cara',4,'2012-02-12','9788415594024'),(10,'La Cabaña','La hija menor de Mackenzie Allen Phillips, Missy, desaparece durante unas vacaciones familiares',5,'2007-05-03','9780340979495'),(11,'La muela','Rebeca huye de su familia, del duelo no superado por la muerte de su padre y de una madre.',27,'2021-03-16','9788412234855'),(12,'Gooseberries','La historia describe la hipocresía de los terratenientes ricos que ignoran el sufrimiento de las personas menos afortunadas que ellos.',36,'1898-01-01','0141397098'),(13,'El vampiro','El relato trata de exponer la fuerza del mito que hace que la gente común no crea en los vampiros, de ahí que el protagonista, Lord Ruthven, se aproveche de esta situación para cometer sus actos sanguinarios.',34,'1819-04-01','8478440941'),(14,' La medición del mundo: un fascinante encuentro entre la literatura y la ciencia','Una historia llena de fina ironía centrada en dos personajes extraordinarios: Alexander von Humboldt, naturista, viajero y aventurero empedernido de inagotable curiosidad, y Carl Friedrich Gauss, matemático y astrónomo. Se reencuentran en Berlín en 1828, ya mayores, y se ponen a evocar sus años de juventud en los que se dedicaron a la descomunal empresa de medir el mundo.',32,'2005-09-01','9783499253270'),(15,'Cuadernos de Hiroshima','En agosto de 1963, el autor se dirigió a Hiroshima para hacer un reportaje sobre la novena conferencia mundial contra las armas nucleares.',28,'1965-01-01','‎8433963295');
/*!40000 ALTER TABLE `libro` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `prestamo`
--

DROP TABLE IF EXISTS `prestamo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `prestamo` (
  `idprestamo` int NOT NULL AUTO_INCREMENT,
  `idalumno` int DEFAULT NULL,
  `idlibro` int DEFAULT NULL,
  `idbiblio` int DEFAULT NULL,
  `fechaprestamo` date NOT NULL,
  `fechadevolucion` date NOT NULL,
  PRIMARY KEY (`idprestamo`),
  KEY `idalumno` (`idalumno`),
  KEY `idlibro` (`idlibro`),
  KEY `idbiblio` (`idbiblio`),
  CONSTRAINT `prestamo_ibfk_1` FOREIGN KEY (`idalumno`) REFERENCES `alumno` (`idalumno`),
  CONSTRAINT `prestamo_ibfk_2` FOREIGN KEY (`idlibro`) REFERENCES `libro` (`idlibro`),
  CONSTRAINT `prestamo_ibfk_3` FOREIGN KEY (`idbiblio`) REFERENCES `bibliotecario` (`idbiblio`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prestamo`
--

LOCK TABLES `prestamo` WRITE;
/*!40000 ALTER TABLE `prestamo` DISABLE KEYS */;
/*!40000 ALTER TABLE `prestamo` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-05-02  8:42:52
