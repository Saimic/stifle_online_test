-- MySQL dump 10.13  Distrib 8.0.26, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: stifle
-- ------------------------------------------------------
-- Server version	8.0.26

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
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',2,'add_permission'),(6,'Can change permission',2,'change_permission'),(7,'Can delete permission',2,'delete_permission'),(8,'Can view permission',2,'view_permission'),(9,'Can add group',3,'add_group'),(10,'Can change group',3,'change_group'),(11,'Can delete group',3,'delete_group'),(12,'Can view group',3,'view_group'),(13,'Can add user',4,'add_user'),(14,'Can change user',4,'change_user'),(15,'Can delete user',4,'delete_user'),(16,'Can view user',4,'view_user'),(17,'Can add content type',5,'add_contenttype'),(18,'Can change content type',5,'change_contenttype'),(19,'Can delete content type',5,'delete_contenttype'),(20,'Can view content type',5,'view_contenttype'),(21,'Can add session',6,'add_session'),(22,'Can change session',6,'change_session'),(23,'Can delete session',6,'delete_session'),(24,'Can view session',6,'view_session'),(25,'Can add beneficial',7,'add_beneficial'),(26,'Can change beneficial',7,'change_beneficial'),(27,'Can delete beneficial',7,'delete_beneficial'),(28,'Can view beneficial',7,'view_beneficial'),(29,'Can add individual',8,'add_individual'),(30,'Can change individual',8,'change_individual'),(31,'Can delete individual',8,'delete_individual'),(32,'Can view individual',8,'view_individual'),(33,'Can add organization',9,'add_organization'),(34,'Can change organization',9,'change_organization'),(35,'Can delete organization',9,'delete_organization'),(36,'Can view organization',9,'view_organization'),(37,'Can add pep',10,'add_pep'),(38,'Can change pep',10,'change_pep'),(39,'Can delete pep',10,'delete_pep'),(40,'Can view pep',10,'view_pep'),(41,'Can add customer type',11,'add_customertype'),(42,'Can change customer type',11,'change_customertype'),(43,'Can delete customer type',11,'delete_customertype'),(44,'Can view customer type',11,'view_customertype'),(45,'Can add delivery channel',12,'add_deliverychannel'),(46,'Can change delivery channel',12,'change_deliverychannel'),(47,'Can delete delivery channel',12,'delete_deliverychannel'),(48,'Can view delivery channel',12,'view_deliverychannel'),(49,'Can add geographic location',13,'add_geographiclocation'),(50,'Can change geographic location',13,'change_geographiclocation'),(51,'Can delete geographic location',13,'delete_geographiclocation'),(52,'Can view geographic location',13,'view_geographiclocation'),(53,'Can add product type',14,'add_producttype'),(54,'Can change product type',14,'change_producttype'),(55,'Can delete product type',14,'delete_producttype'),(56,'Can view product type',14,'view_producttype');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `auth_user_groups`
--

LOCK TABLES `auth_user_groups` WRITE;
/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `country_nationality`
--

LOCK TABLES `country_nationality` WRITE;
/*!40000 ALTER TABLE `country_nationality` DISABLE KEYS */;
/*!40000 ALTER TABLE `country_nationality` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `customer_type`
--

LOCK TABLES `customer_type` WRITE;
/*!40000 ALTER TABLE `customer_type` DISABLE KEYS */;
INSERT INTO `customer_type` VALUES (1,'Accountant, Auditor and Tax Advisor','Medium',30),(2,'NGOs, NPOs, Charitable/Religious Organization, Associations, Cubs, Socities,etc','Medium',30),(3,'Administrators, Liquidators, Agents & like customers ','Medium',30),(4,'Companies having Nominee Shareholders or Shares in Bearer Form','Medium',30),(5,'Local Persons or Arrangments that are Personal Asset Holding Vehicle','Medium',30),(7,'Correspondent Banks','Medium',30),(8,'Arms/ Ammunition Dealers','High',40),(9,'High valuable/ Precious Metal Dealers (e.g.  Gold, Silver, Diamond, Ruby, Antique, etc Dealers)','High',40),(10,'Old Auto Parts and/ or Metal Scrap Dealers','High',40),(11,'Agriculturist','Low',20),(12,'Non Residents, Foreign Nationals','High',40),(13,'Professional/Self Employed/ Proprietorship','High',40),(14,'Land Lords','High',40),(16,'Housewives/ Widows/ Households','High',40),(17,'Accountant, Auditor and Tax Advisor','Medium',30),(18,'Minors, Students, Unemployed ','Low',20),(19,'Lawyers','High',40),(20,'Un-registered Partnership conerns or  Registerd Partnership Concerns Invloving business e.g. Real Estate , Civil Work, Brokerage, Share Dealing, Travel/Tourism, trading of general items','High',40),(21,'Salaried individual, Pension Holders and like Customers ','Low',10),(22,'Financial Insituations Regulated Supervised by Central Bank except Exchange Companies /Money Remitters/Change','Low',10),(23,'Registerd partnerships involving business not specified above','Medium',30),(24,'Government Entities (Local/Provincal/State/Federal) / Public Administration','Medium',30),(25,'Politically Exposed Parties/ Persons (PEPs) including their Family Members and Close associates or Relatives','High',60),(26,'High Net worth customers with no clearly identifiable source of income, etc','High',40),(27,'Investment and Comodity Advisor','Medium',30),(28,'Landady','High',40),(29,'Minors','Low',20),(30,'Notaries','Low',20),(31,'Non-bank finance Companies (NBFs) Regulated /Supervised by Regulator','Low',20),(32,'Public/Private Limited/Guarantee Limited Companies','Medium',30),(33,'Foregin Government Enites OR Foregin Private Entites(that are subject to regulatory disclousre requirments and whose information is publically avalible )','Medium',30),(34,'Security Brokers-Dealer (Such as Shares, Mutual Funds etc.)','Medium',30),(35,'Pensioner','Low',10),(36,'Real-Estate Dealer/Agent','Medium',30),(37,'Retired Person','Low',10),(38,'Security Brokers-Dealer (Such as Shares, Mutual Funds etc.)','Medium',30),(39,'Self Employed/ Proprietorship','Low',10),(40,'Trader of General Items','Medium',30),(41,'Travel/Tourism Agent','Medium',30),(42,'Unemployed','Low',20),(43,'All other Customers not Specified above','High',40);
/*!40000 ALTER TABLE `customer_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `delivery_channel`
--

LOCK TABLES `delivery_channel` WRITE;
/*!40000 ALTER TABLE `delivery_channel` DISABLE KEYS */;
INSERT INTO `delivery_channel` VALUES (1,'Mobile Wallet','Medium',7),(2,'Branches','Medium',5),(3,'Field Officers','Medium',5),(4,'Automated Teller Machines (ATMs)','High',8),(5,'Payment Terminals','Medium',6),(6,'Point-of-sale-devices','Medium',7),(7,'Mobile Branches','High',10),(8,'Mobile Phones','High',10),(9,'Wire Transfer Channel','High',10);
/*!40000 ALTER TABLE `delivery_channel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(4,'auth','user'),(5,'contenttypes','contenttype'),(7,'identification','beneficial'),(11,'identification','customertype'),(12,'identification','deliverychannel'),(13,'identification','geographiclocation'),(8,'identification','individual'),(9,'identification','organization'),(10,'identification','pep'),(14,'identification','producttype'),(6,'sessions','session');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2021-12-02 08:56:45.055077'),(2,'auth','0001_initial','2021-12-02 08:56:46.088774'),(3,'admin','0001_initial','2021-12-02 08:56:46.284428'),(4,'admin','0002_logentry_remove_auto_add','2021-12-02 08:56:46.298677'),(5,'admin','0003_logentry_add_action_flag_choices','2021-12-02 08:56:46.312644'),(6,'contenttypes','0002_remove_content_type_name','2021-12-02 08:56:46.472165'),(7,'auth','0002_alter_permission_name_max_length','2021-12-02 08:56:46.548946'),(8,'auth','0003_alter_user_email_max_length','2021-12-02 08:56:46.605571'),(9,'auth','0004_alter_user_username_opts','2021-12-02 08:56:46.620650'),(10,'auth','0005_alter_user_last_login_null','2021-12-02 08:56:46.745983'),(11,'auth','0006_require_contenttypes_0002','2021-12-02 08:56:46.753886'),(12,'auth','0007_alter_validators_add_error_messages','2021-12-02 08:56:46.774974'),(13,'auth','0008_alter_user_username_max_length','2021-12-02 08:56:46.883358'),(14,'auth','0009_alter_user_last_name_max_length','2021-12-02 08:56:46.969908'),(15,'auth','0010_alter_group_name_max_length','2021-12-02 08:56:47.002507'),(16,'auth','0011_update_proxy_permissions','2021-12-02 08:56:47.028365'),(17,'auth','0012_alter_user_first_name_max_length','2021-12-02 08:56:47.109252'),(18,'sessions','0001_initial','2021-12-02 08:56:47.160144');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `geographic_location`
--

LOCK TABLES `geographic_location` WRITE;
/*!40000 ALTER TABLE `geographic_location` DISABLE KEYS */;
INSERT INTO `geographic_location` VALUES (1,'Abbottabad','Low',10),(2,'Abdul Hakim','Medium',20),(3,'Akora Khatak','High',30),(4,'Aliabad','Low',10),(5,'Alpurai','Low',10),(6,'Athmuqam','Low',10),(7,'Attock City','Low',10),(8,'Awaran','High',30),(9,'Badin','Medium',20),(10,'Bagh','Medium',20),(11,'Bahawalnagar','Low',10),(12,'Bahawalpur','Low',10),(13,'Bajur','High',30),(14,'Bannu','High',30),(15,'Bara','High',30),(16,'Barkhan','High',30),(17,'Batkhela','High',30),(18,'Battagram','High',30),(19,'Bela','High',30),(20,'Bhakkar','Medium',20),(21,'Bisham','High',30),(22,'Bolan','High',30),(23,'Buner','High',30),(24,'Chaghi','High',30),(25,'Chakwal','Low',10),(26,'Chaman','High',30),(27,'Charsadda','High',30),(28,'Chilas','Medium',20),(29,'Chitral','High',30),(30,'DI Khan','High',30),(31,'Dadu','Medium',20),(32,'Daggar','Medium',20),(33,'Dalbadin','High',30),(34,'Dalbandin','Low',10),(35,'Danyor','Low',10),(36,'Dara Adamkhel','High',30),(37,'Dasu','Low',10),(38,'Dera Allahyar','Medium',20),(39,'Dera Bughti','High',30),(40,'Dera Ghazi Khan','Medium',20),(41,'Dera Ismail Khan','Medium',20),(42,'Dera Murad Jamali','High',30),(43,'Dhadar','High',30),(44,'Dir','High',30),(45,'Faisalabad','Low',10),(46,'Gadoon Amzai','High',30),(47,'Gakuch','Medium',20),(48,'Gandava','Low',10),(49,'Gawadar','High',30),(50,'Ghakhar','High',30),(51,'Ghotki','Medium',20),(52,'Gijkopt','High',30),(53,'Gilgit','Low',10),(54,'Gojra','Medium',20),(55,'Gomal','High',30),(56,'Gujranwala','Low',10),(57,'Gujrat','Low',10),(58,'Hafizabad','Low',10),(59,'Hangu','High',30),(60,'Haripur','Medium',20),(61,'Harunabad','Low',10),(62,'Hasilpur','Low',10),(63,'Hassan Abdal','Low',10),(64,'Hub','High',30),(65,'Hujra Shah Muqim','Medium',20),(66,'Hyderabad','Low',10),(67,'Islamabad','Low',10),(68,'Jacobabad','Low',10),(69,'Jaffarabad','High',30),(70,'Jalalpur Jattan','Medium',20),(71,'Jamrud','High',30),(72,'Jamshoro','Low',10),(73,'Jaranwala','Low',10),(74,'Jehangira','High',30),(75,'Jhal Magsi','High',30),(76,'Jhang','Low',10),(77,'Jhelum','Low',10),(78,'Kabirwala','Medium',20),(79,'Kalabagh','High',30),(80,'Kalat','Low',10),(81,'Kamalia','Medium',20),(82,'Kandhkot','Medium',20),(83,'Kanpur','High',30),(84,'Karachi','Low',10),(85,'Karak','High',30),(86,'Kasur','Low',10),(87,'Kech','High',30),(88,'Khairpur','Medium',20),(89,'Khanewal','Low',10),(90,'Khanpur','Low',10),(91,'Kharan','High',30),(92,'Kharian','Low',10),(93,'Khushab','Low',10),(94,'Khuzdar','High',30),(95,'Khyber Agency','High',30),(96,'Kila Saifullah','High',30),(97,'Killa Abdullah','High',30),(98,'Kohat','High',30),(99,'Kohlu','High',30),(100,'Kot Addu','Low',10),(101,'Kotli','Low',10),(102,'Kulachi','Low',10),(103,'Kundian','Low',10),(104,'Kurram Agency','High',30),(105,'Lahore','Low',10),(106,'Laki Marwat','High',30),(107,'Lala Musa','Medium',20),(108,'Landi Kotal','High',30),(109,'Larkana','Low',10),(110,'Lasbela','High',30),(111,'Latamber','High',30),(112,'Layyah','Low',10),(113,'Lodhran','Low',10),(114,'Loralai','High',30),(115,'Malakand','High',30),(116,'Mandi Bahauddin','Low',10),(117,'Mandi Burewala','Low',10),(118,'Mansehra','Medium',20),(119,'Mardan','High',30),(120,'Mastung','High',30),(121,'Matiari','Low',10),(122,'Mian Channu','Low',10),(123,'Mianwali','Low',10),(124,'Mingora','High',30),(125,'Mir Ali Mirali','High',30),(126,'Miranshah','High',30),(127,'Mirpur Khas','Low',10),(128,'Mohmand Agency','High',30),(129,'Multan','Low',10),(130,'Muridke','Low',10),(131,'Musa Khel Bazar','Low',10),(132,'Musakhel','High',30),(133,'Muzaffarabad','Low',10),(134,'Muzaffargarh','Low',10),(135,'Nankana Sahib','Low',10),(136,'Narowal','Low',10),(137,'Nasirabad','High',30),(138,'Naushahro Firoz','Low',10),(139,'Nawabshah','Low',10),(140,'Nawankali','High',30),(141,'New Mirpur','Medium',20),(142,'North Waziristan Agency','High',30),(143,'Nowshera','High',30),(144,'Nushki','High',30),(145,'Okara','Low',10),(146,'Orakazi Agency','High',30),(147,'Pakpattan','Medium',20),(148,'Panjgur','High',30),(149,'Parachinar','High',30),(150,'Pasni','High',30),(151,'Pattoki','Low',10),(152,'Peshawar','High',30),(153,'Pishin','High',30),(154,'Pubi','High',30),(155,'Qaidabad','High',30),(156,'Qalat','High',30),(157,'Qila Saifullah','Medium',20),(158,'Quetta','High',30),(159,'Rahimyar Khan','Low',10),(160,'Rajanpur','Low',10),(161,'Rawala Kot','Low',10),(162,'Rawalpindi','Low',10),(163,'Risalpur','Low',10),(164,'Sadiqabad','Low',10),(165,'Sahiwal','Low',10),(166,'Saidu Sharif','Medium',20),(167,'Sakhakot','High',30),(168,'Sanghar','Medium',20),(169,'Sarai Morang','High',30),(170,'Sargodha','Low',10),(171,'Sawabi','High',30),(172,'Shahdad Kot','Low',10),(173,'Shakargarh','Low',10),(174,'Sharkpur','High',30),(175,'Shekhupura','Low',10),(176,'Shijaabad','High',30),(177,'Shikarpur','Low',10),(178,'Sialkot','Low',10),(179,'Sibi','High',30),(180,'South Waziristan Agency','High',30),(181,'Sukkur','Low',10),(182,'Swabi','Medium',20),(183,'Swat','High',30),(184,'Taftan','High',30),(185,'Takht Bhai','High',30),(186,'Takht Nusrati','High',30),(187,'Taloi Band','High',30),(188,'Tando Allahyar','Medium',20),(189,'Tando Muhammad Khan','Medium',20),(190,'Tank','High',30),(191,'Thatta','Medium',20),(192,'Thul','High',30),(193,'Timergara','High',30),(194,'Toba Tek Singh','Low',10),(195,'Turbat','High',30),(196,'Umarkot','Medium',20),(197,'Upper Dir','Medium',20),(198,'Usta Muhammad','High',30),(199,'Uthal','High',30),(200,'Vehari','Low',10),(201,'Washuk','High',30),(202,'Zhob','High',30),(203,'Ziarat','High',30),(204,'Azad Kashmir','Low',10),(205,'Wah Cantt','Low',10),(206,'Abbottabad','Low',10),(207,'Abdul Hakim','Medium',20),(208,'Akora Khatak','High',30),(209,'Aliabad','Low',10),(210,'Alpurai','Low',10),(211,'Athmuqam','Low',10),(212,'Attock City','Low',10),(213,'Awaran','High',30),(214,'Badin','Medium',20),(215,'Bagh','Medium',20),(216,'Bahawalnagar','Low',10),(217,'Bahawalpur','Low',10),(218,'Bajur','High',30),(219,'Bannu','High',30),(220,'Bara','High',30),(221,'Barkhan','High',30),(222,'Batkhela','High',30),(223,'Battagram','High',30),(224,'Bela','High',30),(225,'Bhakkar','Medium',20),(226,'Bisham','High',30),(227,'Bolan','High',30),(228,'Buner','High',30),(229,'Chaghi','High',30),(230,'Chakwal','Low',10),(231,'Chaman','High',30),(232,'Charsadda','High',30),(233,'Chilas','Medium',20),(234,'Chitral','High',30),(235,'DI Khan','High',30),(236,'Dadu','Medium',20),(237,'Daggar','Medium',20),(238,'Dalbadin','High',30),(239,'Dalbandin','Low',10),(240,'Danyor','Low',10),(241,'Dara Adamkhel','High',30),(242,'Dasu','Low',10),(243,'Dera Allahyar','Medium',20),(244,'Dera Bughti','High',30),(245,'Dera Ghazi Khan','Medium',20),(246,'Dera Ismail Khan','Medium',20),(247,'Dera Murad Jamali','High',30),(248,'Dhadar','High',30),(249,'Dir','High',30),(250,'Faisalabad','Low',10),(251,'Gadoon Amzai','High',30),(252,'Gakuch','Medium',20),(253,'Gandava','Low',10),(254,'Gawadar','High',30),(255,'Ghakhar','High',30),(256,'Ghotki','Medium',20),(257,'Gijkopt','High',30),(258,'Gilgit','Low',10),(259,'Gojra','Medium',20),(260,'Gomal','High',30),(261,'Gujranwala','Low',10),(262,'Gujrat','Low',10),(263,'Hafizabad','Low',10),(264,'Hangu','High',30),(265,'Haripur','Medium',20),(266,'Harunabad','Low',10),(267,'Hasilpur','Low',10),(268,'Hassan Abdal','Low',10),(269,'Hub','High',30),(270,'Hujra Shah Muqim','Medium',20),(271,'Hyderabad','Low',10),(272,'Islamabad','Low',10),(273,'Jacobabad','Low',10),(274,'Jaffarabad','High',30),(275,'Jalalpur Jattan','Medium',20),(276,'Jamrud','High',30),(277,'Jamshoro','Low',10),(278,'Jaranwala','Low',10),(279,'Jehangira','High',30),(280,'Jhal Magsi','High',30),(281,'Jhang','Low',10),(282,'Jhelum','Low',10),(283,'Kabirwala','Medium',20),(284,'Kalabagh','High',30),(285,'Kalat','Low',10),(286,'Kamalia','Medium',20),(287,'Kandhkot','Medium',20),(288,'Kanpur','High',30),(289,'Karachi','Low',10),(290,'Karak','High',30),(291,'Kasur','Low',10),(292,'Kech','High',30),(293,'Khairpur','Medium',20),(294,'Khanewal','Low',10),(295,'Khanpur','Low',10),(296,'Kharan','High',30),(297,'Kharian','Low',10),(298,'Khushab','Low',10),(299,'Khuzdar','High',30),(300,'Khyber Agency','High',30),(301,'Kila Saifullah','High',30),(302,'Killa Abdullah','High',30),(303,'Kohat','High',30),(304,'Kohlu','High',30),(305,'Kot Addu','Low',10),(306,'Kotli','Low',10),(307,'Kulachi','Low',10),(308,'Kundian','Low',10),(309,'Kurram Agency','High',30),(310,'Lahore','Low',10),(311,'Laki Marwat','High',30),(312,'Lala Musa','Medium',20),(313,'Landi Kotal','High',30),(314,'Larkana','Low',10),(315,'Lasbela','High',30),(316,'Latamber','High',30),(317,'Layyah','Low',10),(318,'Lodhran','Low',10),(319,'Loralai','High',30),(320,'Malakand','High',30),(321,'Mandi Bahauddin','Low',10),(322,'Mandi Burewala','Low',10),(323,'Mansehra','Medium',20),(324,'Mardan','High',30),(325,'Mastung','High',30),(326,'Matiari','Low',10),(327,'Mian Channu','Low',10),(328,'Mianwali','Low',10),(329,'Mingora','High',30),(330,'Mir Ali Mirali','High',30),(331,'Miranshah','High',30),(332,'Mirpur Khas','Low',10),(333,'Mohmand Agency','High',30),(334,'Multan','Low',10),(335,'Muridke','Low',10),(336,'Musa Khel Bazar','Low',10),(337,'Musakhel','High',30),(338,'Muzaffarabad','Low',10),(339,'Muzaffargarh','Low',10),(340,'Nankana Sahib','Low',10),(341,'Narowal','Low',10),(342,'Nasirabad','High',30),(343,'Naushahro Firoz','Low',10),(344,'Nawabshah','Low',10),(345,'Nawankali','High',30),(346,'New Mirpur','Medium',20),(347,'North Waziristan Agency','High',30),(348,'Nowshera','High',30),(349,'Nushki','High',30),(350,'Okara','Low',10),(351,'Orakazi Agency','High',30),(352,'Pakpattan','Medium',20),(353,'Panjgur','High',30),(354,'Parachinar','High',30),(355,'Pasni','High',30),(356,'Pattoki','Low',10),(357,'Peshawar','High',30),(358,'Pishin','High',30),(359,'Pubi','High',30),(360,'Qaidabad','High',30),(361,'Qalat','High',30),(362,'Qila Saifullah','Medium',20),(363,'Quetta','High',30),(364,'Rahimyar Khan','Low',10),(365,'Rajanpur','Low',10),(366,'Rawala Kot','Low',10),(367,'Rawalpindi','Low',10),(368,'Risalpur','Low',10),(369,'Sadiqabad','Low',10),(370,'Sahiwal','Low',10),(371,'Saidu Sharif','Medium',20),(372,'Sakhakot','High',30),(373,'Sanghar','Medium',20),(374,'Sarai Morang','High',30),(375,'Sargodha','Low',10),(376,'Sawabi','High',30),(377,'Shahdad Kot','Low',10),(378,'Shakargarh','Low',10),(379,'Sharkpur','High',30),(380,'Shekhupura','Low',10),(381,'Shijaabad','High',30),(382,'Shikarpur','Low',10),(383,'Sialkot','Low',10),(384,'Sibi','High',30),(385,'South Waziristan Agency','High',30),(386,'Sukkur','Low',10),(387,'Swabi','Medium',20),(388,'Swat','High',30),(389,'Taftan','High',30),(390,'Takht Bhai','High',30),(391,'Takht Nusrati','High',30),(392,'Taloi Band','High',30),(393,'Tando Allahyar','Medium',20),(394,'Tando Muhammad Khan','Medium',20),(395,'Tank','High',30),(396,'Thatta','Medium',20),(397,'Thul','High',30),(398,'Timergara','High',30),(399,'Toba Tek Singh','Low',10),(400,'Turbat','High',30),(401,'Umarkot','Medium',20),(402,'Upper Dir','Medium',20),(403,'Usta Muhammad','High',30),(404,'Uthal','High',30),(405,'Vehari','Low',10),(406,'Washuk','High',30),(407,'Zhob','High',30),(408,'Ziarat','High',30),(409,'Azad Kashmir','Low',10),(410,'Wah Cantt','Low',10);
/*!40000 ALTER TABLE `geographic_location` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `identification_beneficial`
--

LOCK TABLES `identification_beneficial` WRITE;
/*!40000 ALTER TABLE `identification_beneficial` DISABLE KEYS */;
/*!40000 ALTER TABLE `identification_beneficial` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `identification_individual`
--

LOCK TABLES `identification_individual` WRITE;
/*!40000 ALTER TABLE `identification_individual` DISABLE KEYS */;
INSERT INTO `identification_individual` VALUES ('2021-12-16','ER567489','2021-12-07','male','title','Er560Pk','HBL','ABC','Hassan','Ali','2021-12-14','Lahore','Antigua & Barbuda','Resident','Lahore','Lahore','Sahiwal','Sindh','Barkhan','78650','[\'Accountant, Auditor and Tax Advisor\']','[\'Credit cards\']','[\'Payment Terminals\']','[\'Salary\']','[\'Clearing\']','[\'Pension\']','45','780999','67','67689','High',75,'EDD','self');
/*!40000 ALTER TABLE `identification_individual` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `identification_organization`
--

LOCK TABLES `identification_organization` WRITE;
/*!40000 ALTER TABLE `identification_organization` DISABLE KEYS */;
/*!40000 ALTER TABLE `identification_organization` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `identification_pep`
--

LOCK TABLES `identification_pep` WRITE;
/*!40000 ALTER TABLE `identification_pep` DISABLE KEYS */;
/*!40000 ALTER TABLE `identification_pep` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `individual_account_purpose`
--

LOCK TABLES `individual_account_purpose` WRITE;
/*!40000 ALTER TABLE `individual_account_purpose` DISABLE KEYS */;
INSERT INTO `individual_account_purpose` VALUES (1,'Agriculture'),(2,'Self Employed/ Proprietorship'),(3,'Home Remittance'),(4,'Pension'),(5,'Personal Saving'),(6,'Property Rent'),(7,'Salary'),(8,'Stock/Investment'),(9,'Other');
/*!40000 ALTER TABLE `individual_account_purpose` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `nacta_proscribed_persons`
--

LOCK TABLES `nacta_proscribed_persons` WRITE;
/*!40000 ALTER TABLE `nacta_proscribed_persons` DISABLE KEYS */;
/*!40000 ALTER TABLE `nacta_proscribed_persons` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `ofac`
--

LOCK TABLES `ofac` WRITE;
/*!40000 ALTER TABLE `ofac` DISABLE KEYS */;
/*!40000 ALTER TABLE `ofac` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `product_type`
--

LOCK TABLES `product_type` WRITE;
/*!40000 ALTER TABLE `product_type` DISABLE KEYS */;
INSERT INTO `product_type` VALUES (1,'Digital Account','Low',5),(2,'Transactional accounts','Medium',10),(3,'Checking accounts','Medium',10),(4,'Current accounts','Medium',10),(5,'Savings accounts','Medium',10),(6,'Debit cards','High',15),(7,'ATM cards','High',18),(8,'Credit cards','High',20),(9,'Traveler cheques','Medium',12),(10,'Mortgages','Low',7),(11,'Home equity loans','Low',5),(12,'Personal loans','Medium',12),(13,'Certificates of deposit/Term deposits','Medium',11),(14,'Sweep accounts','Low',7),(15,'Money market accounts','Medium',10),(16,'Individual Retirement Accounts (IRAs)','High',20),(17,'Internet Banking','High',20),(18,'Mobile Banking','High',20);
/*!40000 ALTER TABLE `product_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `unsc_entity`
--

LOCK TABLES `unsc_entity` WRITE;
/*!40000 ALTER TABLE `unsc_entity` DISABLE KEYS */;
/*!40000 ALTER TABLE `unsc_entity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `unsc_entity_address`
--

LOCK TABLES `unsc_entity_address` WRITE;
/*!40000 ALTER TABLE `unsc_entity_address` DISABLE KEYS */;
/*!40000 ALTER TABLE `unsc_entity_address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `unsc_entity_alias`
--

LOCK TABLES `unsc_entity_alias` WRITE;
/*!40000 ALTER TABLE `unsc_entity_alias` DISABLE KEYS */;
/*!40000 ALTER TABLE `unsc_entity_alias` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `unsc_individual`
--

LOCK TABLES `unsc_individual` WRITE;
/*!40000 ALTER TABLE `unsc_individual` DISABLE KEYS */;
/*!40000 ALTER TABLE `unsc_individual` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `unsc_individual_address`
--

LOCK TABLES `unsc_individual_address` WRITE;
/*!40000 ALTER TABLE `unsc_individual_address` DISABLE KEYS */;
/*!40000 ALTER TABLE `unsc_individual_address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `unsc_individual_alias`
--

LOCK TABLES `unsc_individual_alias` WRITE;
/*!40000 ALTER TABLE `unsc_individual_alias` DISABLE KEYS */;
/*!40000 ALTER TABLE `unsc_individual_alias` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `unsc_individual_date_of_birth`
--

LOCK TABLES `unsc_individual_date_of_birth` WRITE;
/*!40000 ALTER TABLE `unsc_individual_date_of_birth` DISABLE KEYS */;
/*!40000 ALTER TABLE `unsc_individual_date_of_birth` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `unsc_individual_document`
--

LOCK TABLES `unsc_individual_document` WRITE;
/*!40000 ALTER TABLE `unsc_individual_document` DISABLE KEYS */;
/*!40000 ALTER TABLE `unsc_individual_document` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `unsc_individual_place_of_birth`
--

LOCK TABLES `unsc_individual_place_of_birth` WRITE;
/*!40000 ALTER TABLE `unsc_individual_place_of_birth` DISABLE KEYS */;
/*!40000 ALTER TABLE `unsc_individual_place_of_birth` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-12-03 16:52:52
