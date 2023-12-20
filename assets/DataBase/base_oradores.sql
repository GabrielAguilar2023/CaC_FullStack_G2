CREATE DATABASE  IF NOT EXISTS `base_oradores` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `base_oradores`;
-- MySQL dump 10.13  Distrib 8.0.32, for Win64 (x86_64)
--
-- Host: localhost    Database: base_oradores
-- ------------------------------------------------------
-- Server version	8.0.32

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
-- Table structure for table `oradores`
--

DROP TABLE IF EXISTS `oradores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `oradores` (
  `id_oradores` int(10) unsigned zerofill NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(45) DEFAULT NULL,
  `Apellido` varchar(45) DEFAULT NULL,
  `eMail` varchar(45) DEFAULT NULL,
  `Tema` varchar(255) DEFAULT NULL,
  `Activo` bit(1) DEFAULT b'0',
  `Fecha` date DEFAULT NULL,
  PRIMARY KEY (`id_oradores`)
) ENGINE=InnoDB AUTO_INCREMENT=100 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oradores`
--

LOCK TABLES `oradores` WRITE;
/*!40000 ALTER TABLE `oradores` DISABLE KEYS */;
INSERT INTO `oradores` VALUES (0000000001,'Bill','Gates',NULL,'Cambio Climatico',_binary '',NULL),(0000000002,'Ada','Lovelace',NULL,'Geometría Analítica',_binary '',NULL),(0000000003,'Manuel','Quintana',NULL,'.Net',_binary '\0',NULL),(0000000011,'Matias','Torres',NULL,'Espacios virtuales',_binary '\0',NULL),(0000000012,'Marisa','Pereyra',NULL,'Calentamiento global',_binary '\0',NULL),(0000000013,'Anahí','Sosa',NULL,'Introducción',_binary '\0',NULL),(0000000014,'Javier','Melonni',NULL,'Redes informaticas',_binary '\0',NULL),(0000000015,'Daniela','Martins',NULL,'Matematicas Avanzadas',_binary '\0',NULL),(0000000016,'Isabel','Rodriguez',NULL,'Politica Internacional',_binary '\0',NULL),(0000000017,'Carolina','Gomez',NULL,'Reforma Institucional',_binary '\0',NULL),(0000000018,'Daniel','Morales',NULL,'Reforma del Estado',_binary '\0',NULL),(0000000019,'Juan','Cruz',NULL,'Otro tema',_binary '\0',NULL),(0000000028,'Esther','Lopez',NULL,'Informatica Electoral',_binary '\0',NULL),(0000000029,'Miguel','Cervantes',NULL,'Cultura Clasica',_binary '\0',NULL),(0000000030,'Carlos','Echepare',NULL,'Manejo de Bases de Datos',_binary '\0',NULL),(0000000032,'Edith','Bustos',NULL,'Cocina Oriental',_binary '\0',NULL),(0000000051,'Juan','Perez','juanperez@live.com','Comercio Exterior',_binary '',NULL),(0000000052,'Daniel','Alasias','dani@a.a','Sistemas Digitales',_binary '',NULL),(0000000053,'Micaela','Fernandez','mica@we.com','Cultura General 2',_binary '',NULL),(0000000054,'Dalma','Ordoñez','dalmamariaordo@gmail.com','JavaScript y Node.js',_binary '',NULL),(0000000059,'gjfgdgd','ffs','ffsds@sdfdlw.wqds','fsafsdfvczvx',_binary '\0',NULL),(0000000060,'gjfgdgd','ffs','ffsds@sdfdlw.wqds','fsafsdfvczvx',_binary '\0',NULL),(0000000061,'Mariana','Perez','marianaperez@lg.com','Hibernate Java',_binary '\0',NULL),(0000000062,'Mariana','Perez','marianaperez@lg.com','Hibernate Java',_binary '\0',NULL),(0000000063,'Mariana','Perez','marianaperez@lg.com','Hibernate Java',_binary '\0',NULL),(0000000064,'iehfewfoi','ewfweio','ewewlf@dsakd.sdf','AFKLjdsfdlñf',_binary '\0',NULL),(0000000065,'Damian','Correa','damiancorrea2341@gmail.com','Frameworks en POO',_binary '\0',NULL),(0000000066,'Damian','Correa','damiancorrea2341@gmail.com','Frameworks en POO',_binary '\0',NULL),(0000000067,'Damian','Correa','damiancorrea2341@gmail.com','Frameworks en POO',_binary '\0',NULL),(0000000068,'Damian','Correa','damiancorrea2341@gmail.com','Frameworks en POO',_binary '\0',NULL),(0000000069,'Damian','Correa','damiancorrea2341@gmail.com','Frameworks en POO',_binary '\0',NULL),(0000000070,'Damian','Correa','damiancorrea2341@gmail.com','Frameworks en POO',_binary '\0',NULL),(0000000071,'Damian','Correa','damiancorrea2341@gmail.com','Frameworks en POO',_binary '\0',NULL),(0000000072,'Damian','Correa','damiancorrea2341@gmail.com','Frameworks en POO',_binary '\0',NULL),(0000000073,'Damian','Correa','damiancorrea2341@gmail.com','Frameworks en POO',_binary '\0',NULL),(0000000074,'Damian','Correa','damiancorrea2341@gmail.com','Frameworks en POO',_binary '\0',NULL),(0000000075,'Damian','Correa','damiancorrea2341@gmail.com','Frameworks en POO',_binary '\0',NULL),(0000000076,'Damian','Correa','damiancorrea2341@gmail.com','Frameworks en POO',_binary '\0',NULL),(0000000077,'Damian','Correa','damiancorrea2341@gmail.com','Frameworks en POO',_binary '\0',NULL),(0000000078,'Damian','Correa','damiancorrea2341@gmail.com','Frameworks en POO',_binary '\0',NULL),(0000000079,'Damian','Correa','damiancorrea2341@gmail.com','Frameworks en POO',_binary '\0',NULL),(0000000080,'Damian','Correa','damiancorrea2341@gmail.com','Frameworks en POO',_binary '\0',NULL),(0000000081,'Damian','Correa','damiancorrea2341@gmail.com','Frameworks en POO',_binary '\0',NULL),(0000000082,'Damian','Correa','damiancorrea2341@gmail.com','Frameworks en POO',_binary '\0',NULL),(0000000083,'Damian','Correa','damiancorrea2341@gmail.com','Frameworks en POO',_binary '\0',NULL),(0000000084,'Damian','Correa','damiancorrea2341@gmail.com','Frameworks en POO',_binary '\0',NULL),(0000000085,'Damian','Correa','damiancorrea2341@gmail.com','Frameworks en POO',_binary '\0',NULL),(0000000086,'Damian','Correa','damiancorrea2341@gmail.com','Frameworks en POO',_binary '\0',NULL),(0000000087,'Damian','Correa','damiancorrea2341@gmail.com','Frameworks en POO',_binary '\0',NULL),(0000000088,'Damian','Correa','damiancorrea2341@gmail.com','Frameworks en POO',_binary '\0',NULL),(0000000089,'Damian','Correa','damiancorrea2341@gmail.com','Frameworks en POO',_binary '\0',NULL),(0000000090,'Damian','Correa','damiancorrea2341@gmail.com','Frameworks en POO',_binary '\0',NULL),(0000000091,'Damian','Correa','damiancorrea2341@gmail.com','Frameworks en POO',_binary '\0',NULL),(0000000092,'Damian','Correa','damiancorrea2341@gmail.com','Frameworks en POO',_binary '\0',NULL),(0000000093,'Damian','Correa','damiancorrea2341@gmail.com','Frameworks en POO',_binary '\0',NULL),(0000000094,'Damian','Correa','damiancorrea2341@gmail.com','Frameworks en POO',_binary '\0',NULL),(0000000095,'Damian','Correa','damiancorrea2341@gmail.com','Frameworks en POO',_binary '\0',NULL),(0000000096,'Mercedes','Ocaña','mercedesoca@live.com','Frameworks en POO',_binary '',NULL),(0000000097,'poewfqe','ewfriewo','efwefwef@dfsd.dfew','ewfweflñ',_binary '\0',NULL),(0000000098,'poewfqe','ewfriewo','efwefwef@dfsd.dfew','ewfweflñ',_binary '\0',NULL),(0000000099,'retwet','erwtgd','fdgdfg@dsfsd.dsfas','sadfsdfds',_binary '\0',NULL);
/*!40000 ALTER TABLE `oradores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tickets`
--

DROP TABLE IF EXISTS `tickets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tickets` (
  `id_tickets` int(5) unsigned zerofill NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(45) DEFAULT NULL,
  `Apellido` varchar(45) DEFAULT NULL,
  `eMail` varchar(45) DEFAULT NULL,
  `Cantidad` varchar(45) DEFAULT NULL,
  `Pago` varchar(45) DEFAULT NULL,
  `Descuento` varchar(45) DEFAULT NULL,
  `Activo` bit(1) DEFAULT b'1',
  `Fecha` date DEFAULT NULL,
  `Pagado` bit(1) DEFAULT b'0',
  PRIMARY KEY (`id_tickets`)
) ENGINE=InnoDB AUTO_INCREMENT=105 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tickets`
--

LOCK TABLES `tickets` WRITE;
/*!40000 ALTER TABLE `tickets` DISABLE KEYS */;
INSERT INTO `tickets` VALUES (00005,'Genaro','Molina','genaro324@gsa.com','3','120','80',_binary '',NULL,_binary ''),(00006,'Damian','Lopez','dami@nlopez.com','3','120','80',_binary '',NULL,_binary ''),(00055,'Gerardo Gabriel','Aguilar','gabrielaguilar@hotmail.com.ar','3','120','80',_binary '',NULL,_binary '\0'),(00089,'Daniel','Villada','daniel@gmail.com','6','240','80',_binary '',NULL,_binary ''),(00090,'Matias','Gonzalez','matiasGonza6545@gmail.com','2','200','50',_binary '',NULL,_binary '\0'),(00091,'Miguel','Suarez','miguesuarez3545@gmail.com','5','500','50',_binary '',NULL,_binary '\0'),(00092,'Paola','Ceballos','paoce4356@jm.com','5','850','15',_binary '',NULL,_binary ''),(00093,'Javier','Hernandez','javihernandez_gl@yahoo.com','4','680','15',_binary '',NULL,_binary '\0'),(00094,'Gerardo','Aguilar','gabrielaguilar@hotmail.com.ar','3','510','15',_binary '',NULL,_binary '\0'),(00095,'Miguel','Cervantes Saavedra','strange21234@psn.com','3','2333','0',_binary '',NULL,_binary '\0'),(00096,'Julian','Romero','julianromero@fs.org','3','120','80',_binary '',NULL,_binary ''),(00097,'Daniel','Martinez','danimartinez@gmail.com','2','80','80',_binary '',NULL,_binary '\0'),(00098,'Angel','Cabrera','angelcabrera@gmail.com','2','340','15',_binary '',NULL,_binary '\0'),(00099,'Angel','Cabrera','angelcabrera@gmail.com','2','340','15',_binary '',NULL,_binary '\0'),(00100,'Angel','Cabrera','angelcabrera@gmail.com','2','340','15',_binary '',NULL,_binary '\0'),(00101,'tretr','rtyert','rtrty@sdfsdf.dsf','2','400','0',_binary '',NULL,_binary '\0'),(00102,'dskdgfs','afwefw','wefwefew@dsfs.dsf','2','400','0',_binary '',NULL,_binary '\0'),(00103,'gsdfg','ertert','fdgdsfd@dsf.dsf','3','300','50',_binary '',NULL,_binary '\0'),(00104,'gsdfg','ertert','fdgdsfd@dsf.dsf','3','300','50',_binary '',NULL,_binary '\0');
/*!40000 ALTER TABLE `tickets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuarios` (
  `id_usuarios` int(3) unsigned zerofill NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(45) DEFAULT NULL,
  `eMail` varchar(45) DEFAULT NULL,
  `Password` varchar(45) DEFAULT NULL,
  `Activo` bit(1) DEFAULT b'0',
  PRIMARY KEY (`id_usuarios`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuarios`
--

LOCK TABLES `usuarios` WRITE;
/*!40000 ALTER TABLE `usuarios` DISABLE KEYS */;
INSERT INTO `usuarios` VALUES (001,'Juan','juan123@gmail.com','123456',_binary '\0'),(002,'Lucas','lucas123@gmail.com','234567',_binary '');
/*!40000 ALTER TABLE `usuarios` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-12-20  2:06:04
