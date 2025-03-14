-- MySQL dump 10.13  Distrib 5.7.31, for Linux (x86_64)
--
-- Host: localhost    Database: ssmd9fdj
-- ------------------------------------------------------
-- Server version	5.7.31

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
-- Table structure for table `chat`
--

DROP TABLE IF EXISTS `chat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `chat` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `adminid` bigint(20) DEFAULT NULL COMMENT '管理员id',
  `ask` longtext COMMENT '提问',
  `reply` longtext COMMENT '回复',
  `isreply` int(11) DEFAULT NULL COMMENT '是否回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1611298894071 DEFAULT CHARSET=utf8 COMMENT='联系我们';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chat`
--

LOCK TABLES `chat` WRITE;
/*!40000 ALTER TABLE `chat` DISABLE KEYS */;
INSERT INTO `chat` VALUES (81,'2021-01-22 04:03:55',1,1,'提问1','回复1',1),(82,'2021-01-22 04:03:55',2,2,'提问2','回复2',2),(83,'2021-01-22 04:03:55',3,3,'提问3','回复3',3),(84,'2021-01-22 04:03:55',4,4,'提问4','回复4',4),(85,'2021-01-22 04:03:55',5,5,'提问5','回复5',5),(86,'2021-01-22 04:03:55',6,6,'提问6','回复6',6),(1611298642636,'2021-01-22 06:57:22',1611298409790,NULL,'1111111',NULL,0),(1611298894070,'2021-01-22 07:01:33',1611298409790,1,NULL,'22222',NULL);
/*!40000 ALTER TABLE `chat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `config`
--

DROP TABLE IF EXISTS `config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `config`
--

LOCK TABLES `config` WRITE;
/*!40000 ALTER TABLE `config` DISABLE KEYS */;
INSERT INTO `config` VALUES (1,'picture1','http://localhost:8080/ssmd9fdj/upload/picture1.jpg'),(2,'picture2','http://localhost:8080/ssmd9fdj/upload/picture2.jpg'),(3,'picture3','http://localhost:8080/ssmd9fdj/upload/picture3.jpg'),(6,'homepage',NULL);
/*!40000 ALTER TABLE `config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gangweigongzuo`
--

DROP TABLE IF EXISTS `gangweigongzuo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gangweigongzuo` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `gangweimingcheng` varchar(200) NOT NULL COMMENT '岗位名称',
  `gongzuohuanjing` varchar(200) DEFAULT NULL COMMENT '工作环境',
  `gangweiyaoqiu` varchar(200) NOT NULL COMMENT '岗位要求',
  `zhaopinrenshu` int(11) DEFAULT NULL COMMENT '招聘人数',
  `gangweixinchou` varchar(200) NOT NULL COMMENT '岗位薪酬',
  `gongzuoshijian` varchar(200) NOT NULL COMMENT '工作时间',
  `gongzuodidian` varchar(200) NOT NULL COMMENT '工作地点',
  `laoshizhanghao` varchar(200) DEFAULT NULL COMMENT '老师账号',
  `laoshixingming` varchar(200) DEFAULT NULL COMMENT '老师姓名',
  `laoshishouji` varchar(200) DEFAULT NULL COMMENT '老师手机',
  `gangweijieshao` longtext COMMENT '岗位介绍',
  `fabushijian` date DEFAULT NULL COMMENT '发布时间',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  `clicktime` datetime DEFAULT NULL COMMENT '最近点击时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1611298505843 DEFAULT CHARSET=utf8 COMMENT='岗位工作';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gangweigongzuo`
--

LOCK TABLES `gangweigongzuo` WRITE;
/*!40000 ALTER TABLE `gangweigongzuo` DISABLE KEYS */;
INSERT INTO `gangweigongzuo` VALUES (51,'2021-01-22 04:03:55','岗位名称1','http://localhost:8080/ssmd9fdj/upload/gangweigongzuo_gongzuohuanjing1.jpg','岗位要求1',1,'岗位薪酬1','工作时间1','工作地点1','老师账号1','老师姓名1','老师手机1','岗位介绍1','2021-01-22','是','','2021-01-22 14:45:43'),(52,'2021-01-22 04:03:55','岗位名称2','http://localhost:8080/ssmd9fdj/upload/gangweigongzuo_gongzuohuanjing2.jpg','岗位要求2',2,'岗位薪酬2','工作时间2','工作地点2','老师账号2','老师姓名2','老师手机2','岗位介绍2','2021-01-22','是','','2021-01-22 14:53:07'),(53,'2021-01-22 04:03:55','岗位名称3','http://localhost:8080/ssmd9fdj/upload/gangweigongzuo_gongzuohuanjing3.jpg','岗位要求3',3,'岗位薪酬3','工作时间3','工作地点3','老师账号3','老师姓名3','老师手机3','岗位介绍3','2021-01-22','是','','2021-01-22 14:53:02'),(54,'2021-01-22 04:03:55','岗位名称4','http://localhost:8080/ssmd9fdj/upload/gangweigongzuo_gongzuohuanjing4.jpg','岗位要求4',4,'岗位薪酬4','工作时间4','工作地点4','老师账号4','老师姓名4','老师手机4','岗位介绍4','2021-01-22','是','','2021-01-22 12:03:55'),(55,'2021-01-22 04:03:55','岗位名称5','http://localhost:8080/ssmd9fdj/upload/gangweigongzuo_gongzuohuanjing5.jpg','岗位要求5',5,'岗位薪酬5','工作时间5','工作地点5','老师账号5','老师姓名5','老师手机5','岗位介绍5','2021-01-22','是','','2021-01-22 12:03:55'),(56,'2021-01-22 04:03:55','岗位名称6','http://localhost:8080/ssmd9fdj/upload/gangweigongzuo_gongzuohuanjing6.jpg','岗位要求6',6,'岗位薪酬6','工作时间6','工作地点6','老师账号6','老师姓名6','老师手机6','岗位介绍6','2021-01-22','是','','2021-01-22 12:03:55'),(1611298505842,'2021-01-22 06:55:05','xxxx岗位','http://localhost:8080/ssmd9fdj/upload/1611298500864.jpg','1',11,'1000','xxx','xx','1','xxx老师','13811111111','<h1>xxxxxxxxxxxxxxxxxxx</h1><p>xxxxxxxxxxxxxxxxxxxxxxxxx</p>','2021-01-22','是','好的','2021-01-22 14:57:16');
/*!40000 ALTER TABLE `gangweigongzuo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gangweishenqing`
--

DROP TABLE IF EXISTS `gangweishenqing`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gangweishenqing` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shenqingbianhao` varchar(200) DEFAULT NULL COMMENT '申请编号',
  `gangweimingcheng` varchar(200) DEFAULT NULL COMMENT '岗位名称',
  `gangweiyaoqiu` varchar(200) DEFAULT NULL COMMENT '岗位要求',
  `gongzuodidian` varchar(200) DEFAULT NULL COMMENT '工作地点',
  `laoshizhanghao` varchar(200) DEFAULT NULL COMMENT '老师账号',
  `laoshixingming` varchar(200) DEFAULT NULL COMMENT '老师姓名',
  `xuehao` varchar(200) DEFAULT NULL COMMENT '学号',
  `xueshengxingming` varchar(200) DEFAULT NULL COMMENT '学生姓名',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `shenqingshijian` date DEFAULT NULL COMMENT '申请时间',
  `gerenjieshao` longtext COMMENT '个人介绍',
  PRIMARY KEY (`id`),
  UNIQUE KEY `shenqingbianhao` (`shenqingbianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=1611298634172 DEFAULT CHARSET=utf8 COMMENT='岗位申请';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gangweishenqing`
--

LOCK TABLES `gangweishenqing` WRITE;
/*!40000 ALTER TABLE `gangweishenqing` DISABLE KEYS */;
INSERT INTO `gangweishenqing` VALUES (61,'2021-01-22 04:03:55','申请编号1','岗位名称1','岗位要求1','工作地点1','老师账号1','老师姓名1','学号1','学生姓名1','手机1','2021-01-22','个人介绍1'),(62,'2021-01-22 04:03:55','申请编号2','岗位名称2','岗位要求2','工作地点2','老师账号2','老师姓名2','学号2','学生姓名2','手机2','2021-01-22','个人介绍2'),(63,'2021-01-22 04:03:55','申请编号3','岗位名称3','岗位要求3','工作地点3','老师账号3','老师姓名3','学号3','学生姓名3','手机3','2021-01-22','个人介绍3'),(64,'2021-01-22 04:03:55','申请编号4','岗位名称4','岗位要求4','工作地点4','老师账号4','老师姓名4','学号4','学生姓名4','手机4','2021-01-22','个人介绍4'),(65,'2021-01-22 04:03:55','申请编号5','岗位名称5','岗位要求5','工作地点5','老师账号5','老师姓名5','学号5','学生姓名5','手机5','2021-01-22','个人介绍5'),(66,'2021-01-22 04:03:55','申请编号6','岗位名称6','岗位要求6','工作地点6','老师账号6','老师姓名6','学号6','学生姓名6','手机6','2021-01-22','个人介绍6'),(1611298634171,'2021-01-22 06:57:13','20211221457616488869','xxxx岗位','1','xx','1','xxx老师','1','xxx学生','13811111111','2021-01-22','<p>请输入个人介绍xxxx</p>');
/*!40000 ALTER TABLE `gangweishenqing` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `laoshi`
--

DROP TABLE IF EXISTS `laoshi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `laoshi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `laoshizhanghao` varchar(200) NOT NULL COMMENT '老师账号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `touxiang` varchar(200) DEFAULT NULL COMMENT '头像',
  `laoshixingming` varchar(200) DEFAULT NULL COMMENT '老师姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `xueyuanbumen` varchar(200) DEFAULT NULL COMMENT '学院部门',
  `laoshishouji` varchar(200) DEFAULT NULL COMMENT '老师手机',
  PRIMARY KEY (`id`),
  UNIQUE KEY `laoshizhanghao` (`laoshizhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=1611298427684 DEFAULT CHARSET=utf8 COMMENT='老师';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `laoshi`
--

LOCK TABLES `laoshi` WRITE;
/*!40000 ALTER TABLE `laoshi` DISABLE KEYS */;
INSERT INTO `laoshi` VALUES (21,'2021-01-22 04:03:55','老师1','123456','http://localhost:8080/ssmd9fdj/upload/laoshi_touxiang1.jpg','老师姓名1','男','学院部门1','13823888881'),(22,'2021-01-22 04:03:55','老师2','123456','http://localhost:8080/ssmd9fdj/upload/laoshi_touxiang2.jpg','老师姓名2','男','学院部门2','13823888882'),(23,'2021-01-22 04:03:55','老师3','123456','http://localhost:8080/ssmd9fdj/upload/laoshi_touxiang3.jpg','老师姓名3','男','学院部门3','13823888883'),(24,'2021-01-22 04:03:55','老师4','123456','http://localhost:8080/ssmd9fdj/upload/laoshi_touxiang4.jpg','老师姓名4','男','学院部门4','13823888884'),(25,'2021-01-22 04:03:55','老师5','123456','http://localhost:8080/ssmd9fdj/upload/laoshi_touxiang5.jpg','老师姓名5','男','学院部门5','13823888885'),(26,'2021-01-22 04:03:55','老师6','123456','http://localhost:8080/ssmd9fdj/upload/laoshi_touxiang6.jpg','老师姓名6','男','学院部门6','13823888886'),(1611298427683,'2021-01-22 06:53:47','1','1','http://localhost:8080/ssmd9fdj/upload/1611298458412.png','xxx老师','男','xxx部门','13811111111');
/*!40000 ALTER TABLE `laoshi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `laoshikaoqin`
--

DROP TABLE IF EXISTS `laoshikaoqin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `laoshikaoqin` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `kaoqinbianhao` varchar(200) DEFAULT NULL COMMENT '考勤编号',
  `kaoqinshijian` date DEFAULT NULL COMMENT '考勤时间',
  `laoshizhanghao` varchar(200) DEFAULT NULL COMMENT '老师账号',
  `laoshixingming` varchar(200) DEFAULT NULL COMMENT '老师姓名',
  `shifouchidao` varchar(200) DEFAULT NULL COMMENT '是否迟到',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`),
  UNIQUE KEY `kaoqinbianhao` (`kaoqinbianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=1611298554611 DEFAULT CHARSET=utf8 COMMENT='老师考勤';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `laoshikaoqin`
--

LOCK TABLES `laoshikaoqin` WRITE;
/*!40000 ALTER TABLE `laoshikaoqin` DISABLE KEYS */;
INSERT INTO `laoshikaoqin` VALUES (41,'2021-01-22 04:03:55','考勤编号1','2021-01-22','老师账号1','老师姓名1','否','备注1'),(42,'2021-01-22 04:03:55','考勤编号2','2021-01-22','老师账号2','老师姓名2','否','备注2'),(43,'2021-01-22 04:03:55','考勤编号3','2021-01-22','老师账号3','老师姓名3','否','备注3'),(44,'2021-01-22 04:03:55','考勤编号4','2021-01-22','老师账号4','老师姓名4','否','备注4'),(45,'2021-01-22 04:03:55','考勤编号5','2021-01-22','老师账号5','老师姓名5','否','备注5'),(46,'2021-01-22 04:03:55','考勤编号6','2021-01-22','老师账号6','老师姓名6','否','备注6'),(1611298554610,'2021-01-22 06:55:54','1611298548691','2021-01-22','1','xxx老师','否','无');
/*!40000 ALTER TABLE `laoshikaoqin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `news`
--

DROP TABLE IF EXISTS `news`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `news` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) NOT NULL COMMENT '标题',
  `introduction` longtext COMMENT '简介',
  `picture` varchar(200) NOT NULL COMMENT '图片',
  `content` longtext NOT NULL COMMENT '内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=97 DEFAULT CHARSET=utf8 COMMENT='公告资讯';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `news`
--

LOCK TABLES `news` WRITE;
/*!40000 ALTER TABLE `news` DISABLE KEYS */;
INSERT INTO `news` VALUES (91,'2021-01-22 04:03:55','标题1','简介1','http://localhost:8080/ssmd9fdj/upload/news_picture1.jpg','内容1'),(92,'2021-01-22 04:03:55','标题2','简介2','http://localhost:8080/ssmd9fdj/upload/news_picture2.jpg','内容2'),(93,'2021-01-22 04:03:55','标题3','简介3','http://localhost:8080/ssmd9fdj/upload/news_picture3.jpg','内容3'),(94,'2021-01-22 04:03:55','标题4','简介4','http://localhost:8080/ssmd9fdj/upload/news_picture4.jpg','内容4'),(95,'2021-01-22 04:03:55','标题5','简介5','http://localhost:8080/ssmd9fdj/upload/news_picture5.jpg','内容5'),(96,'2021-01-22 04:03:55','标题6','简介6','http://localhost:8080/ssmd9fdj/upload/news_picture6.jpg','内容6');
/*!40000 ALTER TABLE `news` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shenqingqingkuang`
--

DROP TABLE IF EXISTS `shenqingqingkuang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shenqingqingkuang` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shenqingbianhao` varchar(200) DEFAULT NULL COMMENT '申请编号',
  `gangweimingcheng` varchar(200) DEFAULT NULL COMMENT '岗位名称',
  `laoshizhanghao` varchar(200) DEFAULT NULL COMMENT '老师账号',
  `laoshixingming` varchar(200) DEFAULT NULL COMMENT '老师姓名',
  `xuehao` varchar(200) DEFAULT NULL COMMENT '学号',
  `xueshengxingming` varchar(200) DEFAULT NULL COMMENT '学生姓名',
  `zhuangtai` varchar(200) DEFAULT NULL COMMENT '状态',
  `shenpishijian` date DEFAULT NULL COMMENT '审批时间',
  `huifuneirong` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1611298681515 DEFAULT CHARSET=utf8 COMMENT='申请情况';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shenqingqingkuang`
--

LOCK TABLES `shenqingqingkuang` WRITE;
/*!40000 ALTER TABLE `shenqingqingkuang` DISABLE KEYS */;
INSERT INTO `shenqingqingkuang` VALUES (71,'2021-01-22 04:03:55','申请编号1','岗位名称1','老师账号1','老师姓名1','学号1','学生姓名1','未通过','2021-01-22','回复内容1'),(72,'2021-01-22 04:03:55','申请编号2','岗位名称2','老师账号2','老师姓名2','学号2','学生姓名2','未通过','2021-01-22','回复内容2'),(73,'2021-01-22 04:03:55','申请编号3','岗位名称3','老师账号3','老师姓名3','学号3','学生姓名3','未通过','2021-01-22','回复内容3'),(74,'2021-01-22 04:03:55','申请编号4','岗位名称4','老师账号4','老师姓名4','学号4','学生姓名4','未通过','2021-01-22','回复内容4'),(75,'2021-01-22 04:03:55','申请编号5','岗位名称5','老师账号5','老师姓名5','学号5','学生姓名5','未通过','2021-01-22','回复内容5'),(76,'2021-01-22 04:03:55','申请编号6','岗位名称6','老师账号6','老师姓名6','学号6','学生姓名6','未通过','2021-01-22','回复内容6'),(1611298681514,'2021-01-22 06:58:01','20211221457616488869','xxxx岗位','1','xxx老师','1','xxx学生','未通过','2021-01-22','xxx');
/*!40000 ALTER TABLE `shenqingqingkuang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `token`
--

DROP TABLE IF EXISTS `token`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='token表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `token`
--

LOCK TABLES `token` WRITE;
/*!40000 ALTER TABLE `token` DISABLE KEYS */;
INSERT INTO `token` VALUES (1,1,'abo','users','管理员','ggd9lcz4uz3pbfgd7hht3wxsf5bgdpqz','2021-01-22 06:46:13','2021-01-22 09:20:04'),(2,1611298427683,'1','laoshi','老师','njocfg3nbwdfl7cna6zotiymvk0bclxp','2021-01-22 06:53:52','2021-01-22 07:57:42'),(3,1611298409790,'1','xuesheng','学生','53hfmka54ofufki4umu77ohud6o65tl3','2021-01-22 06:56:29','2021-01-22 07:58:17');
/*!40000 ALTER TABLE `token` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'abo','abo','管理员','2021-01-22 04:03:55');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xuesheng`
--

DROP TABLE IF EXISTS `xuesheng`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xuesheng` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `xuehao` varchar(200) NOT NULL COMMENT '学号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xueshengxingming` varchar(200) NOT NULL COMMENT '学生姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `touxiang` varchar(200) DEFAULT NULL COMMENT '头像',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `xueyuan` varchar(200) DEFAULT NULL COMMENT '学院',
  `zhuanye` varchar(200) DEFAULT NULL COMMENT '专业',
  `nianji` varchar(200) DEFAULT NULL COMMENT '年级',
  PRIMARY KEY (`id`),
  UNIQUE KEY `xuehao` (`xuehao`)
) ENGINE=InnoDB AUTO_INCREMENT=1611298409791 DEFAULT CHARSET=utf8 COMMENT='学生';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xuesheng`
--

LOCK TABLES `xuesheng` WRITE;
/*!40000 ALTER TABLE `xuesheng` DISABLE KEYS */;
INSERT INTO `xuesheng` VALUES (11,'2021-01-22 04:03:55','学生1','123456','学生姓名1','男','http://localhost:8080/ssmd9fdj/upload/xuesheng_touxiang1.jpg','13823888881','学院1','专业1','年级1'),(12,'2021-01-22 04:03:55','学生2','123456','学生姓名2','男','http://localhost:8080/ssmd9fdj/upload/xuesheng_touxiang2.jpg','13823888882','学院2','专业2','年级2'),(13,'2021-01-22 04:03:55','学生3','123456','学生姓名3','男','http://localhost:8080/ssmd9fdj/upload/xuesheng_touxiang3.jpg','13823888883','学院3','专业3','年级3'),(14,'2021-01-22 04:03:55','学生4','123456','学生姓名4','男','http://localhost:8080/ssmd9fdj/upload/xuesheng_touxiang4.jpg','13823888884','学院4','专业4','年级4'),(15,'2021-01-22 04:03:55','学生5','123456','学生姓名5','男','http://localhost:8080/ssmd9fdj/upload/xuesheng_touxiang5.jpg','13823888885','学院5','专业5','年级5'),(16,'2021-01-22 04:03:55','学生6','123456','学生姓名6','男','http://localhost:8080/ssmd9fdj/upload/xuesheng_touxiang6.jpg','13823888886','学院6','专业6','年级6'),(1611298409790,'2021-01-22 06:53:29','1','1','xxx学生','男','http://localhost:8080/ssmd9fdj/upload/1611298609362.jpg','13811111111','xxx','xx','xx');
/*!40000 ALTER TABLE `xuesheng` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xueshengkaoqin`
--

DROP TABLE IF EXISTS `xueshengkaoqin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xueshengkaoqin` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `kaoqinbianhao` varchar(200) DEFAULT NULL COMMENT '考勤编号',
  `kaoqinshijian` date DEFAULT NULL COMMENT '考勤时间',
  `xuehao` varchar(200) DEFAULT NULL COMMENT '学号',
  `xueshengxingming` varchar(200) DEFAULT NULL COMMENT '学生姓名',
  `shifouchidao` varchar(200) DEFAULT NULL COMMENT '是否迟到',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`),
  UNIQUE KEY `kaoqinbianhao` (`kaoqinbianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8 COMMENT='学生考勤';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xueshengkaoqin`
--

LOCK TABLES `xueshengkaoqin` WRITE;
/*!40000 ALTER TABLE `xueshengkaoqin` DISABLE KEYS */;
INSERT INTO `xueshengkaoqin` VALUES (31,'2021-01-22 04:03:55','考勤编号1','2021-01-22','学号1','学生姓名1','否','备注1'),(32,'2021-01-22 04:03:55','考勤编号2','2021-01-22','学号2','学生姓名2','否','备注2'),(33,'2021-01-22 04:03:55','考勤编号3','2021-01-22','学号3','学生姓名3','否','备注3'),(34,'2021-01-22 04:03:55','考勤编号4','2021-01-22','学号4','学生姓名4','否','备注4'),(35,'2021-01-22 04:03:55','考勤编号5','2021-01-22','学号5','学生姓名5','否','备注5'),(36,'2021-01-22 04:03:55','考勤编号6','2021-01-22','学号6','学生姓名6','否','备注6');
/*!40000 ALTER TABLE `xueshengkaoqin` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-01-22 16:36:18
