-- MySQL dump 10.13  Distrib 5.7.26, for Linux (x86_64)
--
-- Host: localhost    Database: blogdb
-- ------------------------------------------------------
-- Server version	5.7.26-0ubuntu0.16.04.1

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
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
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
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',2,'add_permission'),(6,'Can change permission',2,'change_permission'),(7,'Can delete permission',2,'delete_permission'),(8,'Can view permission',2,'view_permission'),(9,'Can add group',3,'add_group'),(10,'Can change group',3,'change_group'),(11,'Can delete group',3,'delete_group'),(12,'Can view group',3,'view_group'),(13,'Can add user',4,'add_user'),(14,'Can change user',4,'change_user'),(15,'Can delete user',4,'delete_user'),(16,'Can view user',4,'view_user'),(17,'Can add content type',5,'add_contenttype'),(18,'Can change content type',5,'change_contenttype'),(19,'Can delete content type',5,'delete_contenttype'),(20,'Can view content type',5,'view_contenttype'),(21,'Can add session',6,'add_session'),(22,'Can change session',6,'change_session'),(23,'Can delete session',6,'delete_session'),(24,'Can view session',6,'view_session'),(25,'Can add post',7,'add_post'),(26,'Can change post',7,'change_post'),(27,'Can delete post',7,'delete_post'),(28,'Can view post',7,'view_post');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$150000$jrLUJ53M9gr5$jgEOLAxHkepI7mDJv/UE0l+Sl0GuhwCJAIue+eHryVA=','2019-08-29 11:49:48.806342',1,'ischoolcode','','','ischoolcode@sina.com',1,1,'2019-08-29 11:48:45.619724');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_groups`
--

LOCK TABLES `auth_user_groups` WRITE;
/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blog_post`
--

DROP TABLE IF EXISTS `blog_post`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blog_post` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(200) NOT NULL,
  `text` longtext NOT NULL,
  `created_date` datetime(6) NOT NULL,
  `published_date` datetime(6) DEFAULT NULL,
  `author_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `blog_post_author_id_dd7a8485_fk_auth_user_id` (`author_id`),
  CONSTRAINT `blog_post_author_id_dd7a8485_fk_auth_user_id` FOREIGN KEY (`author_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blog_post`
--

LOCK TABLES `blog_post` WRITE;
/*!40000 ALTER TABLE `blog_post` DISABLE KEYS */;
INSERT INTO `blog_post` VALUES (1,'国防部回应武警深圳演习：检验部队跨区机动和维稳能力','【环球时报-环球网报道 记者 郭媛丹】在29日国防部例行记者会上，国防部新闻发言人任国强大校证实，8月中旬在深圳进行的武警演习是武警部队年度训练计划内的正常安排，主要是检验部队跨区机动和维护社会稳定的实际能力，这样的训练武警部队每年都要进行。','2019-08-29 11:52:47.000000','2019-08-29 11:59:28.000000',1),(2,'让农村群众喝上放心水','张朝村位于山西临县白文镇的东北部，是个以农业为主的贫困村，虽然自来水管网已经入户，但一到夏季用水高峰，由于压力不够，就会出现水管只出声不出水的现象。住在地势较高的农户，一遇干旱少雨天气，就为吃水发愁。“就是山下水井中的水也不保险，看着挺清的，但水质不好。”驻村第一书记郭玉蛟的担忧，也是村民的担忧。\r\n\r\n不久前，在山西省扶贫办和省水利厅的通力协作下，统筹整合的28万元扶贫资金拨到了张朝村。7月5日，临县白文镇丁丁水利水保专业施工队进驻张朝村。8月8日，机井出水，老百姓欢欣鼓舞。村党支部书记柔贵忠笑呵呵地说：“现在村里的水，喝起来甜，不像以前发咸了。”\r\n\r\n在“不忘初心、牢记使命”主题教育中，山西找差距、补短板，着力解决群众的操心事、烦心事、揪心事。今年是山西脱贫攻坚任务最艰巨、决战决胜的关键之年，保障农村群众饮水安全是解决脱贫攻坚“三保障”问题的重点任务。\r\n\r\n山西既是缺水省份，又是脱贫攻坚重点省份。针对贫困地区群众饮水安全问题，山西加大督查考核力度，由双月通报变为每月通报。省扶贫办拉出自身整改工作清单和市县“一对一”问题清单，横向与省水利厅联动，纵向省市县乡村贯通，逐类逐项建立台账，限期整改、对账销号。在财政投入上，通过财政支持、整合涉农资金、鼓励农民投入等方式，破解资金短缺难题。\r\n\r\n“现在绝大部分贫困地区的缺水问题得到了解决，但还有一些贫困村存在供水量不足、水质难保障的问题，饮水安全成了制约这些贫困地区巩固提升的瓶颈，解决类似问题就是我们当前工作的重点。”山西省扶贫办革命老区扶贫工作站站长樊彩英介绍。\r\n\r\n主题教育开展以来，山西各贫困县共落实各级资金8.8亿元，其中省级以上资金6.52亿元，计划建设农村饮水安全工程2607处，提升3061个村、156.3万人口的饮水安全条件。截至目前，已开工2348处，完工1050处，1146个村、64.6万人口受益。\r\n\r\n山西省水利厅对全省农村贫困人口饮水状况全面摸底，建立问题台账，按照“一村一策”原则，逐村制定解决方案。永和县是国家扶贫开发工作重点县。一个多月来，在永和县崎岖的山路上，出现了一支摩托车骑行队，他们是县水利局局长刘永胜带领的班子成员和技术人员。由于永和县大部分水源地都在沟里边，汽车难以到达，他们就骑摩托车下沟实地调查，有的自然村连摩托车也进不去，就步行。凭着这股精神，刘永胜骑摩托车跑遍了7个乡镇、81个自然村，确定了饮水安全巩固提升方案。\r\n\r\n后苏家山村，仅有41户114口人，有人说这里丰水，有人说这里缺水。说丰水，是因为紧邻黄河；说缺水，水中氟含量超标，不合适饮用。该县投资9万元，为家家户户安装饮用水单户净化设备，村民辛清平说：“以前我们喝的都是高氟水，小孩一长乳牙，牙就开始发黄，村民戏称‘难以启齿’，现在我们喝的是放心水。”\r\n\r\n大宁县太德乡龙吉村当时由于土地难以协调，导致修建的蓄水池位置低，高处15户村民吃水困难。县水利局近日在龙吉村主输水管道上安装了一台变频加压泵，有效解决了这一难题。三多乡呜啼村由于水量不足，管网老化，致使饮水保证率不达标，需要修路、打井、管网改造，乡干部冯宏伟蹲守工地，跑前跑后，使修路工程提前完成。现在他又和工人们一起打井，成天泥一身、土一身，村里人见到他总是戏称“土人回来了”，但对他打心眼里感激。\r\n\r\n农村饮水安全工程“三分在建、七分在管”，工程建设后，后期运行管理更为重要。为此，《山西省关于解决“两不愁三保障”突出问题的实施意见》出台，省水利厅正在制定《山西省农村饮水安全工程运行管理改革实施方案》，从省级层面给予基层农村饮水安全工程运行管理指导。','2019-08-29 12:01:41.000000','2019-08-29 12:14:57.000000',1),(3,'香港争论是否动用“紧急法” 港媒：非常时期非常手段','【环球时报综合报道】香港特区政府是否应该实施“紧急法”？由于少数激进分子乱港不止，甚至变本加厉地升级暴力，这个问题过去两天成为香港舆论热烈争论的话题。27日在回应相关问题时，香港特首林郑月娥并未否认，而是强调会采取各种法治手段止暴制乱。这被港媒解读为政府为动用“紧急法”留下空间。实施“紧急法”状态下，特首会同行政会议可订立合乎公众利益的条例，如实施戒严、禁示威者蒙面等，权力相当广泛。港英政府曾在1967年处理“反英抗暴”时动用“紧急法”颁布不同禁令。一些反对派随即对这一可恢复社会秩序的潜在选项指手画脚，有“独媒”甚至搬出“洋大人”吓人称“‘紧急法’将加速欧美制裁”。建制力量则强调，非常时期，任何有助防止暴力升级、恢复秩序的手段都可以探讨评估。香港《巴士的报》28日称，面对无日无之的暴力示威，本地人的生活以至生计都受到重大影响，暴力冲突随时造成大面积流血的情况下，越来越多人会觉得，香港进入紧急状态，也未必是一件坏事。','2019-08-29 12:19:19.000000','2019-08-29 12:21:06.000000',1);
/*!40000 ALTER TABLE `blog_post` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2019-08-29 12:00:16.516228','1','国防部回应武警深圳演习：检验部队跨区机动和维稳能力',1,'[{\"added\": {}}]',7,1),(2,'2019-08-29 12:15:02.419015','2','让农村群众喝上放心水',1,'[{\"added\": {}}]',7,1),(3,'2019-08-29 12:21:17.780762','3','香港争论是否动用“紧急法” 港媒：非常时期非常手段',1,'[{\"added\": {}}]',7,1);
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(4,'auth','user'),(7,'blog','post'),(5,'contenttypes','contenttype'),(6,'sessions','session');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2019-08-28 12:53:25.837431'),(2,'auth','0001_initial','2019-08-28 12:53:26.098368'),(3,'admin','0001_initial','2019-08-28 12:53:26.879063'),(4,'admin','0002_logentry_remove_auto_add','2019-08-28 12:53:27.060248'),(5,'admin','0003_logentry_add_action_flag_choices','2019-08-28 12:53:27.074630'),(6,'contenttypes','0002_remove_content_type_name','2019-08-28 12:53:27.205489'),(7,'auth','0002_alter_permission_name_max_length','2019-08-28 12:53:27.290274'),(8,'auth','0003_alter_user_email_max_length','2019-08-28 12:53:27.374427'),(9,'auth','0004_alter_user_username_opts','2019-08-28 12:53:27.387906'),(10,'auth','0005_alter_user_last_login_null','2019-08-28 12:53:27.449593'),(11,'auth','0006_require_contenttypes_0002','2019-08-28 12:53:27.454882'),(12,'auth','0007_alter_validators_add_error_messages','2019-08-28 12:53:27.468177'),(13,'auth','0008_alter_user_username_max_length','2019-08-28 12:53:27.554657'),(14,'auth','0009_alter_user_last_name_max_length','2019-08-28 12:53:27.638301'),(15,'auth','0010_alter_group_name_max_length','2019-08-28 12:53:27.725929'),(16,'auth','0011_update_proxy_permissions','2019-08-28 12:53:27.738604'),(17,'sessions','0001_initial','2019-08-28 12:53:27.776936'),(18,'blog','0001_initial','2019-08-29 11:25:03.821083');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('f2hnuttvkhk5kohhou41tnknq98f4pdj','OTA4MjA0YzkzMjQxNWQwZmQ3OTkwZTQwMjJjZjYyMTkzOWFmZDQ5Mjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI2YmUyZjdmZjg2NWIxMWRjZGYxNGM3MThjZTUyMjRiMmFiODljYmMzIn0=','2019-09-12 11:49:48.815412');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-09-03  7:11:07
