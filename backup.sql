-- MySQL dump 10.13  Distrib 8.0.39, for Win64 (x86_64)
--
-- Host: localhost    Database: banco_de_dados
-- ------------------------------------------------------
-- Server version	8.0.39

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
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
INSERT INTO `auth_group` VALUES (1,'equipe');
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `group_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_permission` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content_type_id` int NOT NULL,
  `codename` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=65 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',2,'add_permission'),(6,'Can change permission',2,'change_permission'),(7,'Can delete permission',2,'delete_permission'),(8,'Can view permission',2,'view_permission'),(9,'Can add group',3,'add_group'),(10,'Can change group',3,'change_group'),(11,'Can delete group',3,'delete_group'),(12,'Can view group',3,'view_group'),(13,'Can add user',4,'add_user'),(14,'Can change user',4,'change_user'),(15,'Can delete user',4,'delete_user'),(16,'Can view user',4,'view_user'),(17,'Can add content type',5,'add_contenttype'),(18,'Can change content type',5,'change_contenttype'),(19,'Can delete content type',5,'delete_contenttype'),(20,'Can view content type',5,'view_contenttype'),(21,'Can add session',6,'add_session'),(22,'Can change session',6,'change_session'),(23,'Can delete session',6,'delete_session'),(24,'Can view session',6,'view_session'),(25,'Can add categoria',7,'add_categoria'),(26,'Can change categoria',7,'change_categoria'),(27,'Can delete categoria',7,'delete_categoria'),(28,'Can view categoria',7,'view_categoria'),(29,'Can add item estoque',8,'add_itemestoque'),(30,'Can change item estoque',8,'change_itemestoque'),(31,'Can delete item estoque',8,'delete_itemestoque'),(32,'Can view item estoque',8,'view_itemestoque'),(33,'Can add tipo',9,'add_tipo'),(34,'Can change tipo',9,'change_tipo'),(35,'Can delete tipo',9,'delete_tipo'),(36,'Can view tipo',9,'view_tipo'),(37,'Can add cliente',10,'add_cliente'),(38,'Can change cliente',10,'change_cliente'),(39,'Can delete cliente',10,'delete_cliente'),(40,'Can view cliente',10,'view_cliente'),(41,'Can add endereco',11,'add_endereco'),(42,'Can change endereco',11,'change_endereco'),(43,'Can delete endereco',11,'delete_endereco'),(44,'Can view endereco',11,'view_endereco'),(45,'Can add pedido',12,'add_pedido'),(46,'Can change pedido',12,'change_pedido'),(47,'Can delete pedido',12,'delete_pedido'),(48,'Can view pedido',12,'view_pedido'),(49,'Can add itens pedido',13,'add_itenspedido'),(50,'Can change itens pedido',13,'change_itenspedido'),(51,'Can delete itens pedido',13,'delete_itenspedido'),(52,'Can view itens pedido',13,'view_itenspedido'),(53,'Can add produto',14,'add_produto'),(54,'Can change produto',14,'change_produto'),(55,'Can delete produto',14,'delete_produto'),(56,'Can view produto',14,'view_produto'),(57,'Can add banner',15,'add_banner'),(58,'Can change banner',15,'change_banner'),(59,'Can delete banner',15,'delete_banner'),(60,'Can view banner',15,'view_banner'),(61,'Can add pagamento',16,'add_pagamento'),(62,'Can change pagamento',16,'change_pagamento'),(63,'Can delete pagamento',16,'delete_pagamento'),(64,'Can view pagamento',16,'view_pagamento');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `password` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `first_name` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(254) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$870000$33PZ0g4hsDAFmCV6DfgG9A$U22N17AnM8/hLvQCPGbTSiUxarOVnLlWcNNAdMY9fAs=','2024-11-04 00:04:08.470948',1,'victor.simao90@gmail.com','Victor','Sim├úo','victor.simao90@gmail.com',1,1,'2024-09-17 23:52:40.000000'),(2,'!wssycueF6VjvXH6BeRUYwjMn8aJulLTixADHssc3',NULL,0,'teste','','','',0,1,'2024-10-13 21:02:42.000000'),(3,'pbkdf2_sha256$870000$AAU60qWFrobNTIUtCVBu2t$+UlAFvCYvlFT0g0f4pUJnqbeWsxVwaeG0sY6GK7450Y=','2024-10-21 12:49:12.294777',0,'teste.1@gmail.com','','','teste.1@gmail.com',0,1,'2024-10-21 12:49:10.526911'),(5,'pbkdf2_sha256$870000$c14DEp7VXqwfAPAy6hCS0L$b6/RPWfY/re/z88w84ZSuhJTAUOzm0PmWPQzYS3zI5c=','2024-10-21 13:03:54.849577',0,'teste.3@gmail.com','','','teste.3@gmail.com',0,1,'2024-10-21 13:03:53.095190'),(6,'pbkdf2_sha256$870000$mSe60R2M2YfJHwI70xxoDm$xJXsuZd5wnDAYkhajQR+MIlW6SsaYd9NFvXrDBGWYq8=','2024-10-28 15:58:43.163920',0,'victortestando@gmail.com','','','victortestando@gmail.com',0,1,'2024-10-28 15:58:41.389994'),(7,'pbkdf2_sha256$870000$NmEPRhnECkFio3GyNGCHh6$RCyPzLk25Z0h6mXRHQZ5i0x0hUMLeJTaqgabE2FO2w0=','2024-10-28 17:21:49.000000',0,'victro@gmail.com','','','victro@gmail.com',1,1,'2024-10-28 17:21:47.000000');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_groups` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `group_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_groups`
--

LOCK TABLES `auth_user_groups` WRITE;
/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
INSERT INTO `auth_user_groups` VALUES (1,1,1),(2,7,1);
/*!40000 ALTER TABLE `auth_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_admin_log` (
  `id` int NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext COLLATE utf8mb4_unicode_ci,
  `object_repr` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `action_flag` smallint unsigned NOT NULL,
  `change_message` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `content_type_id` int DEFAULT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `django_admin_log_chk_1` CHECK ((`action_flag` >= 0))
) ENGINE=InnoDB AUTO_INCREMENT=147 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2024-09-18 00:10:18.879892','1','Categoria object (1)',1,'[{\"added\": {}}]',7,1),(2,'2024-09-18 00:12:33.703238','1','Categoria object (1)',3,'',7,1),(3,'2024-09-18 00:12:42.951820','2','Categoria object (2)',1,'[{\"added\": {}}]',7,1),(4,'2024-09-18 00:34:01.669417','1','Tipo object (1)',1,'[{\"added\": {}}]',9,1),(5,'2024-09-18 00:42:44.704049','3','Acess├│rios',1,'[{\"added\": {}}]',7,1),(6,'2024-09-18 01:15:20.745867','1','Nome: teste / Categoria: Amigurumi / Tipo: Amigurumi / Pre├ºo: 20.00',1,'[{\"added\": {}}]',14,1),(7,'2024-10-07 23:32:16.115780','4','Moda',1,'[{\"added\": {}}]',7,1),(8,'2024-10-07 23:32:25.877725','5','Tapetes',1,'[{\"added\": {}}]',7,1),(9,'2024-10-07 23:33:05.387469','1','Nome: teste / Categoria: Amigurumi / Tipo: Amigurumi / Pre├ºo: 20.00',3,'',14,1),(10,'2024-10-07 23:44:01.992122','2','Bolsa',1,'[{\"added\": {}}]',9,1),(11,'2024-10-07 23:45:25.050411','2','Nome: Bolsa / Categoria: Acess├│rios / Tipo: Acess├│rios / Pre├ºo: 250.00',1,'[{\"added\": {}}]',14,1),(12,'2024-10-07 23:49:43.034991','2','Nome: Bolsa / Categoria: Acess├│rios / Tipo: Acess├│rios / Pre├ºo: 250.00',2,'[]',14,1),(13,'2024-10-07 23:50:29.022288','3','Nome: Dinossauro planta / Categoria: Amigurumi / Tipo: Amigurumi / Pre├ºo: 250.00',1,'[{\"added\": {}}]',14,1),(14,'2024-10-08 00:13:24.815595','2','Nome: Bolsa / Categoria: Acess├│rios / Tipo: Acess├│rios / Pre├ºo: 300.00',2,'[{\"changed\": {\"fields\": [\"Preco\"]}}]',14,1),(15,'2024-10-08 00:33:47.396584','3','Nome: Dinossauro planta / Categoria: Amigurumi / Tipo: Amigurumi / Pre├ºo: 250.00',2,'[]',14,1),(16,'2024-10-08 00:34:04.070307','2','Nome: Bolsa / Categoria: Acess├│rios / Tipo: Acess├│rios / Pre├ºo: 300.00',2,'[{\"changed\": {\"fields\": [\"Imagem\"]}}]',14,1),(17,'2024-10-08 00:34:18.592011','3','Nome: Dinossauro planta / Categoria: Amigurumi / Tipo: Amigurumi / Pre├ºo: 250.00',2,'[{\"changed\": {\"fields\": [\"Imagem\"]}}]',14,1),(18,'2024-10-08 01:22:18.329458','1','Amigurumi',1,'[{\"added\": {}}]',15,1),(19,'2024-10-08 01:22:42.361440','2','Acess├│rios',1,'[{\"added\": {}}]',15,1),(20,'2024-10-08 01:22:57.971610','3','Tapetes',1,'[{\"added\": {}}]',15,1),(21,'2024-10-08 01:23:09.208532','4','Moda',1,'[{\"added\": {}}]',15,1),(22,'2024-10-10 11:54:05.828542','4','Moda - Ativo: True',2,'[{\"changed\": {\"fields\": [\"Ativo\"]}}]',15,1),(23,'2024-10-10 11:54:14.746093','1','Amigurumi - Ativo: True',2,'[{\"changed\": {\"fields\": [\"Ativo\"]}}]',15,1),(24,'2024-10-10 12:16:42.151427','5','tapetes',2,'[{\"changed\": {\"fields\": [\"Nome\"]}}]',7,1),(25,'2024-10-10 12:16:47.783376','4','moda',2,'[{\"changed\": {\"fields\": [\"Nome\"]}}]',7,1),(26,'2024-10-10 12:16:57.887340','3','acessorios',2,'[{\"changed\": {\"fields\": [\"Nome\"]}}]',7,1),(27,'2024-10-10 12:17:03.734510','2','amigurumi',2,'[{\"changed\": {\"fields\": [\"Nome\"]}}]',7,1),(28,'2024-10-10 12:28:35.314554','2','bolsa',2,'[{\"changed\": {\"fields\": [\"Nome\"]}}]',9,1),(29,'2024-10-10 12:28:41.975614','1','amigurumi animado',2,'[{\"changed\": {\"fields\": [\"Nome\"]}}]',9,1),(30,'2024-10-12 16:13:39.807565','4','Nome: Bolsa',1,'[{\"added\": {}}]',8,1),(31,'2024-10-12 16:15:16.945669','4','Nome: Bolsa, Tamanho: M',2,'[{\"changed\": {\"fields\": [\"Tamanho\"]}}]',8,1),(32,'2024-10-12 16:16:20.350491','4','Nome: Bolsa, Tamanho: None',2,'[{\"changed\": {\"fields\": [\"Tamanho\"]}}]',8,1),(33,'2024-10-12 16:45:37.420964','3','Tapete',1,'[{\"added\": {}}]',9,1),(34,'2024-10-12 16:45:47.629884','3','Tapete',3,'',9,1),(35,'2024-10-12 16:45:54.695261','4','tapete',1,'[{\"added\": {}}]',9,1),(36,'2024-10-12 16:45:57.983402','4','Nome: Tapete / Categoria: tapetes / Tipo: tapete / Pre├ºo: 250.00',1,'[{\"added\": {}}]',14,1),(37,'2024-10-12 16:51:19.011994','5','xale',1,'[{\"added\": {}}]',9,1),(38,'2024-10-12 16:51:22.333887','5','Nome: Xale / Categoria: moda / Tipo: xale / Pre├ºo: 150.00',1,'[{\"added\": {}}]',14,1),(39,'2024-10-12 19:01:08.787600','1','Cliente object (1)',1,'[{\"added\": {}}]',10,1),(40,'2024-10-12 19:13:51.287860','1','ItensPedido object (1)',1,'[{\"added\": {}}]',13,1),(41,'2024-10-12 19:18:23.155559','1','ItensPedido object (1)',2,'[]',13,1),(42,'2024-10-13 01:10:13.696299','5','Nome: Dinossauro planta',1,'[{\"added\": {}}]',8,1),(43,'2024-10-13 01:10:37.102258','2','id_pedido: 2 / Produto: Nome: Dinossauro planta / Categoria: amigurumi / Tipo: amigurumi animado / Pre├ºo: 250.00',1,'[{\"added\": {}}]',13,1),(44,'2024-10-13 01:46:19.376499','4','Nome: Bolsa',2,'[{\"changed\": {\"fields\": [\"Quantidade\"]}}]',8,1),(45,'2024-10-13 01:46:35.344347','1','id_pedido: 1 / Produto: Nome: Bolsa / Categoria: acessorios / Tipo: bolsa / Pre├ºo: 300.00',2,'[{\"changed\": {\"fields\": [\"Quantidade\"]}}]',13,1),(46,'2024-10-13 19:18:32.405803','5','Nome: Dinossauro planta',2,'[{\"changed\": {\"fields\": [\"Quantidade\"]}}]',8,1),(47,'2024-10-13 20:55:27.268291','1','victor.simao90@gmail.com',2,'[]',10,1),(48,'2024-10-13 20:59:21.335421','2','teste@gmail.com',1,'[{\"added\": {}}]',10,1),(49,'2024-10-13 20:59:26.942368','2','teste@gmail.com',2,'[]',10,1),(50,'2024-10-13 21:01:39.696639','1','victor.simao90@gmail.com',2,'[{\"changed\": {\"fields\": [\"First name\", \"Last name\"]}}]',4,1),(51,'2024-10-13 21:02:42.384021','2','teste',1,'[{\"added\": {}}]',4,1),(52,'2024-10-13 21:02:46.079265','2','teste',2,'[]',4,1),(53,'2024-10-13 21:03:03.501503','2','teste',2,'[]',4,1),(54,'2024-10-13 21:03:09.838509','2','teste@gmail.com',2,'[{\"changed\": {\"fields\": [\"Usuario\"]}}]',10,1),(55,'2024-10-13 22:18:34.735437','2','teste@gmail.com',3,'',10,1),(56,'2024-10-13 22:18:52.290976','4','id_pedido: 4 / Produto: Nome: Bolsa / Categoria: acessorios / Tipo: bolsa / Pre├ºo: 300.00',2,'[{\"changed\": {\"fields\": [\"Quantidade\"]}}]',13,1),(57,'2024-10-13 22:52:52.250473','1','Endereco object (1)',1,'[{\"added\": {}}]',11,1),(58,'2024-10-13 22:55:22.210380','1','Rua: 1 / Numero: 100 / CEP: 1322222 / Cidade: Campinas / Estado: S├úo Paulo',2,'[{\"changed\": {\"fields\": [\"Cep\"]}}]',11,1),(59,'2024-10-13 23:05:56.005055','2','Cliente: victor.simao90@gmail.com / Rua: 2 / Numero: 99 / CEP: 13222222 / Cidade: Campinas / Estado: S├úo Paulo',1,'[{\"added\": {}}]',11,1),(60,'2024-10-15 01:06:41.086380','5','Tapetes',2,'[{\"changed\": {\"fields\": [\"Nome\", \"Slug\"]}}]',7,1),(61,'2024-10-15 01:06:49.122132','4','Moda',2,'[{\"changed\": {\"fields\": [\"Nome\", \"Slug\"]}}]',7,1),(62,'2024-10-15 01:07:01.660128','3','Acess├│rios',2,'[{\"changed\": {\"fields\": [\"Nome\", \"Slug\"]}}]',7,1),(63,'2024-10-15 01:07:15.005035','2','Amigurumi',2,'[{\"changed\": {\"fields\": [\"Nome\", \"Slug\"]}}]',7,1),(64,'2024-10-15 01:07:34.469867','5','Xale',2,'[{\"changed\": {\"fields\": [\"Nome\", \"Slug\"]}}]',9,1),(65,'2024-10-15 01:07:46.059178','4','Tapete',2,'[{\"changed\": {\"fields\": [\"Nome\", \"Slug\"]}}]',9,1),(66,'2024-10-15 01:07:54.531898','2','Bolsa',2,'[{\"changed\": {\"fields\": [\"Nome\", \"Slug\"]}}]',9,1),(67,'2024-10-15 01:08:09.820607','1','Amigurumi Animado',2,'[{\"changed\": {\"fields\": [\"Nome\", \"Slug\"]}}]',9,1),(68,'2024-10-15 01:20:01.085882','5','Tapetes',2,'[]',7,1),(69,'2024-10-15 01:20:02.837536','4','Moda',2,'[]',7,1),(70,'2024-10-15 01:20:04.788576','3','Acess├│rios',2,'[]',7,1),(71,'2024-10-15 01:20:06.508626','2','Amigurumi',2,'[]',7,1),(72,'2024-10-15 01:20:10.951205','5','Xale',2,'[]',9,1),(73,'2024-10-15 01:20:13.148850','4','Tapete',2,'[]',9,1),(74,'2024-10-15 01:20:15.051838','2','Bolsa',2,'[]',9,1),(75,'2024-10-15 01:20:16.805290','1','Amigurumi Animado',2,'[]',9,1),(76,'2024-10-15 01:22:36.933975','1','Amigurumi Animado',2,'[{\"changed\": {\"fields\": [\"Slug\"]}}]',9,1),(77,'2024-10-15 01:36:07.634295','1','Amigurumi Animado',2,'[{\"changed\": {\"fields\": [\"Slug\"]}}]',9,1),(78,'2024-10-15 01:36:51.640704','1','Amigurumi Animado',2,'[{\"changed\": {\"fields\": [\"Slug\"]}}]',9,1),(79,'2024-10-15 01:37:46.065403','1','Amigurumi Animado',2,'[{\"changed\": {\"fields\": [\"Slug\"]}}]',9,1),(80,'2024-10-17 01:23:25.626182','3','Nome: Dinossauro planta / Categoria: Amigurumi / Tipo: Amigurumi Animado / Pre├ºo: 350.00',2,'[{\"changed\": {\"fields\": [\"Preco\"]}}]',14,1),(81,'2024-10-18 00:52:06.448438','6','Nome: Bruxo estudante / Categoria: Amigurumi / Tipo: Amigurumi Animado / Pre├ºo: 400.00',1,'[{\"added\": {}}]',14,1),(82,'2024-10-18 00:55:22.501123','6','Nome: Bruxo estudante',1,'[{\"added\": {}}]',8,1),(83,'2024-10-22 02:00:03.113781','7','None',1,'[{\"added\": {}}]',10,1),(84,'2024-10-22 02:00:19.112954','7','None',2,'[{\"changed\": {\"fields\": [\"Nome\"]}}]',10,1),(85,'2024-10-22 02:00:33.441803','7','None',3,'',10,1),(86,'2024-10-22 02:00:38.905887','4','None',3,'',10,1),(87,'2024-10-22 02:00:43.626916','3','None',3,'',10,1),(88,'2024-10-22 02:01:07.065114','4','teste.2@gmail.com',3,'',4,1),(89,'2024-10-23 01:18:41.223684','1','Cliente: victor.simao90@gmail.com / id_pedido: 1 / Finalizado False',2,'[{\"changed\": {\"fields\": [\"Codigo transacao\", \"Endereco\", \"Data finalizacao\"]}}]',12,1),(90,'2024-10-23 01:19:11.908587','4','Cliente: teste.1@gmail.com / id_pedido: 4 / Finalizado False',2,'[{\"changed\": {\"fields\": [\"Codigo transacao\", \"Endereco\", \"Data finalizacao\"]}}]',12,1),(91,'2024-10-23 01:19:26.923888','4','Cliente: teste.1@gmail.com / id_pedido: 4 / Finalizado True',2,'[{\"changed\": {\"fields\": [\"Finalizado\"]}}]',12,1),(92,'2024-10-23 01:19:34.348509','1','Cliente: victor.simao90@gmail.com / id_pedido: 1 / Finalizado True',2,'[{\"changed\": {\"fields\": [\"Finalizado\"]}}]',12,1),(93,'2024-10-28 15:24:06.097617','7','Cliente: None / id_pedido: 7 / Finalizado False',3,'',12,1),(94,'2024-10-28 21:07:51.030764','14','Id pedido: 6 / Produto: Bruxo estudante',3,'',13,1),(95,'2024-10-28 21:08:02.214762','15','Id pedido: 6 / Produto: Bolsa',3,'',13,1),(96,'2024-10-28 21:08:15.412800','6','Cliente: victor.simao90@gmail.com / id_pedido: 6 / Finalizado False',3,'',12,1),(97,'2024-10-31 01:11:36.807812','1','equipe',1,'[{\"added\": {}}]',3,1),(98,'2024-10-31 01:11:56.726382','1','victor.simao90@gmail.com',2,'[{\"changed\": {\"fields\": [\"Groups\"]}}]',4,1),(99,'2024-10-31 01:26:39.257956','7','victro@gmail.com',2,'[{\"changed\": {\"fields\": [\"Staff status\", \"Groups\"]}}]',4,1),(100,'2024-11-02 18:32:56.321174','5','None - Ativo: False',1,'[{\"added\": {}}]',15,1),(101,'2024-11-02 18:33:28.353873','5','None - Ativo: True',2,'[{\"changed\": {\"fields\": [\"Ativo\"]}}]',15,1),(102,'2024-11-02 18:33:55.465614','1','Amigurumi - Ativo: False',2,'[{\"changed\": {\"fields\": [\"Ativo\"]}}]',15,1),(103,'2024-11-02 18:34:56.635074','1','Amigurumi - Ativo: True',2,'[{\"changed\": {\"fields\": [\"Ativo\"]}}]',15,1),(104,'2024-11-02 18:39:05.380121','5','None - Ativo: True',3,'',15,1),(105,'2024-11-02 18:39:21.579700','6','None - Ativo: True',1,'[{\"added\": {}}]',15,1),(106,'2024-11-02 18:41:01.810959','7','None - Ativo: True',1,'[{\"added\": {}}]',15,1),(107,'2024-11-02 18:42:57.019714','7','None - Ativo: True',3,'',15,1),(108,'2024-11-02 18:42:57.019714','6','None - Ativo: True',3,'',15,1),(109,'2024-11-02 18:47:22.897236','8','None - Ativo: True',1,'[{\"added\": {}}]',15,1),(110,'2024-11-02 18:48:22.028822','8','None - Ativo: True',2,'[{\"changed\": {\"fields\": [\"Imagem\"]}}]',15,1),(111,'2024-11-02 18:50:28.327408','8','None - Ativo: True',2,'[{\"changed\": {\"fields\": [\"Imagem\"]}}]',15,1),(112,'2024-11-02 18:53:00.690573','8','None - Ativo: True',2,'[{\"changed\": {\"fields\": [\"Imagem\"]}}]',15,1),(113,'2024-11-02 18:54:14.409573','8','None - Ativo: True',3,'',15,1),(114,'2024-11-02 18:54:25.631707','1','Amigurumi - Ativo: True',2,'[{\"changed\": {\"fields\": [\"Imagem\"]}}]',15,1),(115,'2024-11-02 18:56:01.618195','2','Acess├│rios - Ativo: True',2,'[{\"changed\": {\"fields\": [\"Imagem\"]}}]',15,1),(116,'2024-11-02 18:57:05.335167','3','Tapetes - Ativo: True',2,'[{\"changed\": {\"fields\": [\"Imagem\"]}}]',15,1),(117,'2024-11-02 18:58:11.861468','4','Moda - Ativo: True',2,'[{\"changed\": {\"fields\": [\"Imagem\"]}}]',15,1),(118,'2024-11-02 19:00:24.229281','2','Moda - Ativo: True',2,'[{\"changed\": {\"fields\": [\"Link destino\"]}}]',15,1),(119,'2024-11-02 19:00:37.739415','2','Acess├│rios - Ativo: True',2,'[{\"changed\": {\"fields\": [\"Link destino\"]}}]',15,1),(120,'2024-11-02 19:00:53.305126','3','Moda - Ativo: True',2,'[{\"changed\": {\"fields\": [\"Imagem\", \"Link destino\"]}}]',15,1),(121,'2024-11-02 19:01:05.173943','4','Tapetes - Ativo: True',2,'[{\"changed\": {\"fields\": [\"Imagem\", \"Link destino\"]}}]',15,1),(122,'2024-11-02 19:05:20.778058','1','Amigurumi - Ativo: True',2,'[{\"changed\": {\"fields\": [\"Imagem\"]}}]',15,1),(123,'2024-11-02 19:05:41.319378','2','Acess├│rios - Ativo: True',2,'[{\"changed\": {\"fields\": [\"Imagem\"]}}]',15,1),(124,'2024-11-02 19:05:49.105337','3','Moda - Ativo: True',2,'[{\"changed\": {\"fields\": [\"Imagem\"]}}]',15,1),(125,'2024-11-02 19:05:56.437513','4','Tapetes - Ativo: True',2,'[{\"changed\": {\"fields\": [\"Imagem\"]}}]',15,1),(126,'2024-11-02 19:09:49.315427','9','Loja - Ativo: True',1,'[{\"added\": {}}]',15,1),(127,'2024-11-02 19:12:19.102177','9','Amigurumi, Tapetes - Ativo: True',2,'[{\"changed\": {\"fields\": [\"Link destino\"]}}]',15,1),(128,'2024-11-02 19:12:52.504126','9','Amigurumi;Tapetes - Ativo: True',2,'[{\"changed\": {\"fields\": [\"Link destino\"]}}]',15,1),(129,'2024-11-02 19:21:32.262566','9','Amigurumi; Tapetes - Ativo: True',2,'[{\"changed\": {\"fields\": [\"Link destino\"]}}]',15,1),(130,'2024-11-02 23:35:10.880259','9','Amigurumi - Ativo: True',2,'[{\"changed\": {\"fields\": [\"Link destino\"]}}]',15,1),(131,'2024-11-02 23:36:30.481388','2','Acessorios - Ativo: True',2,'[{\"changed\": {\"fields\": [\"Link destino\"]}}]',15,1),(132,'2024-11-02 23:37:10.693933','2','Acessorio - Ativo: True',2,'[{\"changed\": {\"fields\": [\"Link destino\"]}}]',15,1),(133,'2024-11-02 23:37:28.196540','2','Acess├│rios - Ativo: True',2,'[{\"changed\": {\"fields\": [\"Link destino\"]}}]',15,1),(134,'2024-11-03 19:05:56.395661','9','/loja/ - Ativo: True',2,'[{\"changed\": {\"fields\": [\"Link destino\"]}}]',15,1),(135,'2024-11-03 19:06:29.526396','9','None - Ativo: True',2,'[{\"changed\": {\"fields\": [\"Link destino\"]}}]',15,1),(136,'2024-11-03 19:07:02.045946','9','/loja - Ativo: True',2,'[{\"changed\": {\"fields\": [\"Link destino\"]}}]',15,1),(137,'2024-11-03 19:08:29.327242','9','None - Ativo: True',2,'[{\"changed\": {\"fields\": [\"Link destino\"]}}]',15,1),(138,'2024-11-03 19:22:12.785900','9','None - Ativo: True',3,'',15,1),(139,'2024-11-04 00:39:33.928781','1','Amigurumi - Ativo: True',2,'[{\"changed\": {\"fields\": [\"Imagem\"]}}]',15,1),(140,'2024-11-04 00:45:27.601004','1','Amigurumi - Ativo: True',2,'[{\"changed\": {\"fields\": [\"Imagem\"]}}]',15,1),(141,'2024-11-04 00:47:12.927823','1','Amigurumi - Ativo: True',2,'[{\"changed\": {\"fields\": [\"Imagem\"]}}]',15,1),(142,'2024-11-04 00:50:30.338985','1','Amigurumi - Ativo: True',2,'[{\"changed\": {\"fields\": [\"Imagem\"]}}]',15,1),(143,'2024-11-04 00:53:05.302417','1','Amigurumi - Ativo: True',2,'[{\"changed\": {\"fields\": [\"Imagem\"]}}]',15,1),(144,'2024-11-04 00:56:27.941780','3','Moda - Ativo: True',2,'[{\"changed\": {\"fields\": [\"Imagem\"]}}]',15,1),(145,'2024-11-04 00:59:49.880263','2','Acess├│rios - Ativo: True',2,'[{\"changed\": {\"fields\": [\"Imagem\"]}}]',15,1),(146,'2024-11-04 01:01:13.006942','4','Tapetes - Ativo: True',2,'[{\"changed\": {\"fields\": [\"Imagem\"]}}]',15,1);
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_content_type` (
  `id` int NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(4,'auth','user'),(5,'contenttypes','contenttype'),(15,'loja','banner'),(7,'loja','categoria'),(10,'loja','cliente'),(11,'loja','endereco'),(8,'loja','itemestoque'),(13,'loja','itenspedido'),(16,'loja','pagamento'),(12,'loja','pedido'),(14,'loja','produto'),(9,'loja','tipo'),(6,'sessions','session');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_migrations` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `app` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2024-09-10 21:17:06.409079'),(2,'auth','0001_initial','2024-09-10 21:17:07.611428'),(3,'admin','0001_initial','2024-09-10 21:17:07.819424'),(4,'admin','0002_logentry_remove_auto_add','2024-09-10 21:17:07.836201'),(5,'admin','0003_logentry_add_action_flag_choices','2024-09-10 21:17:07.873608'),(6,'contenttypes','0002_remove_content_type_name','2024-09-10 21:17:07.986214'),(7,'auth','0002_alter_permission_name_max_length','2024-09-10 21:17:08.080821'),(8,'auth','0003_alter_user_email_max_length','2024-09-10 21:17:08.110391'),(9,'auth','0004_alter_user_username_opts','2024-09-10 21:17:08.120412'),(10,'auth','0005_alter_user_last_login_null','2024-09-10 21:17:08.205663'),(11,'auth','0006_require_contenttypes_0002','2024-09-10 21:17:08.209660'),(12,'auth','0007_alter_validators_add_error_messages','2024-09-10 21:17:08.218654'),(13,'auth','0008_alter_user_username_max_length','2024-09-10 21:17:08.309831'),(14,'auth','0009_alter_user_last_name_max_length','2024-09-10 21:17:08.400545'),(15,'auth','0010_alter_group_name_max_length','2024-09-10 21:17:08.428553'),(16,'auth','0011_update_proxy_permissions','2024-09-10 21:17:08.437749'),(17,'auth','0012_alter_user_first_name_max_length','2024-09-10 21:17:08.529870'),(18,'loja','0001_initial','2024-09-10 21:17:09.483169'),(19,'sessions','0001_initial','2024-09-10 21:17:09.533440'),(20,'loja','0002_alter_produto_imagem','2024-09-18 00:49:04.546273'),(21,'loja','0003_banner','2024-10-08 01:06:48.846935'),(22,'loja','0004_categoria_slug_tipo_slug','2024-10-15 01:04:34.500858'),(23,'loja','0005_remove_itemestoque_cor_remove_itemestoque_tamanho','2024-10-18 00:30:40.601238'),(24,'loja','0006_pagamento','2024-10-30 00:29:53.064287');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `session_data` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('1hdnysnenrcmnnjoqmro1hemsflsdf9w','.eJxVjMsOwiAQRf-FtSFloDxcuvcbmpkBpGogKe3K-O_apAvd3nPOfYkJt7VMW0_LNEdxFkqcfjdCfqS6g3jHemuSW12XmeSuyIN2eW0xPS-H-3dQsJdvDRBUiMbZxJaRDXlCrfKgB0c5O8sjuKzJR_CkAYzxIQwKkFmPWUUl3h_fIDeZ:1t7kZk:K0wbR_C0YIqjNjlmLyCvPvQGt2l7bzs1m6sV6gcM7B4','2024-11-18 00:04:08.481335'),('1m8knf798akov15vr4waez5x3on26kmv','.eJxVjEEOwiAQRe_C2hCHdqC4dN8zNMMwStVAUtqV8e7SpAvd_vfef6uJtjVNW5VlmqO6KFCn3y0QPyXvID4o34vmktdlDnpX9EGrHkuU1_Vw_w4S1dRqZnAszke0A6E7g-0ZIKA13nAjEvDW9dbjACLAHQbjiMV46wWaoj5f3Ow3sQ:1t5QDT:c0E8KrjaTvHxgaARO3XHHbsfQaNDuZyBuNoB9Jb55eI','2024-11-11 13:55:31.963570'),('5thuxs5eaygjptbinf394n19b1055lr1','.eJxVjEEOwiAQRe_C2hCHdqC4dN8zNMMwStVAUtqV8e7SpAvd_vfef6uJtjVNW5VlmqO6KFCn3y0QPyXvID4o34vmktdlDnpX9EGrHkuU1_Vw_w4S1dRqZnAszke0A6E7g-0ZIKA13nAjEvDW9dbjACLAHQbjiMV46wWaoj5f3Ow3sQ:1t5x0J:RYuOzoPOJwx8T2eFyyD79EgSTdSbiG4fN3CMf_BF2xQ','2024-11-13 00:56:07.983254'),('82t4d76rl7teh75hsowzp0tdnf2f9soc','.eJxVjEEOwiAQRe_C2hCHdqC4dN8zNMMwStVAUtqV8e7SpAvd_vfef6uJtjVNW5VlmqO6KFCn3y0QPyXvID4o34vmktdlDnpX9EGrHkuU1_Vw_w4S1dRqZnAszke0A6E7g-0ZIKA13nAjEvDW9dbjACLAHQbjiMV46wWaoj5f3Ow3sQ:1t34D9:8vtjsuxWlLU6UCTQXU1yPDRHZ_lkalJGQR_b44GmGEQ','2024-11-05 02:01:27.339054'),('b9w17r1bzp34c1g8phdmtoeg0kf0yl8n','.eJxVjEEOwiAQRe_C2hCHdqC4dN8zNMMwStVAUtqV8e7SpAvd_vfef6uJtjVNW5VlmqO6KFCn3y0QPyXvID4o34vmktdlDnpX9EGrHkuU1_Vw_w4S1dRqZnAszke0A6E7g-0ZIKA13nAjEvDW9dbjACLAHQbjiMV46wWaoj5f3Ow3sQ:1t5Tlr:hNWwMyAHe5nn-InjxbrTC_BOP6pYkSM3KZMtX6eI2iM','2024-11-11 17:43:15.552230'),('d1b7pbv0u0opcpzdbh5sax6qrwuwzd07','e30:1t2rvp:MexCdItKdnG_aHpLC1HGNWYCR6GsqpAtDF8f_G_lCkA','2024-11-04 12:54:45.779644'),('n2fzc2exxjtlxcto4zu9krivfo79sp8i','.eJxVjEEOwiAQRe_C2hCHdqC4dN8zNMMwStVAUtqV8e7SpAvd_vfef6uJtjVNW5VlmqO6KFCn3y0QPyXvID4o34vmktdlDnpX9EGrHkuU1_Vw_w4S1dRqZnAszke0A6E7g-0ZIKA13nAjEvDW9dbjACLAHQbjiMV46wWaoj5f3Ow3sQ:1sqi1F:ExBVIDoZAEXdwEv19rToE5SeuX9A_OLIRDma4xyfQtw','2024-10-01 23:54:05.452673'),('ndo3a7uhg0flth1i6mkcsih6h6c16cif','.eJxVjMsOwiAQRf-FtSFloDxcuvcbmpkBpGogKe3K-O_apAvd3nPOfYkJt7VMW0_LNEdxFkqcfjdCfqS6g3jHemuSW12XmeSuyIN2eW0xPS-H-3dQsJdvDRBUiMbZxJaRDXlCrfKgB0c5O8sjuKzJR_CkAYzxIQwKkFmPWUUl3h_fIDeZ:1t6J7r:vNOQ08O1ATj1jt4_J6eGgqiYv35OcauhxJoDTye3dvU','2024-11-14 00:33:23.502537'),('on332lzzjgb803gawpfiqt5wdc2kvfk8','.eJxVjEEOwiAQRe_C2hCHdqC4dN8zNMMwStVAUtqV8e7SpAvd_vfef6uJtjVNW5VlmqO6KFCn3y0QPyXvID4o34vmktdlDnpX9EGrHkuU1_Vw_w4S1dRqZnAszke0A6E7g-0ZIKA13nAjEvDW9dbjACLAHQbjiMV46wWaoj5f3Ow3sQ:1t5TSe:jAZE4IxffCKR8-7qiObDT551mtWB2AzOA8J93MCqRRo','2024-11-11 17:23:24.802164'),('qb0tbqtezelcd0ks1gdhmco0ckanxftc','.eJxVjMsOwiAQRf-FtSFloDxcuvcbmpkBpGogKe3K-O_apAvd3nPOfYkJt7VMW0_LNEdxFkqcfjdCfqS6g3jHemuSW12XmeSuyIN2eW0xPS-H-3dQsJdvDRBUiMbZxJaRDXlCrfKgB0c5O8sjuKzJR_CkAYzxIQwKkFmPWUUl3h_fIDeZ:1t6UKj:iqvdLQZPlH_hDk8R61ZAmzRi4hlJM_l90ZIYmv89iJ8','2024-11-14 12:31:25.663467'),('rmwm6cquldd9ca1b5r5gm1ay4mkrnv79','.eJxVjEEOwiAQRe_C2hCHdqC4dN8zNMMwStVAUtqV8e7SpAvd_vfef6uJtjVNW5VlmqO6KFCn3y0QPyXvID4o34vmktdlDnpX9EGrHkuU1_Vw_w4S1dRqZnAszke0A6E7g-0ZIKA13nAjEvDW9dbjACLAHQbjiMV46wWaoj5f3Ow3sQ:1t5WRQ:h7P7hQlMxh9gnLO_5Ccp-G0Up2yESZk5lF1fuKGVIY8','2024-11-11 20:34:20.085574'),('yvwrj4vf3ol6plobaqx4fn19pacyjtc1','.eJxVjEEOwiAQRe_C2hCHdqC4dN8zNMMwStVAUtqV8e7SpAvd_vfef6uJtjVNW5VlmqO6KFCn3y0QPyXvID4o34vmktdlDnpX9EGrHkuU1_Vw_w4S1dRqZnAszke0A6E7g-0ZIKA13nAjEvDW9dbjACLAHQbjiMV46wWaoj5f3Ow3sQ:1t0W15:GXOxocoUHXFxSHMI3dvy88q-ZpuopcyuYlyN1vKXiz0','2024-10-29 01:06:27.006378'),('zi0qfi1i2tbg3t5u1qv19t10xet25ep6','.eJxVjMsOwiAQRf-FtSFloDxcuvcbmpkBpGogKe3K-O_apAvd3nPOfYkJt7VMW0_LNEdxFkqcfjdCfqS6g3jHemuSW12XmeSuyIN2eW0xPS-H-3dQsJdvDRBUiMbZxJaRDXlCrfKgB0c5O8sjuKzJR_CkAYzxIQwKkFmPWUUl3h_fIDeZ:1t6Jb2:JjpVrATgnEqQoVDaCa8fN7tliBFdVSNIxygEnjBtbpg','2024-11-14 01:03:32.024681');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `loja_banner`
--

DROP TABLE IF EXISTS `loja_banner`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `loja_banner` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `imagem` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link_destino` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ativo` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `loja_banner`
--

LOCK TABLES `loja_banner` WRITE;
/*!40000 ALTER TABLE `loja_banner` DISABLE KEYS */;
INSERT INTO `loja_banner` VALUES (1,'image_28.png','Amigurumi',1),(2,'image_30.png','Acess├│rios',1),(3,'image_29.png','Moda',1),(4,'image_31.png','Tapetes',1);
/*!40000 ALTER TABLE `loja_banner` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `loja_categoria`
--

DROP TABLE IF EXISTS `loja_categoria`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `loja_categoria` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `nome` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `loja_categoria`
--

LOCK TABLES `loja_categoria` WRITE;
/*!40000 ALTER TABLE `loja_categoria` DISABLE KEYS */;
INSERT INTO `loja_categoria` VALUES (2,'Amigurumi','amigurumi'),(3,'Acess├│rios','acessorios'),(4,'Moda','moda'),(5,'Tapetes','tapetes');
/*!40000 ALTER TABLE `loja_categoria` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `loja_cliente`
--

DROP TABLE IF EXISTS `loja_cliente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `loja_cliente` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `nome` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `telefone` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id_sessao` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `usuario_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `usuario_id` (`usuario_id`),
  CONSTRAINT `loja_cliente_usuario_id_1d98c331_fk_auth_user_id` FOREIGN KEY (`usuario_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `loja_cliente`
--

LOCK TABLES `loja_cliente` WRITE;
/*!40000 ALTER TABLE `loja_cliente` DISABLE KEYS */;
INSERT INTO `loja_cliente` VALUES (1,'Victor Sim├úo','victor.simao90@gmail.com','19981922378',NULL,1),(5,NULL,'teste.1@gmail.com',NULL,NULL,3),(6,NULL,'teste.3@gmail.com',NULL,'d5e96b09-37eb-4731-a1d3-554b208a5807',5),(8,NULL,'victro@gmail.com',NULL,'8400ba46-3a8b-4f86-9802-426f6bd23870',7);
/*!40000 ALTER TABLE `loja_cliente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `loja_endereco`
--

DROP TABLE IF EXISTS `loja_endereco`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `loja_endereco` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `rua` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `numero` int NOT NULL,
  `complemento` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cep` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cidade` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `estado` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cliente_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `loja_endereco_cliente_id_fb12a93d_fk_loja_cliente_id` (`cliente_id`),
  CONSTRAINT `loja_endereco_cliente_id_fb12a93d_fk_loja_cliente_id` FOREIGN KEY (`cliente_id`) REFERENCES `loja_cliente` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `loja_endereco`
--

LOCK TABLES `loja_endereco` WRITE;
/*!40000 ALTER TABLE `loja_endereco` DISABLE KEYS */;
INSERT INTO `loja_endereco` VALUES (1,'1',100,NULL,'1322222','Campinas','S├úo Paulo',1),(2,'2',99,NULL,'13222222','Campinas','S├úo Paulo',1),(3,'3',101,'','1322222','Campinas','S├úo Paulo',1),(4,'1',6,'','134561','campinas','sp',NULL),(5,'das flores',23,'','132222','Campinas','S├úo Paulo',8);
/*!40000 ALTER TABLE `loja_endereco` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `loja_itemestoque`
--

DROP TABLE IF EXISTS `loja_itemestoque`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `loja_itemestoque` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `quantidade` int NOT NULL,
  `produto_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `loja_itemestoque_produto_id_5c341e60_fk_loja_produto_id` (`produto_id`),
  CONSTRAINT `loja_itemestoque_produto_id_5c341e60_fk_loja_produto_id` FOREIGN KEY (`produto_id`) REFERENCES `loja_produto` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `loja_itemestoque`
--

LOCK TABLES `loja_itemestoque` WRITE;
/*!40000 ALTER TABLE `loja_itemestoque` DISABLE KEYS */;
INSERT INTO `loja_itemestoque` VALUES (4,2,2),(5,2,3),(6,1,6);
/*!40000 ALTER TABLE `loja_itemestoque` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `loja_itenspedido`
--

DROP TABLE IF EXISTS `loja_itenspedido`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `loja_itenspedido` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `quantidade` int NOT NULL,
  `item_estoque_id` bigint DEFAULT NULL,
  `pedido_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `loja_itenspedido_item_estoque_id_38deccbe_fk_loja_itemestoque_id` (`item_estoque_id`),
  KEY `loja_itenspedido_pedido_id_5a3a3733_fk_loja_pedido_id` (`pedido_id`),
  CONSTRAINT `loja_itenspedido_item_estoque_id_38deccbe_fk_loja_itemestoque_id` FOREIGN KEY (`item_estoque_id`) REFERENCES `loja_itemestoque` (`id`),
  CONSTRAINT `loja_itenspedido_pedido_id_5a3a3733_fk_loja_pedido_id` FOREIGN KEY (`pedido_id`) REFERENCES `loja_pedido` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `loja_itenspedido`
--

LOCK TABLES `loja_itenspedido` WRITE;
/*!40000 ALTER TABLE `loja_itenspedido` DISABLE KEYS */;
INSERT INTO `loja_itenspedido` VALUES (7,2,4,2),(8,1,4,3),(9,2,5,3),(11,2,5,1),(13,1,5,5),(18,1,4,9),(19,1,5,9),(20,1,6,10),(21,1,5,8);
/*!40000 ALTER TABLE `loja_itenspedido` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `loja_pagamento`
--

DROP TABLE IF EXISTS `loja_pagamento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `loja_pagamento` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `id_pagamento` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL,
  `aprovado` tinyint(1) NOT NULL,
  `pedido_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `loja_pagamento_pedido_id_d95fd978_fk_loja_pedido_id` (`pedido_id`),
  CONSTRAINT `loja_pagamento_pedido_id_d95fd978_fk_loja_pedido_id` FOREIGN KEY (`pedido_id`) REFERENCES `loja_pedido` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `loja_pagamento`
--

LOCK TABLES `loja_pagamento` WRITE;
/*!40000 ALTER TABLE `loja_pagamento` DISABLE KEYS */;
INSERT INTO `loja_pagamento` VALUES (1,'2064784916-6a02a6cc-c028-4b6c-81f3-0851c73ac490',0,9),(2,'2064784916-81ecf7fa-fcfe-48a6-adff-0d3757410576',0,9),(3,'2064784916-092327b9-b295-45b8-a00d-d8ee62ca17b6',0,9),(4,'2064784916-1a4a3208-a13c-42db-ba2a-db095b971b43',0,9),(5,'2064784916-146bbf5f-f31c-4a31-8f5f-4a5a80f9a363',1,9);
/*!40000 ALTER TABLE `loja_pagamento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `loja_pedido`
--

DROP TABLE IF EXISTS `loja_pedido`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `loja_pedido` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `finalizado` tinyint(1) NOT NULL,
  `codigo_transacao` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `data_finalizacao` datetime(6) DEFAULT NULL,
  `cliente_id` bigint DEFAULT NULL,
  `endereco_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `loja_pedido_cliente_id_639c897d_fk_loja_cliente_id` (`cliente_id`),
  KEY `loja_pedido_endereco_id_09db3b71_fk_loja_endereco_id` (`endereco_id`),
  CONSTRAINT `loja_pedido_cliente_id_639c897d_fk_loja_cliente_id` FOREIGN KEY (`cliente_id`) REFERENCES `loja_cliente` (`id`),
  CONSTRAINT `loja_pedido_endereco_id_09db3b71_fk_loja_endereco_id` FOREIGN KEY (`endereco_id`) REFERENCES `loja_endereco` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `loja_pedido`
--

LOCK TABLES `loja_pedido` WRITE;
/*!40000 ALTER TABLE `loja_pedido` DISABLE KEYS */;
INSERT INTO `loja_pedido` VALUES (1,1,'aaabbbcccddd','2024-10-23 01:18:36.000000',1,1),(2,0,NULL,NULL,NULL,NULL),(3,0,NULL,NULL,NULL,NULL),(4,1,'abacbcdbd','2024-10-23 01:19:09.000000',5,2),(5,0,'5-1729823721.259677',NULL,6,NULL),(8,0,'8-1730251808.739202',NULL,8,NULL),(9,1,'9-1730334815.053579','2024-10-31 00:34:53.561824',1,1),(10,0,NULL,NULL,1,NULL);
/*!40000 ALTER TABLE `loja_pedido` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `loja_produto`
--

DROP TABLE IF EXISTS `loja_produto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `loja_produto` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `imagem` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nome` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `preco` decimal(10,2) NOT NULL,
  `ativo` tinyint(1) NOT NULL,
  `categoria_id` bigint DEFAULT NULL,
  `tipo_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `loja_produto_categoria_id_8dd6019e_fk_loja_categoria_id` (`categoria_id`),
  KEY `loja_produto_tipo_id_5a7b97b0_fk_loja_tipo_id` (`tipo_id`),
  CONSTRAINT `loja_produto_categoria_id_8dd6019e_fk_loja_categoria_id` FOREIGN KEY (`categoria_id`) REFERENCES `loja_categoria` (`id`),
  CONSTRAINT `loja_produto_tipo_id_5a7b97b0_fk_loja_tipo_id` FOREIGN KEY (`tipo_id`) REFERENCES `loja_tipo` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `loja_produto`
--

LOCK TABLES `loja_produto` WRITE;
/*!40000 ALTER TABLE `loja_produto` DISABLE KEYS */;
INSERT INTO `loja_produto` VALUES (2,'image_16.png','Bolsa',300.00,1,3,2),(3,'image_14.png','Dinossauro planta',350.00,1,2,1),(4,'image_15.png','Tapete',250.00,1,5,4),(5,'image_17.png','Xale',150.00,1,4,5),(6,'image_bruxo.png','Bruxo estudante',400.00,1,2,1);
/*!40000 ALTER TABLE `loja_produto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `loja_tipo`
--

DROP TABLE IF EXISTS `loja_tipo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `loja_tipo` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `nome` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `loja_tipo`
--

LOCK TABLES `loja_tipo` WRITE;
/*!40000 ALTER TABLE `loja_tipo` DISABLE KEYS */;
INSERT INTO `loja_tipo` VALUES (1,'Amigurumi Animado','amigurumi+animado'),(2,'Bolsa','bolsa'),(4,'Tapete','tapete'),(5,'Xale','xale');
/*!40000 ALTER TABLE `loja_tipo` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-11-04 23:08:37
