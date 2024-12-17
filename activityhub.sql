-- MySQL dump 10.13  Distrib 9.0.1, for macos15.1 (arm64)
--
-- Host: localhost    Database: activityhub
-- ------------------------------------------------------
-- Server version	9.0.1

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
-- Table structure for table `messages`
--

DROP TABLE IF EXISTS `messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `messages` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `date` date NOT NULL,
  `location` varchar(255) DEFAULT NULL,
  `event` varchar(255) DEFAULT NULL,
  `imageUrl` varchar(500) DEFAULT NULL,
  `imageAlt` varchar(255) DEFAULT NULL,
  `description` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=68 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `messages`
--

LOCK TABLES `messages` WRITE;
/*!40000 ALTER TABLE `messages` DISABLE KEYS */;
INSERT INTO `messages` VALUES (66,'Kerstvakantie','2024-12-21','Niet Hier','Vakantie','img/groep.webp','Image Alt','Scrum redt je vakantie! Start met een backlog: alles wat gedaan moet worden, zoals cadeaus, decoraties en het kerstdiner. Sprintplanning: verdeel je vakantie in blokken en focus per sprint op een doel, bijvoorbeeld cadeaus of huis versieren. Dagelijkse stand-ups: wat deed je, wat doe je en wat blokkeert? Lever een MVP-cadeau: net goed genoeg om te kerst mee te halen. Sluit af met een retrospective: kijk wat beter kan voor Oud en Nieuw!'),(67,'Tevreden zijn over jouw loonstrookje?','2025-01-14','Het ‘Proeflokaal: Padualaan 99','Workshop','img/14jan.webp','Image Alt','Kom naar de bijeenkomsten \"Boost je Money\" en breng de tips direct in de praktijk! Onderhandelen over jouw loon kan best spannend zijn. Maar met de juiste kennis en voorbereiding ga jij zelfverzekerd dit gesprek aan. Kom op 14 januari naar Het Proeflokaal en krijg praktische adviezen van een expert over hoe je jouw loonstrookje naar een hoger niveau tilt. Deelname is GRATIS, verzorgd door HUWerkbijjestudie! Er wordt gezorgd voor een hapje en een drankje. Mis deze kans niet!');
/*!40000 ALTER TABLE `messages` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-12-16 16:50:56
