-- MySQL dump 10.13  Distrib 5.7.36, for Win64 (x86_64)
--
-- Host: localhost    Database: marlybusyness_db
-- ------------------------------------------------------
-- Server version	5.7.36-log

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
-- Table structure for table `action`
--

DROP TABLE IF EXISTS `action`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `action` (
  `id_action` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `id_actionnaire` smallint(5) unsigned NOT NULL,
  `date_action` datetime NOT NULL,
  `somme_contribuee` decimal(10,0) NOT NULL,
  PRIMARY KEY (`id_action`),
  KEY `fk_actionnaire_action` (`id_actionnaire`),
  CONSTRAINT `fk_actionnaire_action` FOREIGN KEY (`id_actionnaire`) REFERENCES `actionnaire` (`id_actionnaire`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `action`
--

LOCK TABLES `action` WRITE;
/*!40000 ALTER TABLE `action` DISABLE KEYS */;
/*!40000 ALTER TABLE `action` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `actionnaire`
--

DROP TABLE IF EXISTS `actionnaire`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `actionnaire` (
  `id_actionnaire` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `nom_prenom` varchar(255) NOT NULL,
  `mobile` varchar(20) NOT NULL,
  `telephone` varchar(20) DEFAULT NULL,
  `civilite` smallint(1) DEFAULT NULL,
  `date_debut_contribution` datetime NOT NULL,
  `profession` varchar(50) DEFAULT NULL,
  `somme_actuelle` decimal(10,0) NOT NULL,
  PRIMARY KEY (`id_actionnaire`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `actionnaire`
--

LOCK TABLES `actionnaire` WRITE;
/*!40000 ALTER TABLE `actionnaire` DISABLE KEYS */;
/*!40000 ALTER TABLE `actionnaire` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `arrondissement`
--

DROP TABLE IF EXISTS `arrondissement`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `arrondissement` (
  `id_arrondissement` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `libele_arrondissement` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id_arrondissement`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `arrondissement`
--

LOCK TABLES `arrondissement` WRITE;
/*!40000 ALTER TABLE `arrondissement` DISABLE KEYS */;
INSERT INTO `arrondissement` VALUES (1,'MakelÃ©kelÃ©'),(2,'Bacongo'),(3,'Poto-Poto'),(4,'Moungali'),(5,'OuenzÃ©'),(6,'Talangai'),(7,'M\'Filou');
/*!40000 ALTER TABLE `arrondissement` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `caisse`
--

DROP TABLE IF EXISTS `caisse`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `caisse` (
  `id_caisse` smallint(5) unsigned NOT NULL,
  `id_owner` smallint(5) unsigned DEFAULT NULL,
  `code_caisse` varchar(10) DEFAULT NULL,
  `libele_caisse` varchar(15) DEFAULT NULL,
  `Solde_caisse` decimal(10,0) NOT NULL,
  PRIMARY KEY (`id_caisse`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `caisse`
--

LOCK TABLES `caisse` WRITE;
/*!40000 ALTER TABLE `caisse` DISABLE KEYS */;
INSERT INTO `caisse` VALUES (1,1,'CCA','Caisse Caleb',0),(2,2,'CKR','Caisse Keren',172400);
/*!40000 ALTER TABLE `caisse` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `client`
--

DROP TABLE IF EXISTS `client`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `client` (
  `id_client` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `nom_prenom` varchar(255) NOT NULL,
  `mobile` varchar(20) NOT NULL,
  `telephone` varchar(20) DEFAULT NULL,
  `civilite` smallint(1) DEFAULT NULL,
  `profession` tinyint(1) NOT NULL,
  `gage` varchar(20) DEFAULT NULL,
  `gage_valeur` decimal(10,0) DEFAULT NULL,
  `fonctionnaire` tinyint(1) DEFAULT '0',
  `arrondissement` smallint(6) DEFAULT '6',
  `addresse` varchar(200) DEFAULT 'Mikalou',
  PRIMARY KEY (`id_client`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `client`
--

LOCK TABLES `client` WRITE;
/*!40000 ALTER TABLE `client` DISABLE KEYS */;
INSERT INTO `client` VALUES (1,'ESPERENCE','0','',2,1,'',0,0,6,'Mikalou'),(3,'sonia','064979513','',2,3,'',0,0,6,'Mikalou'),(4,'claige','065658162','',2,3,'',0,0,6,'Mikalou'),(5,'didÃ©','0','',2,2,'',0,0,6,'Mikalou'),(6,'erina','0','',3,3,'',0,0,6,'Mikalou'),(7,'regina','0','',3,3,'',0,0,6,'Mikalou'),(8,'LADY','0','',1,3,'',0,0,6,'Mikalou'),(9,'ALIVE','0','',1,3,'',0,0,6,'Mikalou'),(10,'GIRESSE','0','',1,3,'',0,0,6,'Mikalou'),(11,'JOLINA','0','',3,3,'',0,0,6,'Mikalou'),(12,'PEA','0','',1,3,'',0,0,6,'Mikalou'),(13,'LYNEZE','0','',2,3,'',0,0,6,'Mikalou'),(14,'BONHEUR','0','',1,3,'',0,0,6,'Mikalou'),(15,'ANGELE','0','',2,2,'',0,0,6,'Mikalou'),(16,'ESPE','0','',2,1,'',0,0,6,'Mikalou'),(17,'SONIA','0','',2,3,'',0,0,6,'Mikalou'),(18,'FRANCIA','0','',2,3,'',0,0,6,'Mikalou'),(19,'BILL','0','',1,3,'',0,0,6,'Mikalou'),(20,'EVIDENCE','0','',3,3,'',0,0,6,'Mikalou'),(21,'ULRICHE','0','',1,3,'',0,0,6,'Mikalou'),(22,'Jennie','0','0',3,4,'',0,0,6,'Talanga'),(23,'Debaura','0','',3,4,'',0,0,6,'0'),(24,'Tendresse','0','0',3,4,'',0,0,6,'0'),(25,'Jolie','0','0',2,4,'',0,0,6,'0'),(26,'Mari de Chance','0','0',1,5,'',0,0,6,'0');
/*!40000 ALTER TABLE `client` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `compte`
--

DROP TABLE IF EXISTS `compte`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `compte` (
  `num_compte` smallint(5) unsigned NOT NULL,
  `id_owner` smallint(5) unsigned NOT NULL,
  `code` varchar(10) DEFAULT NULL,
  `libele_compte` varchar(15) DEFAULT NULL,
  `Solde_compte` decimal(10,0) NOT NULL,
  PRIMARY KEY (`num_compte`),
  KEY `fk_part_compte` (`id_owner`),
  CONSTRAINT `fk_part_compte` FOREIGN KEY (`id_owner`) REFERENCES `partenaire` (`id_partenaire`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `compte`
--

LOCK TABLES `compte` WRITE;
/*!40000 ALTER TABLE `compte` DISABLE KEYS */;
/*!40000 ALTER TABLE `compte` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `compte_bancaire`
--

DROP TABLE IF EXISTS `compte_bancaire`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `compte_bancaire` (
  `num_compte` smallint(5) unsigned NOT NULL,
  `code` varchar(10) DEFAULT NULL,
  `libele_compte` varchar(15) DEFAULT NULL,
  `Solde_compte` decimal(10,0) NOT NULL,
  PRIMARY KEY (`num_compte`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `compte_bancaire`
--

LOCK TABLES `compte_bancaire` WRITE;
/*!40000 ALTER TABLE `compte_bancaire` DISABLE KEYS */;
/*!40000 ALTER TABLE `compte_bancaire` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `credit_caisse`
--

DROP TABLE IF EXISTS `credit_caisse`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `credit_caisse` (
  `id_credit_caisse` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `id_operator` smallint(5) unsigned NOT NULL,
  `date_transaction` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `id_rembours` int(10) unsigned NOT NULL,
  `somme_creditee` decimal(10,0) NOT NULL,
  `mois` varchar(10) NOT NULL DEFAULT '202306',
  PRIMARY KEY (`id_credit_caisse`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `credit_caisse`
--

LOCK TABLES `credit_caisse` WRITE;
/*!40000 ALTER TABLE `credit_caisse` DISABLE KEYS */;
INSERT INTO `credit_caisse` VALUES (1,2,'2023-05-27 00:00:00',16,7000,'202306'),(2,2,'2023-05-27 00:00:00',2,43400,'202306'),(3,2,'2023-05-27 00:00:00',19,70000,'202306'),(4,2,'2023-05-27 00:00:00',17,7000,'202306'),(5,2,'2023-05-27 00:00:00',28,7000,'202306'),(6,2,'2023-05-27 00:00:00',5,84000,'202306'),(7,2,'2023-05-29 00:00:00',30,14000,'2023-07-10'),(8,2,'2023-05-29 00:00:00',11,21000,'0'),(9,2,'2023-05-29 00:00:00',18,91000,'202306'),(10,2,'2023-05-29 00:00:00',26,7000,'202306'),(11,2,'2023-05-29 00:00:00',13,42000,'202306');
/*!40000 ALTER TABLE `credit_caisse` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `debit_caisse`
--

DROP TABLE IF EXISTS `debit_caisse`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `debit_caisse` (
  `id_debit_caisse` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `id_operator` smallint(5) unsigned NOT NULL,
  `date_transaction` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `id_emprunt` int(10) unsigned NOT NULL,
  `somme_debitee` decimal(10,0) NOT NULL,
  `mois` varchar(10) NOT NULL DEFAULT '202306',
  `interet_total` decimal(10,0) NOT NULL DEFAULT '0',
  `total_a_payer` decimal(10,0) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_debit_caisse`)
) ENGINE=InnoDB AUTO_INCREMENT=68 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `debit_caisse`
--

LOCK TABLES `debit_caisse` WRITE;
/*!40000 ALTER TABLE `debit_caisse` DISABLE KEYS */;
INSERT INTO `debit_caisse` VALUES (8,2,'2023-05-27 00:00:00',32,10000,'202307',4000,14000),(9,2,'2023-05-27 00:00:00',33,80000,'202307',32000,112000),(40,2,'2023-05-15 00:00:00',2,31000,'202306',12400,43400),(41,2,'2023-05-15 00:00:00',4,80000,'202306',32000,112000),(42,2,'2023-05-15 00:00:00',5,60000,'202306',24000,84000),(43,2,'2023-05-15 00:00:00',6,30000,'202306',12000,42000),(44,2,'2023-05-15 00:00:00',7,10000,'202306',4000,14000),(45,2,'2023-05-15 00:00:00',8,60000,'202306',18000,78000),(46,2,'2023-05-15 00:00:00',11,15000,'202306',6000,21000),(47,2,'2023-05-15 00:00:00',12,20000,'202306',8000,28000),(48,2,'2023-05-15 00:00:00',13,30000,'202306',12000,42000),(49,2,'2023-05-15 00:00:00',14,40000,'202306',16000,56000),(50,2,'2023-05-15 00:00:00',16,5000,'202306',2000,7000),(51,2,'2023-05-15 00:00:00',17,10000,'202306',4000,14000),(52,2,'2023-05-15 00:00:00',18,65000,'202306',26000,91000),(53,2,'2023-05-15 00:00:00',19,50000,'202306',20000,70000),(54,2,'2023-05-15 00:00:00',21,50000,'202306',20000,70000),(55,2,'2023-05-15 00:00:00',22,35000,'202306',14000,49000),(56,2,'2023-05-15 00:00:00',23,15000,'202306',6000,21000),(57,2,'2023-05-15 00:00:00',24,15000,'202306',6000,21000),(58,2,'2023-05-15 00:00:00',25,15000,'202306',6000,21000),(59,2,'2023-05-15 00:00:00',26,5000,'202306',2000,7000),(60,2,'2023-05-15 00:00:00',27,10000,'202306',4000,14000),(61,2,'2023-05-15 00:00:00',28,35000,'202306',14000,49000),(62,2,'2023-05-15 00:00:00',29,25000,'202306',10000,35000),(63,2,'2023-05-15 00:00:00',30,10000,'202306',4000,14000),(64,2,'2023-05-15 00:00:00',31,35000,'202306',14000,49000),(65,2,'2023-05-29 00:00:00',37,15000,'202306',6000,21000),(66,2,'2023-05-29 00:00:00',38,88000,'202307',35200,123200),(67,2,'2023-05-29 00:00:00',39,5000,'202306',1750,6750);
/*!40000 ALTER TABLE `debit_caisse` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `emprunt`
--

DROP TABLE IF EXISTS `emprunt`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `emprunt` (
  `id_emprunt` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_client` smallint(5) unsigned NOT NULL,
  `date_emprunt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `somme_empruntee` decimal(10,0) NOT NULL,
  `taux_interet` decimal(2,2) DEFAULT '0.40',
  `date_rembours` datetime NOT NULL,
  `reduction` tinyint(1) DEFAULT '0',
  `soldee` tinyint(1) NOT NULL DEFAULT '0',
  `operator_id` smallint(5) unsigned NOT NULL DEFAULT '2',
  PRIMARY KEY (`id_emprunt`),
  KEY `fk_client_emprunt` (`id_client`),
  CONSTRAINT `fk_client_emprunt` FOREIGN KEY (`id_client`) REFERENCES `client` (`id_client`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `emprunt`
--

LOCK TABLES `emprunt` WRITE;
/*!40000 ALTER TABLE `emprunt` DISABLE KEYS */;
INSERT INTO `emprunt` VALUES (2,1,'2023-05-01 00:00:00',31000,0.40,'2023-06-10 00:00:00',0,1,2),(4,3,'2023-05-02 00:00:00',80000,0.40,'2023-06-10 00:00:00',0,0,2),(5,4,'2023-05-02 00:00:00',60000,0.40,'2023-06-10 00:00:00',0,1,2),(6,5,'2023-05-03 00:00:00',30000,0.40,'2023-06-10 00:00:00',0,0,2),(7,6,'2023-05-04 00:00:00',10000,0.40,'2023-06-10 00:00:00',0,0,2),(8,7,'2023-05-04 00:00:00',60000,0.30,'2023-06-10 00:00:00',1,0,2),(11,8,'2023-05-05 00:00:00',15000,0.40,'2023-06-10 00:00:00',0,1,2),(12,10,'2023-05-05 00:00:00',20000,0.40,'2023-06-10 00:00:00',0,0,2),(13,11,'2023-05-06 00:00:00',30000,0.40,'2023-06-10 00:00:00',0,1,2),(14,12,'2023-05-06 00:00:00',40000,0.40,'2023-06-10 00:00:00',0,0,2),(16,14,'2023-05-08 00:00:00',5000,0.40,'2023-06-10 00:00:00',0,1,2),(17,15,'2023-05-10 00:00:00',10000,0.40,'2023-05-10 00:00:00',0,0,2),(18,13,'2023-05-10 00:00:00',65000,0.40,'2023-06-10 00:00:00',0,1,2),(19,1,'2023-05-11 00:00:00',50000,0.40,'2023-05-11 00:00:00',0,1,2),(21,18,'2023-05-11 00:00:00',50000,0.40,'2023-06-10 00:00:00',0,0,2),(22,19,'2023-05-12 00:00:00',35000,0.40,'2023-05-12 00:00:00',0,0,2),(23,20,'2023-05-15 00:00:00',15000,0.40,'2023-06-10 00:00:00',0,0,2),(24,21,'2023-05-15 00:00:00',15000,0.40,'2023-06-10 00:00:00',0,0,2),(25,3,'2023-05-07 00:00:00',15000,0.40,'2023-06-10 00:00:00',0,1,2),(26,5,'2023-05-10 00:00:00',5000,0.40,'2023-06-10 00:00:00',0,1,2),(27,22,'2023-05-09 00:00:00',10000,0.40,'2023-06-10 00:00:00',0,0,2),(28,23,'2023-05-09 00:00:00',35000,0.40,'2023-06-10 00:00:00',0,1,2),(29,24,'2023-05-11 00:00:00',25000,0.40,'2023-06-10 00:00:00',0,0,2),(30,25,'2023-05-11 00:00:00',10000,0.40,'2023-06-10 00:00:00',0,1,2),(31,26,'2023-05-10 00:00:00',35000,0.40,'2023-06-10 00:00:00',0,0,2),(32,1,'2023-05-27 00:00:00',10000,0.40,'2023-07-10 00:00:00',0,0,2),(33,4,'2023-05-27 00:00:00',80000,0.40,'2023-07-10 00:00:00',0,0,2),(37,19,'2023-05-29 00:00:00',15000,0.40,'2023-06-10 00:00:00',0,0,2),(38,10,'2023-05-29 00:00:00',88000,0.40,'2023-07-10 00:00:00',0,0,2),(39,4,'2023-05-29 00:00:00',5000,0.35,'2023-06-10 00:00:00',1,0,2);
/*!40000 ALTER TABLE `emprunt` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fonction_interne`
--

DROP TABLE IF EXISTS `fonction_interne`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fonction_interne` (
  `id_fonction` smallint(5) unsigned NOT NULL,
  `libele_fonction` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id_fonction`),
  UNIQUE KEY `unique_fonction` (`id_fonction`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fonction_interne`
--

LOCK TABLES `fonction_interne` WRITE;
/*!40000 ALTER TABLE `fonction_interne` DISABLE KEYS */;
INSERT INTO `fonction_interne` VALUES (1,'Superviseur(e)'),(2,'Caissier(e)');
/*!40000 ALTER TABLE `fonction_interne` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `histo_remboursement`
--

DROP TABLE IF EXISTS `histo_remboursement`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `histo_remboursement` (
  `id_hist_rembours` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_rembours` int(11) NOT NULL,
  `id_client` int(10) unsigned NOT NULL,
  `id_emprunt` int(10) unsigned NOT NULL,
  `id_interet` int(10) unsigned NOT NULL,
  `somme_dep_emprunt` decimal(10,0) NOT NULL,
  `taux_interet` decimal(2,2) DEFAULT '0.40',
  `interet_accu_total` decimal(10,0) NOT NULL,
  `total_a_payer` decimal(10,0) NOT NULL DEFAULT '0',
  `total_encaisse` decimal(10,0) NOT NULL DEFAULT '0',
  `date_paiement` datetime NOT NULL,
  `soldee` tinyint(1) NOT NULL DEFAULT '0',
  `caisse` smallint(5) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id_hist_rembours`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `histo_remboursement`
--

LOCK TABLES `histo_remboursement` WRITE;
/*!40000 ALTER TABLE `histo_remboursement` DISABLE KEYS */;
INSERT INTO `histo_remboursement` VALUES (1,16,14,16,16,5000,0.40,2000,7000,7000,'2023-05-27 00:00:00',1,1),(2,2,1,2,2,31000,0.40,12400,43400,43400,'2023-05-27 00:00:00',1,1),(3,19,1,19,19,50000,0.40,20000,70000,70000,'2023-05-27 00:00:00',1,1),(4,17,15,17,17,10000,0.40,4000,14000,7000,'2023-05-27 00:00:00',0,1),(5,28,23,28,28,35000,0.40,14000,49000,7000,'2023-05-27 00:00:00',0,1),(6,5,4,5,5,60000,0.40,24000,84000,84000,'2023-05-27 00:00:00',1,1),(7,33,23,28,28,42000,0.40,0,42000,42000,'2023-05-29 00:00:00',1,1),(8,30,25,30,30,10000,0.40,4000,14000,14000,'2023-05-29 00:00:00',1,1),(9,11,8,11,11,15000,0.40,6000,21000,21000,'2023-05-29 00:00:00',1,1),(10,18,13,18,18,65000,0.40,26000,91000,91000,'2023-05-29 00:00:00',1,1),(11,26,5,26,26,5000,0.40,2000,7000,7000,'2023-05-29 00:00:00',1,1),(12,25,3,25,25,15000,0.40,6000,21000,21000,'2023-05-29 00:00:00',1,1),(13,13,11,13,13,30000,0.40,12000,42000,42000,'2023-05-29 00:00:00',1,1);
/*!40000 ALTER TABLE `histo_remboursement` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `interet`
--

DROP TABLE IF EXISTS `interet`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `interet` (
  `id_interet` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_client` smallint(5) unsigned NOT NULL,
  `id_emprunt` int(10) unsigned NOT NULL,
  `somme_dep_emprunt` decimal(10,0) NOT NULL,
  `interet_accu_total` decimal(10,0) NOT NULL,
  `interet_continue` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`id_interet`),
  KEY `fk_intert_emprunt` (`id_emprunt`),
  CONSTRAINT `fk_intert_emprunt` FOREIGN KEY (`id_emprunt`) REFERENCES `emprunt` (`id_emprunt`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `interet`
--

LOCK TABLES `interet` WRITE;
/*!40000 ALTER TABLE `interet` DISABLE KEYS */;
INSERT INTO `interet` VALUES (2,1,2,31000,12400,0),(4,3,4,80000,32000,1),(5,4,5,60000,24000,0),(6,5,6,30000,12000,1),(7,6,7,10000,4000,1),(8,7,8,60000,18000,1),(11,8,11,15000,6000,0),(12,10,12,20000,8000,1),(13,11,13,30000,12000,0),(14,12,14,40000,16000,1),(16,14,16,5000,2000,0),(17,15,17,10000,4000,1),(18,13,18,65000,26000,0),(19,1,19,50000,20000,0),(21,18,21,50000,20000,1),(22,19,22,35000,14000,1),(23,20,23,15000,6000,1),(24,21,24,15000,6000,1),(25,3,25,15000,6000,0),(26,5,26,5000,2000,0),(27,22,27,10000,4000,1),(28,23,28,35000,14000,0),(29,24,29,25000,10000,1),(30,25,30,10000,4000,0),(31,26,31,35000,14000,1),(32,1,32,10000,4000,1),(33,4,33,80000,32000,1),(37,19,37,15000,6000,1),(38,10,38,88000,35200,1),(39,4,39,5000,1750,1);
/*!40000 ALTER TABLE `interet` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `login_session`
--

DROP TABLE IF EXISTS `login_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `login_session` (
  `id_session` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `id_partenaire` smallint(5) unsigned NOT NULL,
  `login` varchar(30) DEFAULT NULL,
  `mot_passe` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id_session`),
  KEY `fk_part_login` (`id_partenaire`),
  CONSTRAINT `fk_part_login` FOREIGN KEY (`id_partenaire`) REFERENCES `partenaire` (`id_partenaire`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `login_session`
--

LOCK TABLES `login_session` WRITE;
/*!40000 ALTER TABLE `login_session` DISABLE KEYS */;
INSERT INTO `login_session` VALUES (1,1,'Caleb','20048'),(2,2,'Keren','1234');
/*!40000 ALTER TABLE `login_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `management`
--

DROP TABLE IF EXISTS `management`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `management` (
  `admin_password` varchar(50) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `management`
--

LOCK TABLES `management` WRITE;
/*!40000 ALTER TABLE `management` DISABLE KEYS */;
/*!40000 ALTER TABLE `management` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `partenaire`
--

DROP TABLE IF EXISTS `partenaire`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `partenaire` (
  `id_partenaire` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `id_fonction` smallint(5) unsigned NOT NULL,
  `nom_prenom` varchar(50) NOT NULL,
  `addresse` varchar(255) DEFAULT NULL,
  `civilite` smallint(1) DEFAULT NULL,
  `mobile` varchar(15) NOT NULL,
  `date_naissance` datetime DEFAULT CURRENT_TIMESTAMP,
  `droit_caisse` tinyint(1) DEFAULT '0',
  `est_actionnaire` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id_partenaire`),
  KEY `fk_part_fonction` (`id_fonction`),
  CONSTRAINT `fk_part_fonction` FOREIGN KEY (`id_fonction`) REFERENCES `fonction_interne` (`id_fonction`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `partenaire`
--

LOCK TABLES `partenaire` WRITE;
/*!40000 ALTER TABLE `partenaire` DISABLE KEYS */;
INSERT INTO `partenaire` VALUES (1,1,'Marly Caleb',NULL,1,'','2004-01-08 00:00:00',0,0),(2,2,'Marly Keren',NULL,2,'','1998-08-10 00:00:00',1,0);
/*!40000 ALTER TABLE `partenaire` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `profession`
--

DROP TABLE IF EXISTS `profession`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `profession` (
  `id_profession` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `libele_profession` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id_profession`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `profession`
--

LOCK TABLES `profession` WRITE;
/*!40000 ALTER TABLE `profession` DISABLE KEYS */;
INSERT INTO `profession` VALUES (1,'Enseignant(e)'),(2,'Vendeur(se)'),(3,'Militaire'),(4,'MenagÃ¨re'),(5,'Autres');
/*!40000 ALTER TABLE `profession` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `remboursement`
--

DROP TABLE IF EXISTS `remboursement`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `remboursement` (
  `id_rembours` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_emprunt` int(10) unsigned NOT NULL,
  `id_interet` int(10) unsigned NOT NULL,
  `somme_dep_emprunt` decimal(10,0) NOT NULL,
  `taux_interet` decimal(2,2) DEFAULT '0.40',
  `interet_accu_total` decimal(10,0) NOT NULL,
  `total_a_payer` decimal(10,0) NOT NULL DEFAULT '0',
  `somme_payee` decimal(10,0) NOT NULL,
  `somme_restant` decimal(10,0) NOT NULL,
  `date_paiement` datetime NOT NULL,
  `cloture` tinyint(1) NOT NULL DEFAULT '0',
  `date_echeance` datetime NOT NULL,
  PRIMARY KEY (`id_rembours`),
  KEY `fk_emprunt_rembours` (`id_emprunt`),
  KEY `fk_intert_rembours` (`id_interet`),
  CONSTRAINT `fk_emprunt_rembours` FOREIGN KEY (`id_emprunt`) REFERENCES `emprunt` (`id_emprunt`),
  CONSTRAINT `fk_intert_rembours` FOREIGN KEY (`id_interet`) REFERENCES `interet` (`id_interet`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `remboursement`
--

LOCK TABLES `remboursement` WRITE;
/*!40000 ALTER TABLE `remboursement` DISABLE KEYS */;
INSERT INTO `remboursement` VALUES (2,2,2,31000,0.40,12400,43400,43400,0,'2023-05-27 00:00:00',1,'2023-06-10 00:00:00'),(4,4,4,80000,0.40,32000,112000,0,112000,'2023-06-10 00:00:00',0,'2023-06-10 00:00:00'),(5,5,5,60000,0.40,24000,84000,84000,0,'2023-05-27 00:00:00',1,'2023-06-10 00:00:00'),(6,6,6,30000,0.40,12000,42000,0,42000,'2023-06-10 00:00:00',0,'2023-06-10 00:00:00'),(7,7,7,10000,0.40,4000,14000,0,14000,'2023-06-10 00:00:00',0,'2023-06-10 00:00:00'),(8,8,8,60000,0.30,18000,78000,0,78000,'2023-06-10 00:00:00',0,'2023-06-10 00:00:00'),(11,11,11,15000,0.40,6000,21000,21000,0,'2023-05-29 00:00:00',1,'2023-06-10 00:00:00'),(12,12,12,20000,0.40,8000,28000,0,28000,'2023-06-10 00:00:00',0,'2023-06-10 00:00:00'),(13,13,13,30000,0.40,12000,42000,42000,0,'2023-05-29 00:00:00',1,'2023-06-10 00:00:00'),(14,14,14,40000,0.40,16000,56000,0,56000,'2023-06-10 00:00:00',0,'2023-06-10 00:00:00'),(16,16,16,5000,0.40,2000,7000,7000,0,'2023-05-27 00:00:00',1,'2023-06-10 00:00:00'),(17,17,17,10000,0.40,4000,14000,7000,7000,'2023-05-27 00:00:00',1,'2023-06-10 00:00:00'),(18,18,18,65000,0.40,26000,91000,91000,0,'2023-05-29 00:00:00',1,'2023-06-10 00:00:00'),(19,19,19,50000,0.40,20000,70000,70000,0,'2023-05-27 00:00:00',1,'2023-06-10 00:00:00'),(21,21,21,50000,0.40,20000,70000,0,70000,'2023-06-10 00:00:00',0,'2023-06-10 00:00:00'),(22,22,22,35000,0.40,14000,49000,0,49000,'2023-06-10 00:00:00',0,'2023-06-10 00:00:00'),(23,23,23,15000,0.40,6000,21000,0,21000,'2023-06-10 00:00:00',0,'2023-06-10 00:00:00'),(24,24,24,15000,0.40,6000,21000,0,21000,'2023-06-10 00:00:00',0,'2023-06-10 00:00:00'),(25,25,25,15000,0.40,6000,21000,21000,0,'2023-05-29 00:00:00',1,'2023-06-10 00:00:00'),(26,26,26,5000,0.40,2000,7000,7000,0,'2023-05-29 00:00:00',1,'2023-06-10 00:00:00'),(27,27,27,10000,0.40,4000,14000,0,14000,'2023-06-10 00:00:00',0,'2023-06-10 00:00:00'),(28,28,28,35000,0.40,14000,49000,7000,42000,'2023-05-27 00:00:00',1,'2023-06-10 00:00:00'),(29,29,29,25000,0.40,10000,35000,0,35000,'2023-06-10 00:00:00',0,'2023-06-10 00:00:00'),(30,30,30,10000,0.40,4000,14000,14000,0,'2023-05-29 00:00:00',1,'2023-06-10 00:00:00'),(31,31,31,35000,0.40,14000,49000,0,49000,'2023-06-10 00:00:00',0,'2023-06-10 00:00:00'),(32,17,17,7000,0.40,0,7000,0,7000,'2023-06-10 00:00:00',0,'2023-06-10 00:00:00'),(33,28,28,42000,0.40,0,42000,42000,0,'2023-05-29 00:00:00',1,'2023-06-10 00:00:00'),(34,32,32,10000,0.40,4000,14000,0,14000,'2023-07-10 00:00:00',0,'2023-07-10 00:00:00'),(35,33,33,80000,0.40,32000,112000,0,112000,'2023-07-10 00:00:00',0,'2023-07-10 00:00:00'),(39,37,37,15000,0.40,6000,21000,0,21000,'2023-06-10 00:00:00',0,'2023-06-10 00:00:00'),(40,38,38,88000,0.40,35200,123200,0,123200,'2023-07-10 00:00:00',0,'2023-07-10 00:00:00'),(41,39,39,5000,0.35,1750,6750,0,6750,'2023-06-10 00:00:00',0,'2023-06-10 00:00:00');
/*!40000 ALTER TABLE `remboursement` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `retrait_espece`
--

DROP TABLE IF EXISTS `retrait_espece`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `retrait_espece` (
  `id_retrait_espece` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `id_operator` smallint(5) unsigned NOT NULL,
  `date_retrait` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `solde_avant_retrait` decimal(10,0) NOT NULL,
  `somme_retrait` decimal(10,0) NOT NULL,
  `solde_apres_retrait` decimal(10,0) NOT NULL,
  `motif_retrait` varchar(255) NOT NULL,
  PRIMARY KEY (`id_retrait_espece`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `retrait_espece`
--

LOCK TABLES `retrait_espece` WRITE;
/*!40000 ALTER TABLE `retrait_espece` DISABLE KEYS */;
INSERT INTO `retrait_espece` VALUES (1,2,'2023-05-30 00:00:00',237400,50000,187400,''),(2,2,'2023-05-30 00:00:00',187400,15000,172400,'Paiment salaire Caleb, mois de Juin');
/*!40000 ALTER TABLE `retrait_espece` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transfer_inter_caisse`
--

DROP TABLE IF EXISTS `transfer_inter_caisse`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `transfer_inter_caisse` (
  `id_trans_caisse` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `id_caisse_source` smallint(5) unsigned NOT NULL,
  `id_caisse_dest` smallint(5) unsigned NOT NULL,
  `id_operator` smallint(5) unsigned NOT NULL,
  `date_trans` datetime NOT NULL,
  `solde_avant_trans` decimal(10,0) NOT NULL,
  `somme_trans` decimal(10,0) NOT NULL,
  `solde_apres_trans` decimal(10,0) NOT NULL,
  `libele_trans` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_trans_caisse`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transfer_inter_caisse`
--

LOCK TABLES `transfer_inter_caisse` WRITE;
/*!40000 ALTER TABLE `transfer_inter_caisse` DISABLE KEYS */;
/*!40000 ALTER TABLE `transfer_inter_caisse` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transfer_inter_compte`
--

DROP TABLE IF EXISTS `transfer_inter_compte`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `transfer_inter_compte` (
  `id_trans_compte` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `id_compte_source` smallint(5) unsigned NOT NULL,
  `id_compte_dest` smallint(5) unsigned NOT NULL,
  `id_operator` smallint(5) unsigned NOT NULL,
  `date_trans` datetime NOT NULL,
  `solde_avant_trans` decimal(10,0) NOT NULL,
  `somme_trans` decimal(10,0) NOT NULL,
  `solde_apres_trans` decimal(10,0) NOT NULL,
  `libele_trans` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_trans_compte`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transfer_inter_compte`
--

LOCK TABLES `transfer_inter_compte` WRITE;
/*!40000 ALTER TABLE `transfer_inter_compte` DISABLE KEYS */;
/*!40000 ALTER TABLE `transfer_inter_compte` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-05-31 12:38:03
