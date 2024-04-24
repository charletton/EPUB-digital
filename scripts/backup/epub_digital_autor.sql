CREATE DATABASE  IF NOT EXISTS `epub_digital` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `epub_digital`;
-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: epub_digital
-- ------------------------------------------------------
-- Server version	8.0.36

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
-- Table structure for table `autor`
--

DROP TABLE IF EXISTS `autor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `autor` (
  `id_autor` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) NOT NULL,
  `descripcion` text,
  PRIMARY KEY (`id_autor`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `autor`
--

LOCK TABLES `autor` WRITE;
/*!40000 ALTER TABLE `autor` DISABLE KEYS */;
INSERT INTO `autor` VALUES (1,'Yuval Noah Harari','Yuval Noah Harari (24 de febrero de 1976, Kiryat Atta, Israel) es un profesor, historiador, filósofo y escritor israelí. Es conocido a nivel mundial por sus libros de historia.'),(2,'Carl Sagan','Carl Edward Sagan (Nueva York, 9 de noviembre de 1934-Seattle, 20 de diciembre de 1996) fue un astrónomo, astrofísico, cosmólogo, astrobiólogo, escritor y divulgador científico estadounidense.'),(3,'Cal Newport','Es profesor de Ciencias de la Computación en Georgetown University. Es autor de cinco libros y escribe el popular blog Study Hacks, que tiene como propósito descifrar los “códigos para ser exitoso” tanto en los estudios como en el trabajo.'),(4,'Stephen Hawking','Stephen Hawking fue un físico teórico, cosmólogo y autor, mejor conocido por sus trabajos científicos relacionados a la relatividad general y los hoyos negros, al igual que por distintos libros de ciencia popular que publicó a lo largo de su vida.'),(5,'Richard Dawkings','linton Richard Dawkins (Nairobi, 26 de marzo de 1941) es un biólogo evolutivo,​ etólogo, zoólogo y divulgador científico británico. Fue titular de la cátedra Charles Simonyi de Difusión de la Ciencia en la Universidad de Oxford hasta 2008.linton Richard Dawkins (Nairobi, 26 de marzo de 1941) es un biólogo evolutivo,​ etólogo, zoólogo y divulgador científico británico. Fue titular de la cátedra Charles Simonyi de Difusión de la Ciencia en la Universidad de Oxford hasta 2008.'),(6,'Charles Darwin','Charles Darwin era un naturalista británico que propuso la teoría de la evolución biológica por selección natural. Darwin definió la evolución como \"descendencia con modificación\", la idea de que las especies cambian a lo largo del tiempo, dan origen a nuevas especies y comparten un ancestro común.'),(7,'Daniel Kahneman','Daniel Kahneman es un psicólogo social que recibió el Premio Nobel de Economía en el año 2002 “por tener ideas integradas desde la investigación psicológica en la ciencia económica, especialmente sobre el juicio humano y la toma de decisiones bajo incertidumbre”.'),(8,'Marco Aurelio','Marco Aurelio reinó como emperador romano desde el 161 al 180 EC, y es mejor conocido como el último de los Cinco Emperadores Buenos de Roma (después de Nerva, Trajano, Adriano y Antonino Pío) y como el autor de la obra filosófica Meditaciones.'),(9,'Friedrich Nietzsche','Friedrich Nietzsche (1844-1900) fue un notable y polémico filólogo y filósofo alemán autor de las obras Así habló Zaratustra, La voluntad de poder, El origen de la tragedia, Gaya Ciencia, Verdad y mentira en sentido extramoral, entre otras.'),(10,'Platon','Fue un filósofo ateniense del siglo V a.C., discípulo de Sócrates y maestro de Aristóteles. Fundó la Academia, donde impartió clases hasta el final de su vida. La condena a muerte de su maestro Sócrates influirá mucho en su vida y en sus obras.*'),(11,'Aristoteles','Aristóteles de Estagira (384-322 a.C.) fue un filósofo griego pionero en la examinación sistemática y científica de todas las áreas del conocimiento humano, conocido en su época como “el hombre que lo sabía todo” y luego simplemente como “el filósofo”, sin que fueran necesarios más calificativos debido a su fama.');
/*!40000 ALTER TABLE `autor` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-03-30 14:38:28
