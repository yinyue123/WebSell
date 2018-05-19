CREATE DATABASE  IF NOT EXISTS `websell` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `websell`;
-- MySQL dump 10.13  Distrib 5.7.17, for macos10.12 (x86_64)
--
-- Host: 115.159.155.95    Database: websell
-- ------------------------------------------------------
-- Server version	5.1.73

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
-- Table structure for table `Cart`
--

DROP TABLE IF EXISTS `Cart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Cart` (
  `orderid` varchar(32) DEFAULT NULL,
  `userid` int(11) NOT NULL,
  `prodid` varchar(32) NOT NULL,
  `number` smallint(6) NOT NULL,
  `price` decimal(8,2) DEFAULT NULL,
  UNIQUE KEY `UK_UNIQUE` (`orderid`,`userid`,`prodid`),
  KEY `idx_order_id` (`orderid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Cart`
--

LOCK TABLES `Cart` WRITE;
/*!40000 ALTER TABLE `Cart` DISABLE KEYS */;
INSERT INTO `Cart` VALUES (NULL,1,'3bcf95438e504a95a1070a042b71bb42',3,NULL),(NULL,29,'3bcf95438e504a95a1070a042b71bb42',2,NULL),(NULL,29,'4ca56ae224094b29ab89503da0312c3f',3,NULL),(NULL,29,'995c902a784a448f836a80005e0858c5',1,NULL),(NULL,29,'8a1ed9aa6e76445293132d828a3e4db7',2,NULL),('b52bfc5a713c4ffcbf72f836d536513a',1,'0d876c3dc32245d79f664c1237dbdd99',1,5.00),('ff50239ec5e444f2ad06e7d564ac6533',1,'837b7298b5864d08ab89665a1b732404',1,20.00),(NULL,29,'0d876c3dc32245d79f664c1237dbdd99',1,NULL),('e631b559243940f48c30066b7330d79d',29,'ed0e73eb90e14a63bb49b7bc0531ae9c',1,3000.00),(NULL,1,'0d876c3dc32245d79f664c1237dbdd99',1,NULL),(NULL,29,'ed0e73eb90e14a63bb49b7bc0531ae9c',1,NULL),('b7cc6d8c05da4c1eb2a46bc21bbae540',30,'0fd93d85c104414fa6a138c1a832e547',1,10.00),('390e58283fe74faaa0f0a928638ad7aa',1,'4ca56ae224094b29ab89503da0312c3f',1,200.00),('ceacb066e42a4c5ca69845ceaf7bf1c7',32,'91236278a7584d0fbc2b46a640ef5306',1,12.00),('a97c4d8386c048c68e1988ae15edf59d',27,'30f76d570bbb4d648a1cb33a036ac48d',1,5.00),(NULL,27,'91236278a7584d0fbc2b46a640ef5306',1,NULL),('deb6106cd6794c10a6d6b82c2a830c46',27,'187063cc745c4185a9d0554c7ae75001',1,4800.00),('deb6106cd6794c10a6d6b82c2a830c46',27,'16e853d422824dc7821216e2e3f4a085',1,6800.00),('ea4536b3bf344acb8943a270f2dfb490',35,'66c2deff25e04e45a5e450a394b5c911',1,1000.00),(NULL,34,'ed0e73eb90e14a63bb49b7bc0531ae9c',1,NULL),(NULL,36,'0d876c3dc32245d79f664c1237dbdd99',1,NULL),('4787bbc3a4e54f35a933a2243731de1c',36,'02da7909bb6c4f10acc73897cc141a26',1,15.00),(NULL,27,'16e853d422824dc7821216e2e3f4a085',1,NULL),(NULL,27,'0fd93d85c104414fa6a138c1a832e547',1,NULL);
/*!40000 ALTER TABLE `Cart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `CartObject`
--

DROP TABLE IF EXISTS `CartObject`;
/*!50001 DROP VIEW IF EXISTS `CartObject`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `CartObject` AS SELECT 
 1 AS `icon`,
 1 AS `orderid`,
 1 AS `userid`,
 1 AS `prodid`,
 1 AS `prodname`,
 1 AS `number`,
 1 AS `nickname`,
 1 AS `price`,
 1 AS `sellerid`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `Order`
--

DROP TABLE IF EXISTS `Order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Order` (
  `orderid` varchar(32) NOT NULL,
  `userid` int(11) NOT NULL,
  `price` decimal(8,2) NOT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `message` varchar(64) DEFAULT NULL,
  `address` varchar(128) NOT NULL,
  `telephone` varchar(32) NOT NULL,
  `comment` varchar(256) DEFAULT NULL,
  `sellerid` varchar(32) NOT NULL,
  PRIMARY KEY (`orderid`),
  UNIQUE KEY `orderid_UNIQUE` (`orderid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Order`
--

LOCK TABLES `Order` WRITE;
/*!40000 ALTER TABLE `Order` DISABLE KEYS */;
INSERT INTO `Order` VALUES ('390e58283fe74faaa0f0a928638ad7aa',1,200.00,'2018-05-19 00:38:09',0,'msg','hit','110',NULL,'29'),('45742d7a437c4bbca119b090af05dbc6',1,80.00,'2018-04-11 07:16:37',3,'msg','hit','110',NULL,'0'),('4787bbc3a4e54f35a933a2243731de1c',36,15.00,'2018-05-19 07:25:57',0,'殷悦','哈工大威海','17863137381',NULL,'27'),('5fecc1715f154a12a78c72887f079a73',1,62.00,'2018-04-11 07:30:53',2,'msg','hit','110','good','3'),('a33c2ef295764feaa1f74b44b19396da',0,241.00,'2018-04-11 03:40:08',2,'msg','hit','110','123','0'),('a97c4d8386c048c68e1988ae15edf59d',27,5.00,'2018-05-19 03:16:32',0,'玉皇大帝','天宫一号','18888888888',NULL,'27'),('b52bfc5a713c4ffcbf72f836d536513a',1,5.00,'2018-05-18 12:49:36',0,'msg','hit','110',NULL,'29'),('b7cc6d8c05da4c1eb2a46bc21bbae540',30,10.00,'2018-05-18 23:41:12',0,'123','学府华园','1',NULL,'29'),('c3ea4158fb8d472c8363763f20033aea',1,40.00,'2018-04-11 07:50:41',0,'msg','hit','110',NULL,'5'),('ceacb066e42a4c5ca69845ceaf7bf1c7',32,12.00,'2018-05-19 00:54:40',0,'楚士真3','9公寓','11011011011',NULL,'31'),('deb6106cd6794c10a6d6b82c2a830c46',27,11600.00,'2018-05-19 03:18:38',0,'殷悦','哈工大','17863137381',NULL,'32'),('e631b559243940f48c30066b7330d79d',29,3000.00,'2018-05-18 15:25:03',0,'出事真','哈工大威海','13333333',NULL,'1'),('ea4536b3bf344acb8943a270f2dfb490',35,1000.00,'2018-05-19 06:14:16',0,'yinyue','研究院','13333333333',NULL,'34'),('ff50239ec5e444f2ad06e7d564ac6533',1,20.00,'2018-05-18 13:13:03',0,'msg','hit','110',NULL,'29');
/*!40000 ALTER TABLE `Order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `OrderObject`
--

DROP TABLE IF EXISTS `OrderObject`;
/*!50001 DROP VIEW IF EXISTS `OrderObject`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `OrderObject` AS SELECT 
 1 AS `orderid`,
 1 AS `userid`,
 1 AS `sellerid`,
 1 AS `price`,
 1 AS `usernickname`,
 1 AS `sellernickname`,
 1 AS `time`,
 1 AS `state`,
 1 AS `message`,
 1 AS `address`,
 1 AS `telephone`,
 1 AS `comment`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `ProdSales`
--

DROP TABLE IF EXISTS `ProdSales`;
/*!50001 DROP VIEW IF EXISTS `ProdSales`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `ProdSales` AS SELECT 
 1 AS `prodid`,
 1 AS `sales`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `Product`
--

DROP TABLE IF EXISTS `Product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Product` (
  `prodid` varchar(32) NOT NULL,
  `userid` int(11) DEFAULT NULL,
  `prodname` varchar(64) NOT NULL,
  `price` decimal(8,2) NOT NULL,
  `stock` int(11) NOT NULL,
  `description` varchar(128) DEFAULT NULL,
  `icon` varchar(256) DEFAULT NULL,
  `status` tinyint(3) DEFAULT '0',
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`prodid`),
  UNIQUE KEY `prodid_UNIQUE` (`prodid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Product`
--

LOCK TABLES `Product` WRITE;
/*!40000 ALTER TABLE `Product` DISABLE KEYS */;
INSERT INTO `Product` VALUES ('02da7909bb6c4f10acc73897cc141a26',27,'菠萝',15.00,99998,'特别好吃呢','http://libkindle.com:8080/WebSell/icon/c4364575a812445fb564e252f4ccae76.JPG',0,'2018-05-19 07:25:57'),('0b82dbc696ca466db08280315db6f50d',33,'coach包',1300.00,1,'原价2000全新','http://libkindle.com:8080/WebSell/icon/966bf48354d94451a585218e3b67a633.jpg',0,'2018-05-19 02:56:28'),('0d876c3dc32245d79f664c1237dbdd99',29,'C语言书',5.00,0,'大一用过的书里面有笔记哦','http://libkindle.com:8080/WebSell/icon/70b43cee270342968a7225f17ba84d55.jpeg',0,'2018-05-18 12:49:36'),('0f296089e19e4673aa4a36299447cd43',29,'白色电动摩托车',800.00,1,'基本全新','http://libkindle.com:8080/WebSell/icon/f926e52d4bbd4c09a9518d62fbcc35fa.jpg',0,'2018-05-18 09:33:05'),('0fd93d85c104414fa6a138c1a832e547',29,'网络编程书',10.00,1,'哈工大专用课本','http://libkindle.com:8080/WebSell/icon/e47db4c62e4f44069cd6dab73b4f17be.png',0,'2018-05-18 23:41:12'),('16e853d422824dc7821216e2e3f4a085',32,'苹果手机',6800.00,0,'最新一代苹果手机','http://libkindle.com:8080/WebSell/icon/77b4d161a2244ceb8437412b0671a207.jpg',0,'2018-05-19 03:18:38'),('17d66768874a4eb2af085508cfad4c03',33,'捷安特自行车',500.00,1,'ax770懂货的来不懂的勿扰','http://libkindle.com:8080/WebSell/icon/3ec9ae7f3a874d488700a8923b7c973e.jpeg',0,'2018-05-19 02:52:07'),('187063cc745c4185a9d0554c7ae75001',32,'华为手机',4800.00,0,'真的很好用','http://libkindle.com:8080/WebSell/icon/7e440acbb0f94255bab545534571e913.jpg',0,'2018-05-19 03:18:38'),('19dd6eec7fd94c0787ca654cb088f9ca',27,'苹果',10.00,88888,'不要998只要10块','http://libkindle.com:8080/WebSell/icon/9e4532006fb44bf7898e81ab0c2670ea.JPG',0,'2018-05-19 03:10:26'),('212c9b6db5e34730bc47adc741be5d40',33,'沙发椅',100.00,1,'有一点黄可以验货','http://libkindle.com:8080/WebSell/icon/0cf77fa1905c49259ab58fc712c9bba5.jpg',0,'2018-05-19 02:45:48'),('2f9e4c91db384e4ba6fc98b3a66cf73e',33,'aoc电脑显示器',100.00,1,'特价处理aoc显示器全新17寸','http://libkindle.com:8080/WebSell/icon/b7cbc72f97df46c7a44395eabd63aa10.jpg',0,'2018-05-19 02:48:17'),('30f76d570bbb4d648a1cb33a036ac48d',27,'香蕉',5.00,66665,'香蕉五元三斤三斤五块','http://libkindle.com:8080/WebSell/icon/5465c434bd874c1f8401815dbdd8b65a.JPG',0,'2018-05-19 03:16:32'),('4160f8f7d6584cf891c0fb81f810aaa5',33,'辣庄代金卡100',15.00,1,'辣庄的券价值100','http://libkindle.com:8080/WebSell/icon/9ae7636c97194059946f3a9da6458f52.jpeg',0,'2018-05-19 02:47:08'),('4ca56ae224094b29ab89503da0312c3f',29,'自行车永久',200.00,0,'永久自行车只使用两次','http://libkindle.com:8080/WebSell/icon/dcc4d3bda9a74db88f1572835b6340f8.jpg',0,'2018-05-19 00:38:09'),('5a9809ad87244e26a14ddf8a4c876f16',33,'电动自行车',600.00,1,'便捷的自行车可折叠','http://libkindle.com:8080/WebSell/icon/61bd197ebc4b48b682b9ee863e444226.jpg',0,'2018-05-19 02:41:00'),('66c2deff25e04e45a5e450a394b5c911',34,'psp游戏机',1000.00,4,'成色伊拉克','http://libkindle.com:8080/WebSell/icon/f0e590b0e73c4aaea86c6d3f5d621b8c.JPG',0,'2018-05-19 06:14:16'),('71e0f0dc57a542afa3a99810827366ad',32,'小米手机',5000.00,1,'吴亦凡代言','http://libkindle.com:8080/WebSell/icon/f3fdc5519a8c41ef9441925e561bf587.jpg',0,'2018-05-19 02:55:28'),('837b7298b5864d08ab89665a1b732404',29,'密码学教材',20.00,0,'图灵系列全新密码学书籍','http://libkindle.com:8080/WebSell/icon/d079a6a5e7324765a46e599ddb87126d.jpg',0,'2018-05-18 13:13:03'),('88e1bbb0771843b8949c54df4025c479',29,'懒人沙发',60.00,1,'宿舍神器','http://libkindle.com:8080/WebSell/icon/bfaf3117a52e4755880876bb2a8bbbeb.jpg',0,'2018-05-18 09:38:20'),('8a728dc31d0b4851ad9ff5d07758bf6e',33,'麦本本电脑',2800.00,1,'小麦2s京东买的','http://libkindle.com:8080/WebSell/icon/0d78cdebb7c94b3cb1807e110a04d0e9.jpg',0,'2018-05-19 02:43:52'),('8f51c6c2093c4147bd61e0d0504ff7bd',33,'trinx自行车',350.00,1,'trinx山地车基本没怎么骑','http://libkindle.com:8080/WebSell/icon/5cf1d39e77704b838a7e52d1f025ea5c.jpg',0,'2018-05-19 02:53:03'),('9009b69ba50e4a27a4040fb9e061b713',33,'粉色卡通书包',99.00,1,'全新没使用过','http://libkindle.com:8080/WebSell/icon/107aa3fa185d407e9357b5532ddfcc53.jpeg',0,'2018-05-19 02:39:09'),('91236278a7584d0fbc2b46a640ef5306',31,'数据结构书',12.00,0,'哈工大数据结构书','http://libkindle.com:8080/WebSell/icon/b59bb5e24f4d4948ac3381019ec695d0.jpeg',0,'2018-05-19 00:54:40'),('98623d78c99c4ac1a7a3ee81cd4d5f7d',36,'房地产',10000.00,50,'高楼大厦','http://libkindle.com:8080/WebSell/icon/b9b583451fe54c0d845c6d20d10971d4.GIF',0,'2018-05-19 07:23:08'),('b08ef2d6001d4e209a93cd9ec32f71ad',33,'二手沙发床',80.00,1,'给钱就买同城自提','http://libkindle.com:8080/WebSell/icon/ae109adc2dac49e1b8acc29e88dd1785.jpg',0,'2018-05-19 02:55:04'),('b90322ad0a094982b3e7ee556bfb8bbe',29,'文静vip卡',10.00,1,'余额还有25能洗一次','http://libkindle.com:8080/WebSell/icon/4870de49fd644483a6f6e3b052f114e9.jpg',0,'2018-05-18 09:34:48'),('bb011e076e944d8fbcf33c994cf7d4b5',30,'Iphone6',3999.00,1,'99新iphone手机寻找有缘人','http://libkindle.com:8080/WebSell/icon/09a70df6584942ab987e65bc108af722.jpg',0,'2018-05-18 08:57:09'),('bb466c8cace04a248a217d07fec61b92',29,'LV包',3000.00,1,'原价6000买的忍痛割爱','http://libkindle.com:8080/WebSell/icon/db67ea6276404db981ef0751d3d5f726.jpeg',0,'2018-05-18 09:37:17'),('be3780339573487e858429cceead2a5c',29,'绝地求生地图',15.00,1,'山大威海校内自取','http://libkindle.com:8080/WebSell/icon/68a44ca2f8a54eb1b5294d1e9269830b.jpg',0,'2018-05-19 03:08:46'),('cf055d5b0d3a4c78a6e66259e4a22bbe',33,'摩托车',1999.00,1,'本田摩托车去年12月买的很新','http://libkindle.com:8080/WebSell/icon/c1b15e9b9aec4b2282b164f6c8d117c9.jpg',0,'2018-05-19 02:42:25'),('d81f1ed0d39b44f592ca7bd1b2661d19',33,'吊床',30.00,1,'要毕业了把东西都卖啦','http://libkindle.com:8080/WebSell/icon/ab2cc9aed62f4d9c93b8c1b32d2cce77.jpg',0,'2018-05-19 03:01:21'),('d874b1c2e82a4d8f97a0075623b31987',33,'红米手机',300.00,1,'备用机使用红米1s','http://libkindle.com:8080/WebSell/icon/fe24d340f2a24510a7ddd8bf168a055a.jpg',0,'2018-05-19 02:44:42'),('d913d8b3a8784cef90ea7ec7005788c6',33,'电脑全套',1000.00,1,'包括主机鼠标键盘等','http://libkindle.com:8080/WebSell/icon/1992fadd8d4645c8bdd4bd45592b89ab.jpg',0,'2018-05-19 02:50:49'),('e5fe499152e04fc9b585fbe3a4ded5e8',33,'宝马摩托车',3599.00,1,'可小刀去年的新款','http://libkindle.com:8080/WebSell/icon/04401087f07e43c1982780531abc75b3.jpg',0,'2018-05-19 02:54:00'),('ececbfcf05104f2c8601a2f0d2bc8a37',29,'电脑',8888.00,1,'外星人电脑','http://libkindle.com:8080/WebSell/icon/499c69e031104db38b85efd305a5ea44.jpg',0,'2018-05-16 13:22:17'),('ed0e73eb90e14a63bb49b7bc0531ae9c',1,'一加手机',3000.00,0,'刚刚发布的一加手机6没拆封过','http://libkindle.com:8080/WebSell/icon/15e58b05dbda4cc99de2f08fda2275f3.jpg',0,'2018-05-18 15:25:03'),('f167965f8c764999a1a8323c212d58c6',27,'披萨',20.00,55555,'火腿芝士牛腩太好吃啦haha','http://libkindle.com:8080/WebSell/icon/e424ef4fc6a94a9baa233bc484c4658c.JPG',0,'2018-05-19 03:11:59');
/*!40000 ALTER TABLE `Product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `ProductObject`
--

DROP TABLE IF EXISTS `ProductObject`;
/*!50001 DROP VIEW IF EXISTS `ProductObject`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `ProductObject` AS SELECT 
 1 AS `prodid`,
 1 AS `userid`,
 1 AS `prodname`,
 1 AS `price`,
 1 AS `stock`,
 1 AS `sales`,
 1 AS `nickname`,
 1 AS `description`,
 1 AS `icon`,
 1 AS `time`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `User`
--

DROP TABLE IF EXISTS `User`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `User` (
  `userid` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(20) NOT NULL,
  `nickname` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `email` varchar(20) DEFAULT NULL,
  `level` tinyint(3) NOT NULL DEFAULT '0',
  `telephone` varchar(20) DEFAULT NULL,
  `icon` varchar(256) DEFAULT NULL,
  PRIMARY KEY (`userid`),
  UNIQUE KEY `username_UNIQUE` (`username`),
  UNIQUE KEY `userid_UNIQUE` (`userid`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `User`
--

LOCK TABLES `User` WRITE;
/*!40000 ALTER TABLE `User` DISABLE KEYS */;
INSERT INTO `User` VALUES (1,'hello','0000','666667','110@qq.com',1,'11011011011','http://libkindle.com:8080/WebSell/icon/516e067a487449d490f084119bcd3205.jpg'),(2,'殷悦','大帅哥','666666','11@qq.com',1,'110',NULL),(3,'test','test123','test','test@qq.com',1,NULL,NULL),(5,'666666','吹牛大王','777777','123@qq.com',2,'32132132132',NULL),(6,'a12345','杀马特6','123123','123@qq.com',0,'12312312312',NULL),(7,'a13345','杀马特6','666666','123@qq.com',0,'12312312312',NULL),(8,'a23345','杀马特6','666666','123@qq.com',0,'12312312312',NULL),(9,'a32345','杀马特6','666666','123@qq.com',0,'12312312312',NULL),(10,'a32245','杀马特6','666666','123@qq.com',0,'12312312312',NULL),(11,'a32246','杀马特6','666666','123@qq.com',0,'12312312312',NULL),(12,'a32247','杀马特6','666666','123@qq.com',0,'12312312312',NULL),(13,'a32249','杀马特6','666666','123@qq.com',0,'12312312312',NULL),(14,'a00001','杀马特6','666666','123@qq.com',0,'12312312312',NULL),(15,'a00002','杀马特6','666666','123@qq.com',0,'12312312312',NULL),(16,'a00003','杀马特6','666666','123@qq.com',0,'12312312312',NULL),(17,'a00004','杀马特6','666666','123@qq.com',0,'12312312312',NULL),(18,'a00005','杀马特6','666666','123@qq.com',0,'12312312312',NULL),(19,'a00006','杀马特6','666666','123@qq.com',0,'12312312312',NULL),(20,'a00007','杀马特6','666666','123@qq.com',0,'12312312312',NULL),(21,'a00008','美猴王la','666666','123@qq.com',0,'12312312312',NULL),(22,'a00009','扛把子la','666666','123@qq.com',0,'12312312312',NULL),(23,'a00010','扛把子la','666666','123@qq.com',0,'12312312312',NULL),(24,'a00011','工大扛把子','666666','123@qq.com',0,'12312312312',NULL),(25,'a00012','社会王哥','666666','123@qq.com',0,'12312312312',NULL),(26,'yinyue123','woca','hello123','123@qq.com',0,'17863137381',NULL),(27,'yinyue','殷悦','yinyue','798523593@qq.com',0,'17863137381','http://libkindle.com:8080/WebSell/icon/c8aa9167c072471fbeb450ca5c09ea65.jpg'),(28,'zbh123','123','123123','123@qq.com',0,'12312312312',NULL),(29,'zhangbohan','博涵','zhangbohan','123@qq.com',0,'13333333333','http://libkindle.com:8080/WebSell/icon/13977cbb32b540afa78a88c6efe2e299.png'),(30,'chushizhen','楚士真','chushizhen2','123@qq.com',0,'17863136970','http://libkindle.com:8080/WebSell/icon/5e2921d0e738495595c6f4f1ee04f356.jpg'),(31,'chushizhen2','楚士真2','chushizhen2','123@qq.com',0,'11011011011','http://libkindle.com:8080/WebSell/icon/d6142ab7f76c4404a3477154e2120af1.jpg'),(32,'chushizhen3','楚士真3','chushizhen3','123@qq.com',0,'11011011011',NULL),(33,'chushizhen4','楚士真4','chushizhen4','123@qq.com',0,'11011011011',NULL),(34,'yinyue1','殷悦','yinyue','798523593@qq.com',0,'17863137381','http://libkindle.com:8080/WebSell/icon/7f99336a260345d9bcab9f20a962e76a.jpg'),(35,'yinyue2','殷悦2','yinyue','123@qq.com',0,'11011011011',NULL),(36,'zhanghua','张华','zhanghua','123@qq.com',0,'17863137381','http://libkindle.com:8080/WebSell/icon/ceb29c4e273b43068731327367d2ffbd.jpg');
/*!40000 ALTER TABLE `User` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `UserLasttime`
--

DROP TABLE IF EXISTS `UserLasttime`;
/*!50001 DROP VIEW IF EXISTS `UserLasttime`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `UserLasttime` AS SELECT 
 1 AS `userid`,
 1 AS `lasttime`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `UserObject`
--

DROP TABLE IF EXISTS `UserObject`;
/*!50001 DROP VIEW IF EXISTS `UserObject`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `UserObject` AS SELECT 
 1 AS `userid`,
 1 AS `username`,
 1 AS `nickname`,
 1 AS `password`,
 1 AS `email`,
 1 AS `icon`,
 1 AS `level`,
 1 AS `telephone`,
 1 AS `sales`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `UserSales`
--

DROP TABLE IF EXISTS `UserSales`;
/*!50001 DROP VIEW IF EXISTS `UserSales`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `UserSales` AS SELECT 
 1 AS `userid`,
 1 AS `sales`*/;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `CartObject`
--

/*!50001 DROP VIEW IF EXISTS `CartObject`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`yinyue`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `CartObject` AS select `Product`.`icon` AS `icon`,`Cart`.`orderid` AS `orderid`,`Cart`.`userid` AS `userid`,`Cart`.`prodid` AS `prodid`,`Product`.`prodname` AS `prodname`,`Cart`.`number` AS `number`,`User`.`nickname` AS `nickname`,ifnull(`Cart`.`price`,`Product`.`price`) AS `price`,`Product`.`userid` AS `sellerid` from ((`Cart` left join `Product` on((`Cart`.`prodid` = `Product`.`prodid`))) left join `User` on((`Product`.`userid` = `User`.`userid`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `OrderObject`
--

/*!50001 DROP VIEW IF EXISTS `OrderObject`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`yinyue`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `OrderObject` AS select `Order`.`orderid` AS `orderid`,`Order`.`userid` AS `userid`,`Order`.`sellerid` AS `sellerid`,`Order`.`price` AS `price`,`User1`.`nickname` AS `usernickname`,`User2`.`nickname` AS `sellernickname`,`Order`.`time` AS `time`,`Order`.`state` AS `state`,`Order`.`message` AS `message`,`Order`.`address` AS `address`,`Order`.`telephone` AS `telephone`,`Order`.`comment` AS `comment` from ((`Order` left join `User` `User1` on((`User1`.`userid` = `Order`.`userid`))) left join `User` `User2` on((`User2`.`userid` = `Order`.`sellerid`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `ProdSales`
--

/*!50001 DROP VIEW IF EXISTS `ProdSales`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`yinyue`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `ProdSales` AS select `Cart`.`prodid` AS `prodid`,count(0) AS `sales` from (`Cart` join `Order` on((`Cart`.`orderid` = `Order`.`orderid`))) where (((to_days(now()) - to_days(`Order`.`time`)) <= 30) and (`Order`.`state` = 2)) group by `Cart`.`prodid` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `ProductObject`
--

/*!50001 DROP VIEW IF EXISTS `ProductObject`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`yinyue`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `ProductObject` AS select `Product`.`prodid` AS `prodid`,`Product`.`userid` AS `userid`,`Product`.`prodname` AS `prodname`,`Product`.`price` AS `price`,`Product`.`stock` AS `stock`,ifnull(`ProdSales`.`sales`,0) AS `sales`,`User`.`nickname` AS `nickname`,`Product`.`description` AS `description`,`Product`.`icon` AS `icon`,`Product`.`time` AS `time` from ((`Product` left join `ProdSales` on((`ProdSales`.`prodid` = `Product`.`prodid`))) left join `User` on((`Product`.`userid` = `User`.`userid`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `UserLasttime`
--

/*!50001 DROP VIEW IF EXISTS `UserLasttime`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`yinyue`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `UserLasttime` AS select `Product`.`userid` AS `userid`,max(`Product`.`time`) AS `lasttime` from `Product` group by `Product`.`userid` order by `Product`.`time` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `UserObject`
--

/*!50001 DROP VIEW IF EXISTS `UserObject`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`yinyue`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `UserObject` AS select `User`.`userid` AS `userid`,`User`.`username` AS `username`,`User`.`nickname` AS `nickname`,`User`.`password` AS `password`,`User`.`email` AS `email`,`User`.`icon` AS `icon`,`User`.`level` AS `level`,`User`.`telephone` AS `telephone`,ifnull(`UserSales`.`sales`,0) AS `sales` from (`User` left join `UserSales` on((`User`.`userid` = `UserSales`.`userid`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `UserSales`
--

/*!50001 DROP VIEW IF EXISTS `UserSales`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`yinyue`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `UserSales` AS select `Order`.`userid` AS `userid`,count(0) AS `sales` from `Order` where (((to_days(now()) - to_days(`Order`.`time`)) <= 30) and (`Order`.`state` = 2)) group by `Order`.`userid` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-05-19 17:44:30
