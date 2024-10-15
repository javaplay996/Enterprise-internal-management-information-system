/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - qiyeneixinxihauxitong
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`qiyeneixinxihauxitong` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `qiyeneixinxihauxitong`;

/*Table structure for table `bumen` */

DROP TABLE IF EXISTS `bumen`;

CREATE TABLE `bumen` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `bumen_uuid_number` varchar(200) DEFAULT NULL COMMENT '部门编号',
  `bumen_name` varchar(200) DEFAULT NULL COMMENT '部门名称  Search111 ',
  `bumen_address` varchar(200) DEFAULT NULL COMMENT '部门位置',
  `bumen_content` longtext COMMENT '部门备注 ',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '录入时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 listShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='部门';

/*Data for the table `bumen` */

insert  into `bumen`(`id`,`bumen_uuid_number`,`bumen_name`,`bumen_address`,`bumen_content`,`insert_time`,`create_time`) values (1,'1684132711769','部门名称1','部门位置1','部门备注1','2023-05-15 14:38:31','2023-05-15 14:38:31'),(2,'1684132711790','部门名称2','部门位置2','部门备注2','2023-05-15 14:38:31','2023-05-15 14:38:31'),(3,'1684132711761','部门名称3','部门位置3','部门备注3','2023-05-15 14:38:31','2023-05-15 14:38:31'),(4,'1684132711808','部门名称4','部门位置4','部门备注4','2023-05-15 14:38:31','2023-05-15 14:38:31'),(5,'1684132711765','部门名称5','部门位置5','部门备注5','2023-05-15 14:38:31','2023-05-15 14:38:31'),(6,'1684132711814','部门名称6','部门位置6','部门备注6','2023-05-15 14:38:31','2023-05-15 14:38:31'),(7,'1684132711748','部门名称7','部门位置7','部门备注7','2023-05-15 14:38:31','2023-05-15 14:38:31'),(8,'1684132711743','部门名称8','部门位置8','部门备注8','2023-05-15 14:38:31','2023-05-15 14:38:31'),(9,'1684132711810','部门名称9','部门位置9','部门备注9','2023-05-15 14:38:31','2023-05-15 14:38:31'),(10,'1684132711745','部门名称10','部门位置10','部门备注10','2023-05-15 14:38:31','2023-05-15 14:38:31'),(11,'1684132711743','部门名称11','部门位置11','部门备注11','2023-05-15 14:38:31','2023-05-15 14:38:31'),(12,'1684132711754','部门名称12','部门位置12','部门备注12','2023-05-15 14:38:31','2023-05-15 14:38:31'),(13,'1684132711785','部门名称13','部门位置13','部门备注13','2023-05-15 14:38:31','2023-05-15 14:38:31'),(14,'1684132711786','部门名称14','部门位置14','部门备注14','2023-05-15 14:38:31','2023-05-15 14:38:31');

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'轮播图','/upload/1684135433217.jpg'),(2,'轮播图2','/upload/1684135485293.jpg'),(3,'轮播图3','/upload/1684135493312.jpg');

/*Table structure for table `dictionary` */

DROP TABLE IF EXISTS `dictionary`;

CREATE TABLE `dictionary` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dic_code` varchar(200) DEFAULT NULL COMMENT '字段',
  `dic_name` varchar(200) DEFAULT NULL COMMENT '字段名',
  `code_index` int(11) DEFAULT NULL COMMENT '编码',
  `index_name` varchar(200) DEFAULT NULL COMMENT '编码名字  Search111 ',
  `super_id` int(11) DEFAULT NULL COMMENT '父字段id',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8 COMMENT='字典';

/*Data for the table `dictionary` */

insert  into `dictionary`(`id`,`dic_code`,`dic_name`,`code_index`,`index_name`,`super_id`,`beizhu`,`create_time`) values (1,'sex_types','性别类型',1,'男',NULL,NULL,'2023-05-15 14:37:32'),(2,'sex_types','性别类型',2,'女',NULL,NULL,'2023-05-15 14:37:32'),(3,'gonggao_types','公告类型',1,'公告类型1',NULL,NULL,'2023-05-15 14:37:32'),(4,'gonggao_types','公告类型',2,'公告类型2',NULL,NULL,'2023-05-15 14:37:32'),(5,'qingjia_types','请假类型',1,'生病',NULL,NULL,'2023-05-15 14:37:32'),(6,'qingjia_types','请假类型',2,'有事',NULL,NULL,'2023-05-15 14:37:32'),(7,'qingjia_yesno_types','申请状态',1,'待审核',NULL,NULL,'2023-05-15 14:37:32'),(8,'qingjia_yesno_types','申请状态',2,'同意',NULL,NULL,'2023-05-15 14:37:32'),(9,'qingjia_yesno_types','申请状态',3,'拒绝',NULL,NULL,'2023-05-15 14:37:32'),(10,'qingjia_yesno_types','申请状态',4,'销假',NULL,NULL,'2023-05-15 14:37:32'),(11,'xinxi_types','健康状况',1,'健康',NULL,NULL,'2023-05-15 14:37:32'),(12,'xinxi_types','健康状况',2,'亚健康',NULL,NULL,'2023-05-15 14:37:32'),(13,'xinxi_types','健康状况',2,'不健康',NULL,NULL,'2023-05-15 14:37:32'),(14,'renwu_types','任务类型',1,'任务类型1',NULL,NULL,'2023-05-15 14:37:32'),(15,'renwu_types','任务类型',2,'任务类型2',NULL,NULL,'2023-05-15 14:37:32'),(16,'renwu_types','任务类型',3,'任务类型3',NULL,NULL,'2023-05-15 14:37:32'),(17,'renwu_types','任务类型',4,'任务类型4',NULL,NULL,'2023-05-15 14:37:32'),(18,'fenpei_types','任务进度',1,'待完成任务',NULL,NULL,'2023-05-15 14:37:32'),(19,'fenpei_types','任务进度',2,'进行中任务',NULL,NULL,'2023-05-15 14:37:32'),(20,'fenpei_types','任务进度',3,'已完成任务',NULL,NULL,'2023-05-15 14:37:32'),(21,'ziliao_types','资料类型',1,'资料类型1',NULL,NULL,'2023-05-15 14:37:32'),(22,'ziliao_types','资料类型',2,'资料类型2',NULL,NULL,'2023-05-15 14:37:32'),(23,'ziliao_types','资料类型',3,'资料类型3',NULL,NULL,'2023-05-15 14:37:32'),(24,'ziliao_types','资料类型',4,'资料类型4',NULL,NULL,'2023-05-15 14:37:32');

/*Table structure for table `fenpei` */

DROP TABLE IF EXISTS `fenpei`;

CREATE TABLE `fenpei` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `renwu_id` int(11) DEFAULT NULL COMMENT '任务',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `fenpei_time` timestamp NULL DEFAULT NULL COMMENT '分配时间',
  `fenpei_types` int(11) DEFAULT NULL COMMENT '任务进度 Search111',
  `fenpei_content` longtext COMMENT '任务分配介绍 ',
  `fenpei_delete` int(11) DEFAULT NULL COMMENT '逻辑删除',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '录入时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show3 listShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 COMMENT='任务分配';

/*Data for the table `fenpei` */

insert  into `fenpei`(`id`,`renwu_id`,`yonghu_id`,`fenpei_time`,`fenpei_types`,`fenpei_content`,`fenpei_delete`,`insert_time`,`create_time`) values (1,1,1,'2023-05-15 14:38:31',3,'任务分配介绍1',1,'2023-05-15 14:38:31','2023-05-15 14:38:31'),(2,2,2,'2023-05-15 14:38:31',1,'任务分配介绍2',1,'2023-05-15 14:38:31','2023-05-15 14:38:31'),(3,3,1,'2023-05-15 14:38:31',1,'任务分配介绍3',1,'2023-05-15 14:38:31','2023-05-15 14:38:31'),(4,4,2,'2023-05-15 14:38:31',3,'任务分配介绍4',1,'2023-05-15 14:38:31','2023-05-15 14:38:31'),(5,5,2,'2023-05-15 14:38:31',1,'任务分配介绍5',1,'2023-05-15 14:38:31','2023-05-15 14:38:31'),(6,6,2,'2023-05-15 14:38:31',1,'任务分配介绍6',1,'2023-05-15 14:38:31','2023-05-15 14:38:31'),(7,7,2,'2023-05-15 14:38:31',1,'任务分配介绍7',1,'2023-05-15 14:38:31','2023-05-15 14:38:31'),(8,8,1,'2023-05-15 14:38:31',3,'任务分配介绍8',1,'2023-05-15 14:38:31','2023-05-15 14:38:31'),(9,9,1,'2023-05-15 14:38:31',3,'任务分配介绍9',1,'2023-05-15 14:38:31','2023-05-15 14:38:31'),(10,10,2,'2023-05-15 14:38:31',3,'任务分配介绍10',1,'2023-05-15 14:38:31','2023-05-15 14:38:31'),(11,11,3,'2023-05-15 14:38:31',2,'任务分配介绍11',1,'2023-05-15 14:38:31','2023-05-15 14:38:31'),(12,12,3,'2023-05-15 14:38:31',1,'任务分配介绍12',1,'2023-05-15 14:38:31','2023-05-15 14:38:31'),(13,13,3,'2023-05-15 14:38:31',1,'任务分配介绍13',1,'2023-05-15 14:38:31','2023-05-15 14:38:31'),(14,14,3,'2023-05-15 14:38:31',2,'任务分配介绍14',1,'2023-05-15 14:38:31','2023-05-15 14:38:31'),(15,NULL,1,'2023-05-15 16:05:20',1,'<p>阿萨德</p>',2,'2023-05-15 16:05:23','2023-05-15 16:05:23'),(16,NULL,1,'2023-05-15 16:05:59',1,'<p>阿萨德</p>',2,'2023-05-15 16:06:02','2023-05-15 16:06:02'),(17,15,1,'2023-05-15 16:09:19',3,'<p>阿萨德</p>',1,'2023-05-15 16:09:21','2023-05-15 16:09:21');

/*Table structure for table `gonggao` */

DROP TABLE IF EXISTS `gonggao`;

CREATE TABLE `gonggao` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `gonggao_name` varchar(200) DEFAULT NULL COMMENT '公告名称 Search111  ',
  `gonggao_photo` varchar(200) DEFAULT NULL COMMENT '公告图片 ',
  `gonggao_types` int(11) NOT NULL COMMENT '公告类型 Search111 ',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '发布时间',
  `gonggao_content` longtext COMMENT '公告详情 ',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 nameShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='公告资讯';

/*Data for the table `gonggao` */

insert  into `gonggao`(`id`,`gonggao_name`,`gonggao_photo`,`gonggao_types`,`insert_time`,`gonggao_content`,`create_time`) values (1,'公告名称1','upload/gonggao1.jpg',1,'2023-05-15 14:38:31','公告详情1','2023-05-15 14:38:31'),(2,'公告名称2','upload/gonggao2.jpg',1,'2023-05-15 14:38:31','公告详情2','2023-05-15 14:38:31'),(3,'公告名称3','upload/gonggao3.jpg',2,'2023-05-15 14:38:31','公告详情3','2023-05-15 14:38:31'),(4,'公告名称4','upload/gonggao4.jpg',1,'2023-05-15 14:38:31','公告详情4','2023-05-15 14:38:31'),(5,'公告名称5','upload/gonggao5.jpg',2,'2023-05-15 14:38:31','公告详情5','2023-05-15 14:38:31'),(6,'公告名称6','upload/gonggao6.jpg',1,'2023-05-15 14:38:31','公告详情6','2023-05-15 14:38:31'),(7,'公告名称7','upload/gonggao7.jpg',1,'2023-05-15 14:38:31','公告详情7','2023-05-15 14:38:31'),(8,'公告名称8','upload/gonggao8.jpg',2,'2023-05-15 14:38:31','公告详情8','2023-05-15 14:38:31'),(9,'公告名称9','upload/gonggao9.jpg',1,'2023-05-15 14:38:31','公告详情9','2023-05-15 14:38:31'),(10,'公告名称10','upload/gonggao10.jpg',1,'2023-05-15 14:38:31','公告详情10','2023-05-15 14:38:31'),(11,'公告名称11','upload/gonggao11.jpg',2,'2023-05-15 14:38:31','公告详情11','2023-05-15 14:38:31'),(12,'公告名称12','upload/gonggao12.jpg',1,'2023-05-15 14:38:31','公告详情12','2023-05-15 14:38:31'),(13,'公告名称13','upload/gonggao13.jpg',2,'2023-05-15 14:38:31','公告详情13','2023-05-15 14:38:31'),(14,'公告名称14','upload/gonggao14.jpg',1,'2023-05-15 14:38:31','公告详情14','2023-05-15 14:38:31');

/*Table structure for table `jingli` */

DROP TABLE IF EXISTS `jingli`;

CREATE TABLE `jingli` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `jingli_uuid_number` varchar(200) DEFAULT NULL COMMENT '部门经理编号 Search111 ',
  `jingli_name` varchar(200) DEFAULT NULL COMMENT '部门经理姓名 Search111 ',
  `jingli_phone` varchar(200) DEFAULT NULL COMMENT '部门经理手机号',
  `jingli_id_number` varchar(200) DEFAULT NULL COMMENT '部门经理身份证号',
  `jingli_photo` varchar(200) DEFAULT NULL COMMENT '部门经理头像',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别',
  `jingli_email` varchar(200) DEFAULT NULL COMMENT '部门经理邮箱',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='部门经理';

/*Data for the table `jingli` */

insert  into `jingli`(`id`,`username`,`password`,`jingli_uuid_number`,`jingli_name`,`jingli_phone`,`jingli_id_number`,`jingli_photo`,`sex_types`,`jingli_email`,`create_time`) values (1,'a1','123456','1684132711777','部门经理姓名1','17703786901','410224199010102001','upload/jingli1.jpg',2,'1@qq.com','2023-05-15 14:38:31'),(2,'a2','123456','1684132711790','部门经理姓名2','17703786902','410224199010102002','upload/jingli2.jpg',2,'2@qq.com','2023-05-15 14:38:31'),(3,'a3','123456','1684132711833','部门经理姓名3','17703786903','410224199010102003','upload/jingli3.jpg',1,'3@qq.com','2023-05-15 14:38:31');

/*Table structure for table `qingjia` */

DROP TABLE IF EXISTS `qingjia`;

CREATE TABLE `qingjia` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `jingli_id` int(11) DEFAULT NULL COMMENT '部门主管',
  `qingjia_text` longtext COMMENT '请假缘由',
  `qingjia_types` int(11) DEFAULT NULL COMMENT '请假类型 Search111',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '申请时间',
  `qingjia_time` timestamp NULL DEFAULT NULL COMMENT '请假时间',
  `qingjia_number` int(200) DEFAULT NULL COMMENT '请假天数',
  `qingjia_yesno_types` int(11) DEFAULT NULL COMMENT '申请状态 Search111 ',
  `qingjia_yesno_text` longtext COMMENT '处理意见',
  `qingjia_shenhe_time` timestamp NULL DEFAULT NULL COMMENT '审核时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 listShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COMMENT='员工请假';

/*Data for the table `qingjia` */

insert  into `qingjia`(`id`,`yonghu_id`,`jingli_id`,`qingjia_text`,`qingjia_types`,`insert_time`,`qingjia_time`,`qingjia_number`,`qingjia_yesno_types`,`qingjia_yesno_text`,`qingjia_shenhe_time`,`create_time`) values (1,2,2,'请假缘由1',1,'2023-05-15 14:38:31','2023-05-15 14:38:31',360,1,NULL,NULL,'2023-05-15 14:38:31'),(2,2,1,'请假缘由2',1,'2023-05-15 14:38:31','2023-05-15 14:38:31',236,1,NULL,NULL,'2023-05-15 14:38:31'),(3,1,1,'请假缘由3',1,'2023-05-15 14:38:31','2023-05-15 14:38:31',283,1,NULL,NULL,'2023-05-15 14:38:31'),(4,2,3,'请假缘由4',2,'2023-05-15 14:38:31','2023-05-15 14:38:31',438,1,NULL,NULL,'2023-05-15 14:38:31'),(5,1,2,'请假缘由5',1,'2023-05-15 14:38:31','2023-05-15 14:38:31',362,1,NULL,NULL,'2023-05-15 14:38:31'),(6,1,3,'请假缘由6',1,'2023-05-15 14:38:31','2023-05-15 14:38:31',13,1,NULL,NULL,'2023-05-15 14:38:31'),(7,3,3,'请假缘由7',1,'2023-05-15 14:38:31','2023-05-15 14:38:31',343,1,NULL,NULL,'2023-05-15 14:38:31'),(8,3,2,'请假缘由8',2,'2023-05-15 14:38:31','2023-05-15 14:38:31',86,1,NULL,NULL,'2023-05-15 14:38:31'),(9,2,3,'请假缘由9',1,'2023-05-15 14:38:31','2023-05-15 14:38:31',135,1,NULL,NULL,'2023-05-15 14:38:31'),(10,3,1,'请假缘由10',2,'2023-05-15 14:38:31','2023-05-15 14:38:31',81,1,NULL,NULL,'2023-05-15 14:38:31'),(11,2,2,'请假缘由11',2,'2023-05-15 14:38:31','2023-05-15 14:38:31',401,1,NULL,NULL,'2023-05-15 14:38:31'),(12,3,2,'请假缘由12',1,'2023-05-15 14:38:31','2023-05-15 14:38:31',288,1,NULL,NULL,'2023-05-15 14:38:31'),(13,1,3,'请假缘由13',1,'2023-05-15 14:38:31','2023-05-15 14:38:31',197,1,NULL,NULL,'2023-05-15 14:38:31'),(14,3,1,'请假缘由14',2,'2023-05-15 14:38:31','2023-05-15 14:38:31',482,1,NULL,NULL,'2023-05-15 14:38:31'),(15,1,1,'去',1,'2023-05-15 15:50:25','2023-05-15 00:00:00',1,4,'好的','2023-05-15 15:51:31','2023-05-15 15:50:25');

/*Table structure for table `renwu` */

DROP TABLE IF EXISTS `renwu`;

CREATE TABLE `renwu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `jingli_id` int(11) DEFAULT NULL COMMENT '部门主管',
  `renwu_name` varchar(200) DEFAULT NULL COMMENT '任务名称  Search111 ',
  `renwu_uuid_number` varchar(200) DEFAULT NULL COMMENT '任务编号',
  `renwu_photo` varchar(200) DEFAULT NULL COMMENT '任务照片',
  `renwu_types` int(11) DEFAULT NULL COMMENT '任务类型 Search111',
  `renwu_file` varchar(200) DEFAULT NULL COMMENT '文件',
  `renwu_content` longtext COMMENT '任务介绍 ',
  `renwu_delete` int(11) DEFAULT NULL COMMENT '逻辑删除',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '录入时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COMMENT='任务';

/*Data for the table `renwu` */

insert  into `renwu`(`id`,`jingli_id`,`renwu_name`,`renwu_uuid_number`,`renwu_photo`,`renwu_types`,`renwu_file`,`renwu_content`,`renwu_delete`,`insert_time`,`create_time`) values (1,3,'任务名称1','1684132711802','upload/renwu1.jpg',2,'upload/file.rar','任务介绍1',1,'2023-05-15 14:38:31','2023-05-15 14:38:31'),(2,2,'任务名称2','1684132711847','upload/renwu2.jpg',3,'upload/file.rar','任务介绍2',1,'2023-05-15 14:38:31','2023-05-15 14:38:31'),(3,2,'任务名称3','1684132711766','upload/renwu3.jpg',3,'upload/file.rar','任务介绍3',1,'2023-05-15 14:38:31','2023-05-15 14:38:31'),(4,2,'任务名称4','1684132711805','upload/renwu4.jpg',2,'upload/file.rar','任务介绍4',1,'2023-05-15 14:38:31','2023-05-15 14:38:31'),(5,1,'任务名称5','1684132711849','upload/renwu5.jpg',1,'upload/file.rar','任务介绍5',1,'2023-05-15 14:38:31','2023-05-15 14:38:31'),(6,3,'任务名称6','1684132711833','upload/renwu6.jpg',2,'upload/file.rar','任务介绍6',1,'2023-05-15 14:38:31','2023-05-15 14:38:31'),(7,3,'任务名称7','1684132711841','upload/renwu7.jpg',4,'upload/file.rar','任务介绍7',1,'2023-05-15 14:38:31','2023-05-15 14:38:31'),(8,1,'任务名称8','1684132711837','upload/renwu8.jpg',3,'upload/file.rar','任务介绍8',1,'2023-05-15 14:38:31','2023-05-15 14:38:31'),(9,1,'任务名称9','1684132711820','upload/renwu9.jpg',4,'upload/file.rar','任务介绍9',1,'2023-05-15 14:38:31','2023-05-15 14:38:31'),(10,2,'任务名称10','1684132711758','upload/renwu10.jpg',1,'upload/file.rar','任务介绍10',1,'2023-05-15 14:38:31','2023-05-15 14:38:31'),(11,2,'任务名称11','1684132711844','upload/renwu11.jpg',3,'upload/file.rar','任务介绍11',1,'2023-05-15 14:38:31','2023-05-15 14:38:31'),(12,3,'任务名称12','1684132711852','upload/renwu12.jpg',2,'upload/file.rar','任务介绍12',1,'2023-05-15 14:38:31','2023-05-15 14:38:31'),(13,3,'任务名称13','1684132711829','upload/renwu13.jpg',4,'upload/file.rar','任务介绍13',1,'2023-05-15 14:38:31','2023-05-15 14:38:31'),(14,3,'任务名称14','1684132711801','upload/renwu14.jpg',4,'upload/file.rar','任务介绍14',1,'2023-05-15 14:38:31','2023-05-15 14:38:31'),(15,1,'阿萨德','1684137940955','/upload/1684137950133.jpg',3,'/upload/1684137947045.jpg','<p>阿萨德</p>',1,'2023-05-15 16:05:52','2023-05-15 16:05:52');

/*Table structure for table `token` */

DROP TABLE IF EXISTS `token`;

CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '儿童id',
  `username` varchar(100) NOT NULL COMMENT '儿童名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,1,'a1','yonghu','用户','i1bxjvypzalm2ackwws5a59z7pbd3h09','2023-05-15 14:44:10','2023-05-15 16:49:16'),(2,1,'admin','users','管理员','k2ebioyrv0iu72msxr0nekrwvcfh7hd0','2023-05-15 15:12:12','2023-05-15 17:10:10'),(3,1,'a1','jingli','部门经理','uh19lnqxzj2dz39ve4ft7ng60nbsbjdz','2023-05-15 15:29:08','2023-05-15 17:08:22');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '儿童名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='管理员';

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'admin','admin','管理员','2023-05-15 14:37:32');

/*Table structure for table `xinxi` */

DROP TABLE IF EXISTS `xinxi`;

CREATE TABLE `xinxi` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `xinxi_name` varchar(200) DEFAULT NULL COMMENT '基本信息名称  Search111 ',
  `xinxi_uuid_number` varchar(200) DEFAULT NULL COMMENT '基本信息编号',
  `xinxi_yuanxiao` varchar(200) DEFAULT NULL COMMENT '毕业院校',
  `xinxi_zhuanye` varchar(200) DEFAULT NULL COMMENT '专业',
  `xinxi_xuewei` varchar(200) DEFAULT NULL COMMENT '最终学位',
  `xinxi_address` varchar(200) DEFAULT NULL COMMENT '家庭住址',
  `xinxi_chepai` varchar(200) DEFAULT NULL COMMENT '车牌号',
  `xinxi_didian` varchar(200) DEFAULT NULL COMMENT '办公地点',
  `xinxi_types` int(11) DEFAULT NULL COMMENT '健康状况 ',
  `xinxi_time` date DEFAULT NULL COMMENT '入职时间',
  `xinxi_content` longtext COMMENT '基本信息介绍 ',
  `xinxi_delete` int(11) DEFAULT NULL COMMENT '逻辑删除',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '录入时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show3 listShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='基本信息';

/*Data for the table `xinxi` */

insert  into `xinxi`(`id`,`yonghu_id`,`xinxi_name`,`xinxi_uuid_number`,`xinxi_yuanxiao`,`xinxi_zhuanye`,`xinxi_xuewei`,`xinxi_address`,`xinxi_chepai`,`xinxi_didian`,`xinxi_types`,`xinxi_time`,`xinxi_content`,`xinxi_delete`,`insert_time`,`create_time`) values (1,1,'基本信息名称1','1684132711826','毕业院校1','专业1','最终学位1','家庭住址1','车牌号1','办公地点1',1,'2023-05-15','基本信息介绍1',1,'2023-05-15 14:38:31','2023-05-15 14:38:31'),(2,1,'基本信息名称2','1684132711805','毕业院校2','专业2','最终学位2','家庭住址2','车牌号2','办公地点2',1,'2023-05-15','基本信息介绍2',1,'2023-05-15 14:38:31','2023-05-15 14:38:31'),(3,1,'基本信息名称3','1684132711827','毕业院校3','专业3','最终学位3','家庭住址3','车牌号3','办公地点3',2,'2023-05-15','基本信息介绍3',1,'2023-05-15 14:38:31','2023-05-15 14:38:31'),(4,3,'基本信息名称4','1684132711831','毕业院校4','专业4','最终学位4','家庭住址4','车牌号4','办公地点4',1,'2023-05-15','基本信息介绍4',1,'2023-05-15 14:38:31','2023-05-15 14:38:31'),(5,1,'基本信息名称5','1684132711849','毕业院校5','专业5','最终学位5','家庭住址5','车牌号5','办公地点5',1,'2023-05-15','基本信息介绍5',1,'2023-05-15 14:38:31','2023-05-15 14:38:31'),(6,1,'基本信息名称6','1684132711792','毕业院校6','专业6','最终学位6','家庭住址6','车牌号6','办公地点6',1,'2023-05-15','基本信息介绍6',1,'2023-05-15 14:38:31','2023-05-15 14:38:31'),(7,1,'基本信息名称7','1684132711800','毕业院校7','专业7','最终学位7','家庭住址7','车牌号7','办公地点7',2,'2023-05-15','基本信息介绍7',1,'2023-05-15 14:38:31','2023-05-15 14:38:31'),(8,1,'基本信息名称8','1684132711771','毕业院校8','专业8','最终学位8','家庭住址8','车牌号8','办公地点8',2,'2023-05-15','基本信息介绍8',1,'2023-05-15 14:38:31','2023-05-15 14:38:31'),(9,3,'基本信息名称9','1684132711857','毕业院校9','专业9','最终学位9','家庭住址9','车牌号9','办公地点9',2,'2023-05-15','基本信息介绍9',1,'2023-05-15 14:38:31','2023-05-15 14:38:31'),(10,2,'基本信息名称10','1684132711819','毕业院校10','专业10','最终学位10','家庭住址10','车牌号10','办公地点10',1,'2023-05-15','基本信息介绍10',1,'2023-05-15 14:38:31','2023-05-15 14:38:31'),(11,3,'基本信息名称11','1684132711824','毕业院校11','专业11','最终学位11','家庭住址11','车牌号11','办公地点11',2,'2023-05-15','基本信息介绍11',1,'2023-05-15 14:38:31','2023-05-15 14:38:31'),(12,3,'基本信息名称12','1684132711841','毕业院校12','专业12','最终学位12','家庭住址12','车牌号12','办公地点12',1,'2023-05-15','基本信息介绍12',1,'2023-05-15 14:38:31','2023-05-15 14:38:31'),(13,2,'基本信息名称13','1684132711761','毕业院校13','专业13','最终学位13','家庭住址13','车牌号13','办公地点13',1,'2023-05-15','基本信息介绍13',1,'2023-05-15 14:38:31','2023-05-15 14:38:31'),(14,1,'基本信息名称14','1684132711851','毕业院校14','专业14','最终学位14','家庭住址14','车牌号14','办公地点14',1,'2023-05-15','基本信息介绍14',1,'2023-05-15 14:38:31','2023-05-15 14:38:31');

/*Table structure for table `xinzi` */

DROP TABLE IF EXISTS `xinzi`;

CREATE TABLE `xinzi` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `xinzi_uuid_number` varchar(200) DEFAULT NULL COMMENT '薪资编号 Search111 ',
  `xinzi_name` varchar(200) DEFAULT NULL COMMENT '标题 Search111 ',
  `xinzi_month` varchar(200) DEFAULT NULL COMMENT '月份 Search111 ',
  `jiben_jine` decimal(10,2) DEFAULT NULL COMMENT '岗位工资',
  `jiangjin_jine` decimal(10,2) DEFAULT NULL COMMENT '薪级工资',
  `jiangjin_fangtie` decimal(10,2) DEFAULT NULL COMMENT '房帖',
  `jiangjin_jijin` decimal(10,2) DEFAULT NULL COMMENT '公积金',
  `jixiao_jine` decimal(10,2) DEFAULT NULL COMMENT '业绩津贴',
  `jixiao_gongjijin` decimal(10,2) DEFAULT NULL COMMENT '扣公积金',
  `jixiao_yibao` decimal(10,2) DEFAULT NULL COMMENT '扣医保',
  `jixiao_yanglao` decimal(10,2) DEFAULT NULL COMMENT '扣养老保险',
  `jixiao_shibao` decimal(10,2) DEFAULT NULL COMMENT '扣失保金',
  `jixiao_koushui` decimal(10,2) DEFAULT NULL COMMENT '扣税款',
  `jixiao_shijia` decimal(10,2) DEFAULT NULL COMMENT '事假扣款',
  `jixiao_bingjia` decimal(10,2) DEFAULT NULL COMMENT '病假扣款',
  `xiaoji_yingkou` decimal(10,2) DEFAULT NULL COMMENT '应扣小计',
  `xiaoji_yingfa` decimal(10,2) DEFAULT NULL COMMENT '应发小计',
  `shifa_jine` decimal(10,2) DEFAULT NULL COMMENT '实发',
  `xinzi_content` longtext COMMENT '备注 ',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 listShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COMMENT='薪资';

/*Data for the table `xinzi` */

insert  into `xinzi`(`id`,`yonghu_id`,`xinzi_uuid_number`,`xinzi_name`,`xinzi_month`,`jiben_jine`,`jiangjin_jine`,`jiangjin_fangtie`,`jiangjin_jijin`,`jixiao_jine`,`jixiao_gongjijin`,`jixiao_yibao`,`jixiao_yanglao`,`jixiao_shibao`,`jixiao_koushui`,`jixiao_shijia`,`jixiao_bingjia`,`xiaoji_yingkou`,`xiaoji_yingfa`,`shifa_jine`,`xinzi_content`,`insert_time`,`create_time`) values (1,2,'1684132711839','标题1','月份1','958.82','197.01','628.50','708.75','851.05','568.00','760.35','684.23','922.00','199.51','792.84','314.67','654.86','408.12','362.29','备注1','2023-05-15 14:38:31','2023-05-15 14:38:31'),(2,1,'1684132711805','标题2','月份2','649.48','97.55','154.40','861.45','278.47','867.31','570.45','616.72','708.47','800.86','318.95','135.90','670.24','231.35','614.66','备注2','2023-05-15 14:38:31','2023-05-15 14:38:31'),(3,1,'1684132711810','标题3','月份3','206.83','749.05','92.50','994.52','507.14','260.63','806.81','178.06','160.50','686.95','811.95','307.37','680.37','949.03','966.96','备注3','2023-05-15 14:38:31','2023-05-15 14:38:31'),(4,1,'1684132711793','标题4','月份4','205.26','196.52','602.71','42.87','480.15','525.12','107.01','517.61','608.83','932.12','760.84','278.90','294.41','42.21','377.14','备注4','2023-05-15 14:38:31','2023-05-15 14:38:31'),(5,1,'1684132711814','标题5','月份5','822.60','532.94','532.64','256.86','921.29','802.33','555.44','871.66','82.66','421.46','577.70','949.96','490.50','137.89','734.29','备注5','2023-05-15 14:38:31','2023-05-15 14:38:31'),(6,2,'1684132711812','标题6','月份6','86.38','455.06','430.90','286.29','376.29','918.47','167.82','904.87','290.43','913.43','149.30','635.39','758.46','427.06','207.88','备注6','2023-05-15 14:38:31','2023-05-15 14:38:31'),(7,1,'1684132711830','标题7','月份7','404.71','927.46','737.95','846.95','966.65','387.47','431.96','538.66','464.74','729.03','484.02','122.19','812.72','62.03','702.08','备注7','2023-05-15 14:38:31','2023-05-15 14:38:31'),(8,2,'1684132711860','标题8','月份8','472.87','703.11','295.06','273.32','842.98','308.81','632.70','592.77','585.15','950.07','147.06','828.21','271.86','764.40','151.63','备注8','2023-05-15 14:38:31','2023-05-15 14:38:31'),(9,1,'1684132711777','标题9','月份9','746.87','519.97','906.65','266.26','499.18','663.33','845.00','540.01','366.96','295.51','860.61','336.08','554.99','749.86','827.62','备注9','2023-05-15 14:38:31','2023-05-15 14:38:31'),(10,2,'1684132711851','标题10','月份10','676.60','90.07','395.83','402.43','719.68','454.43','858.47','279.12','66.22','776.65','72.10','742.59','844.57','518.52','753.53','备注10','2023-05-15 14:38:31','2023-05-15 14:38:31'),(11,2,'1684132711769','标题11','月份11','22.19','850.12','937.57','335.36','775.21','782.23','114.38','638.05','66.03','422.52','148.18','284.59','832.05','345.63','235.19','备注11','2023-05-15 14:38:31','2023-05-15 14:38:31'),(12,3,'1684132711810','标题12','月份12','170.53','362.74','879.82','389.22','113.15','513.96','938.76','95.66','3.95','688.56','93.34','716.15','270.42','716.92','436.45','备注12','2023-05-15 14:38:31','2023-05-15 14:38:31'),(13,1,'1684132711826','标题13','月份13','32.50','8.21','297.99','778.25','979.27','468.10','940.48','824.48','671.97','484.41','435.17','198.98','697.09','838.36','976.87','备注13','2023-05-15 14:38:31','2023-05-15 14:38:31'),(14,2,'1684132711791','标题14','月份14','313.92','750.35','751.21','823.30','345.90','930.81','71.08','149.89','581.56','983.49','598.40','65.02','645.72','9.85','92.04','备注14','2023-05-15 14:38:31','2023-05-15 14:38:31'),(15,1,'1684135014403','1','2023-06','100.00','100.00','100.00','100.00','100.00','5.00','5.00','5.00','5.00','5.00','5.00','5.00','35.00','400.00','365.00','<p>阿萨德</p>','2023-05-15 15:20:21','2023-05-15 15:20:21');

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `yonghu_uuid_number` varchar(200) DEFAULT NULL COMMENT '用户编号 Search111 ',
  `yonghu_name` varchar(200) DEFAULT NULL COMMENT '用户姓名 Search111 ',
  `yonghu_phone` varchar(200) DEFAULT NULL COMMENT '用户手机号',
  `yonghu_id_number` varchar(200) DEFAULT NULL COMMENT '用户身份证号',
  `yonghu_photo` varchar(200) DEFAULT NULL COMMENT '用户头像',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别',
  `yonghu_email` varchar(200) DEFAULT NULL COMMENT '用户邮箱',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='用户';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`username`,`password`,`yonghu_uuid_number`,`yonghu_name`,`yonghu_phone`,`yonghu_id_number`,`yonghu_photo`,`sex_types`,`yonghu_email`,`create_time`) values (1,'a1','123456','1684132711777','用户姓名1','17703786901','410224199010102001','upload/yonghu1.jpg',1,'1@qq.com','2023-05-15 14:38:31'),(2,'a2','123456','1684132711816','用户姓名2','17703786902','410224199010102002','upload/yonghu2.jpg',1,'2@qq.com','2023-05-15 14:38:31'),(3,'a3','123456','1684132711781','用户姓名3','17703786903','410224199010102003','upload/yonghu3.jpg',2,'3@qq.com','2023-05-15 14:38:31');

/*Table structure for table `ziliao` */

DROP TABLE IF EXISTS `ziliao`;

CREATE TABLE `ziliao` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `ziliao_name` varchar(200) DEFAULT NULL COMMENT '资料名称  Search111 ',
  `ziliao_uuid_number` varchar(200) DEFAULT NULL COMMENT '资料编号',
  `ziliao_photo` varchar(200) DEFAULT NULL COMMENT '资料照片',
  `ziliao_types` int(11) DEFAULT NULL COMMENT '资料类型 Search111',
  `ziliao_video` varchar(200) DEFAULT NULL COMMENT '资料视频',
  `ziliao_file` varchar(200) DEFAULT NULL COMMENT '资料文件',
  `ziliao_content` longtext COMMENT '资料介绍 ',
  `ziliao_delete` int(11) DEFAULT NULL COMMENT '逻辑删除',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '录入时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='资料';

/*Data for the table `ziliao` */

insert  into `ziliao`(`id`,`ziliao_name`,`ziliao_uuid_number`,`ziliao_photo`,`ziliao_types`,`ziliao_video`,`ziliao_file`,`ziliao_content`,`ziliao_delete`,`insert_time`,`create_time`) values (1,'资料名称1','1684132711837','upload/ziliao1.jpg',2,'upload/video.mp4','upload/file.rar','资料介绍1',1,'2023-05-15 14:38:31','2023-05-15 14:38:31'),(2,'资料名称2','1684132711799','upload/ziliao2.jpg',3,'upload/video.mp4','upload/file.rar','资料介绍2',1,'2023-05-15 14:38:31','2023-05-15 14:38:31'),(3,'资料名称3','1684132711864','upload/ziliao3.jpg',3,'upload/video.mp4','upload/file.rar','资料介绍3',1,'2023-05-15 14:38:31','2023-05-15 14:38:31'),(4,'资料名称4','1684132711782','upload/ziliao4.jpg',3,'upload/video.mp4','upload/file.rar','资料介绍4',1,'2023-05-15 14:38:31','2023-05-15 14:38:31'),(5,'资料名称5','1684132711824','upload/ziliao5.jpg',4,'upload/video.mp4','upload/file.rar','资料介绍5',1,'2023-05-15 14:38:31','2023-05-15 14:38:31'),(6,'资料名称6','1684132711850','upload/ziliao6.jpg',3,'upload/video.mp4','upload/file.rar','资料介绍6',1,'2023-05-15 14:38:31','2023-05-15 14:38:31'),(7,'资料名称7','1684132711785','upload/ziliao7.jpg',2,'upload/video.mp4','upload/file.rar','资料介绍7',1,'2023-05-15 14:38:31','2023-05-15 14:38:31'),(8,'资料名称8','1684132711790','upload/ziliao8.jpg',4,'upload/video.mp4','upload/file.rar','资料介绍8',1,'2023-05-15 14:38:31','2023-05-15 14:38:31'),(9,'资料名称9','1684132711786','upload/ziliao9.jpg',4,'upload/video.mp4','upload/file.rar','资料介绍9',1,'2023-05-15 14:38:31','2023-05-15 14:38:31'),(10,'资料名称10','1684132711826','upload/ziliao10.jpg',3,'upload/video.mp4','upload/file.rar','资料介绍10',1,'2023-05-15 14:38:31','2023-05-15 14:38:31'),(11,'资料名称11','1684132711853','upload/ziliao11.jpg',4,'upload/video.mp4','upload/file.rar','资料介绍11',1,'2023-05-15 14:38:31','2023-05-15 14:38:31'),(12,'资料名称12','1684132711808','upload/ziliao12.jpg',3,'upload/video.mp4','upload/file.rar','资料介绍12',1,'2023-05-15 14:38:31','2023-05-15 14:38:31'),(13,'资料名称13','1684132711791','upload/ziliao13.jpg',4,'upload/video.mp4','upload/file.rar','资料介绍13',1,'2023-05-15 14:38:31','2023-05-15 14:38:31'),(14,'资料名称14','1684132711817','upload/ziliao14.jpg',4,'upload/video.mp4','upload/file.rar','资料介绍14',1,'2023-05-15 14:38:31','2023-05-15 14:38:31');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
