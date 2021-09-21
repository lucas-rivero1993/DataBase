-- MySQL dump 10.13  Distrib 5.7.29, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: entregablelucas
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.21-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `categorias`
--

DROP TABLE IF EXISTS `categorias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `categorias` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categorias`
--

LOCK TABLES `categorias` WRITE;
/*!40000 ALTER TABLE `categorias` DISABLE KEYS */;
INSERT INTO `categorias` VALUES (1,'Luz'),(6,'Agua'),(7,'Gas'),(8,'Telefono'),(9,'Internet'),(10,'Seguro auto'),(11,'Cable '),(12,'Pack Futbol'),(13,'Abono celular'),(14,'Cuota Jardin');
/*!40000 ALTER TABLE `categorias` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notas`
--

DROP TABLE IF EXISTS `notas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `notas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `titulo` varchar(100) NOT NULL,
  `fecha_creacion` date NOT NULL,
  `fecha_modificacion` date DEFAULT NULL,
  `nota_eliminada` tinyint(4) DEFAULT NULL,
  `descripcion` varchar(100) NOT NULL,
  `usuario_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_2f421b96-7b03-429a-97f5-b129bad3eab4` (`usuario_id`),
  CONSTRAINT `FK_2f421b96-7b03-429a-97f5-b129bad3eab4` FOREIGN KEY (`usuario_id`) REFERENCES `usuarios` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notas`
--

LOCK TABLES `notas` WRITE;
/*!40000 ALTER TABLE `notas` DISABLE KEYS */;
INSERT INTO `notas` VALUES (1,'Programador','2021-03-17',NULL,NULL,'FullStacks',1),(2,'Herrero','2020-07-10',NULL,NULL,'Herreria',2),(3,'Comerciante','2021-01-05',NULL,NULL,'Ventas',3),(4,'Chofer','2019-04-20',NULL,NULL,'Camionero',4),(5,'Vendedor','2020-12-19',NULL,NULL,'Vendedor de salon',5),(6,'Editor de video','2021-03-03',NULL,NULL,'Editor de video e imagen',6),(7,'Futbolista','2010-10-10',NULL,NULL,'Jugador de futbol profesional',7),(8,'Pintor','2015-06-09',NULL,NULL,'Pintor de hogares',8),(9,'Cocinero','2009-04-25',NULL,NULL,'Cocinero en casa de comidas',9),(10,'Gamer','2019-06-01',NULL,NULL,'Deportista electronico',10);
/*!40000 ALTER TABLE `notas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notas_categorias`
--

DROP TABLE IF EXISTS `notas_categorias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `notas_categorias` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nota_id` int(11) NOT NULL,
  `categoria_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_37a9072f-47be-47f0-a3fc-95e117d56573` (`nota_id`),
  KEY `FK_dad138bc-2d2c-4421-9499-65b85b035ad7` (`categoria_id`),
  CONSTRAINT `FK_37a9072f-47be-47f0-a3fc-95e117d56573` FOREIGN KEY (`nota_id`) REFERENCES `notas` (`id`),
  CONSTRAINT `FK_dad138bc-2d2c-4421-9499-65b85b035ad7` FOREIGN KEY (`categoria_id`) REFERENCES `categorias` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notas_categorias`
--

LOCK TABLES `notas_categorias` WRITE;
/*!40000 ALTER TABLE `notas_categorias` DISABLE KEYS */;
INSERT INTO `notas_categorias` VALUES (2,1,9),(4,2,14),(5,3,6),(6,4,1),(7,5,10),(8,6,11),(9,7,7),(10,8,13),(11,9,12),(12,10,8);
/*!40000 ALTER TABLE `notas_categorias` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) NOT NULL,
  `E-mail` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuarios`
--

LOCK TABLES `usuarios` WRITE;
/*!40000 ALTER TABLE `usuarios` DISABLE KEYS */;
INSERT INTO `usuarios` VALUES (1,'Lucas Rivero','lucas.rivero1993@gmail.com'),(2,'Facundo TIssera','facuelmask-po@hotmail.com'),(3,'Nicolas Leta','nico_3surdo@hotmail.com'),(4,'Franco Amargo','amargos_franco1993@gmail.com'),(5,'Emanuel Portela','bechu.casla94@hotmail.com'),(6,'Enzo Abregu','enzito2009@hotmail.com'),(7,'Lionel Messi','lio10@futbol.com'),(8,'Gaston Fagnola','gastiacdc@yahoo.com'),(9,'Miguel Amaya','miguelpizzeria@gmail.com'),(10,'Matias Marin','matiasmarin86@gmail.com');
/*!40000 ALTER TABLE `usuarios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'entregablelucas'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-09-21 10:47:32
