/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - qichexiaoshouc
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`qichexiaoshouc` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `qichexiaoshouc`;

/*Table structure for table `address` */

DROP TABLE IF EXISTS `address`;

CREATE TABLE `address` (
  `id` int(20) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `yonghu_id` int(20) NOT NULL COMMENT '创建用户',
  `address_name` varchar(200) NOT NULL COMMENT '收货人 ',
  `address_phone` varchar(200) NOT NULL COMMENT '电话 ',
  `address_dizhi` varchar(200) NOT NULL COMMENT '地址 ',
  `isdefault_types` int(11) NOT NULL COMMENT '是否默认地址 ',
  `insert_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '添加时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '修改时间',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间 show3',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='收货地址';

/*Data for the table `address` */

insert  into `address`(`id`,`yonghu_id`,`address_name`,`address_phone`,`address_dizhi`,`isdefault_types`,`insert_time`,`update_time`,`create_time`) values (1,1,'收货人1','17703786901','地址1',1,'2022-04-12 19:20:36','2022-04-12 19:20:36','2022-04-12 19:20:36'),(2,2,'收货人2','17703786902','地址2',1,'2022-04-12 19:20:36','2022-04-12 19:20:36','2022-04-12 19:20:36'),(3,1,'收货人3','17703786903','地址3',1,'2022-04-12 19:20:36','2022-04-12 19:20:36','2022-04-12 19:20:36'),(4,3,'收货人4','17703786904','地址4',1,'2022-04-12 19:20:36','2022-04-12 19:20:36','2022-04-12 19:20:36'),(5,1,'收货人5','17703786905','地址5',2,'2022-04-12 19:20:36','2022-04-13 09:38:04','2022-04-12 19:20:36');

/*Table structure for table `cart` */

DROP TABLE IF EXISTS `cart`;

CREATE TABLE `cart` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '所属用户',
  `qiche_id` int(11) DEFAULT NULL COMMENT '汽车',
  `buy_number` int(11) DEFAULT NULL COMMENT '购买数量',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '更新时间',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='购物车';

/*Data for the table `cart` */

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'轮播图1','http://localhost:8080/qichexiaoshouc/upload/config1.jpg'),(2,'轮播图2','http://localhost:8080/qichexiaoshouc/upload/config2.jpg'),(3,'轮播图3','http://localhost:8080/qichexiaoshouc/upload/config3.jpg');

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
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8 COMMENT='字典';

/*Data for the table `dictionary` */

insert  into `dictionary`(`id`,`dic_code`,`dic_name`,`code_index`,`index_name`,`super_id`,`beizhu`,`create_time`) values (1,'isdefault_types','是否默认地址',1,'否',NULL,NULL,'2022-03-28 15:27:54'),(2,'isdefault_types','是否默认地址',2,'是',NULL,NULL,'2022-03-28 15:27:54'),(3,'shangxia_types','上下架',1,'上架',NULL,NULL,'2022-03-28 15:27:54'),(4,'shangxia_types','上下架',2,'下架',NULL,NULL,'2022-03-28 15:27:54'),(5,'qiche_types','汽车类型',1,'汽车类型1',NULL,NULL,'2022-03-28 15:27:54'),(6,'qiche_types','汽车类型',2,'汽车类型2',NULL,NULL,'2022-03-28 15:27:54'),(7,'qiche_types','汽车类型',3,'汽车类型3',NULL,NULL,'2022-03-28 15:27:54'),(8,'qiche_order_types','订单类型',1,'已支付',NULL,NULL,'2022-03-28 15:27:54'),(9,'qiche_order_types','订单类型',2,'退款',NULL,NULL,'2022-03-28 15:27:54'),(10,'qiche_order_types','订单类型',3,'已发货',NULL,NULL,'2022-03-28 15:27:54'),(11,'qiche_order_types','订单类型',4,'已收货',NULL,NULL,'2022-03-28 15:27:54'),(12,'qiche_order_types','订单类型',5,'已评价',NULL,NULL,'2022-03-28 15:27:54'),(13,'qiche_order_payment_types','订单支付类型',1,'现金',NULL,NULL,'2022-03-28 15:27:54'),(14,'sex_types','性别类型',1,'男',NULL,NULL,'2022-03-28 15:27:54'),(15,'sex_types','性别类型',2,'女',NULL,NULL,'2022-03-28 15:27:54'),(16,'news_types','公告类型',1,'公告类型1',NULL,NULL,'2022-03-28 15:27:54'),(17,'news_types','公告类型',2,'公告类型2',NULL,NULL,'2022-03-28 15:27:54'),(18,'news_types','公告类型',3,'公告类型3',NULL,NULL,'2022-03-28 15:27:54'),(19,'forum_state_types','帖子状态',1,'发帖',NULL,NULL,'2022-03-28 15:27:54'),(20,'forum_state_types','帖子状态',2,'回帖',NULL,NULL,'2022-03-28 15:27:54'),(21,'qiche_shijia_order_yesno_types','预定审核',1,'审核中',NULL,NULL,'2022-04-12 19:20:16'),(22,'qiche_shijia_order_yesno_types','预定审核',2,'通过',NULL,NULL,'2022-04-12 19:20:16'),(23,'qiche_shijia_order_yesno_types','预定审核',3,'拒绝',NULL,NULL,'2022-04-12 19:20:16');

/*Table structure for table `forum` */

DROP TABLE IF EXISTS `forum`;

CREATE TABLE `forum` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `forum_name` varchar(200) DEFAULT NULL COMMENT '帖子标题  Search111 ',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `users_id` int(11) DEFAULT NULL COMMENT '管理员',
  `forum_content` text COMMENT '发布内容',
  `super_ids` int(11) DEFAULT NULL COMMENT '父id',
  `forum_state_types` int(11) DEFAULT NULL COMMENT '帖子状态',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '发帖时间',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '修改时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show2',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COMMENT='论坛';

/*Data for the table `forum` */

insert  into `forum`(`id`,`forum_name`,`yonghu_id`,`users_id`,`forum_content`,`super_ids`,`forum_state_types`,`insert_time`,`update_time`,`create_time`) values (1,'帖子标题1',1,NULL,'发布内容1',NULL,1,'2022-04-12 19:20:36','2022-04-12 19:20:36','2022-04-12 19:20:36'),(2,'帖子标题2',3,NULL,'发布内容2',NULL,1,'2022-04-12 19:20:36','2022-04-12 19:20:36','2022-04-12 19:20:36'),(3,'帖子标题3',2,NULL,'发布内容3',NULL,1,'2022-04-12 19:20:36','2022-04-12 19:20:36','2022-04-12 19:20:36'),(4,'帖子标题4',2,NULL,'发布内容4',NULL,1,'2022-04-12 19:20:36','2022-04-12 19:20:36','2022-04-12 19:20:36'),(5,'帖子标题5',2,NULL,'发布内容5',NULL,1,'2022-04-12 19:20:36','2022-04-12 19:20:36','2022-04-12 19:20:36'),(6,NULL,1,NULL,'评论11111',5,2,'2022-04-13 09:37:50',NULL,'2022-04-13 09:37:50'),(7,NULL,NULL,1,'评论222222',5,2,'2022-04-13 09:38:35',NULL,'2022-04-13 09:38:35');

/*Table structure for table `news` */

DROP TABLE IF EXISTS `news`;

CREATE TABLE `news` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `news_name` varchar(200) DEFAULT NULL COMMENT '公告标题  Search111 ',
  `news_types` int(11) DEFAULT NULL COMMENT '公告类型  Search111 ',
  `news_photo` varchar(200) DEFAULT NULL COMMENT '公告图片',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  `news_content` text COMMENT '公告详情',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='公告信息';

/*Data for the table `news` */

insert  into `news`(`id`,`news_name`,`news_types`,`news_photo`,`insert_time`,`news_content`,`create_time`) values (1,'公告标题1',3,'http://localhost:8080/qichexiaoshouc/upload/news1.jpg','2022-04-12 19:20:36','公告详情1','2022-04-12 19:20:36'),(2,'公告标题2',2,'http://localhost:8080/qichexiaoshouc/upload/news2.jpg','2022-04-12 19:20:36','公告详情2','2022-04-12 19:20:36'),(3,'公告标题3',3,'http://localhost:8080/qichexiaoshouc/upload/news3.jpg','2022-04-12 19:20:36','公告详情3','2022-04-12 19:20:36'),(4,'公告标题4',1,'http://localhost:8080/qichexiaoshouc/upload/news4.jpg','2022-04-12 19:20:36','公告详情4','2022-04-12 19:20:36'),(5,'公告标题5',1,'http://localhost:8080/qichexiaoshouc/upload/news5.jpg','2022-04-12 19:20:36','公告详情5','2022-04-12 19:20:36');

/*Table structure for table `qiche` */

DROP TABLE IF EXISTS `qiche`;

CREATE TABLE `qiche` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `qiche_name` varchar(200) DEFAULT NULL COMMENT '汽车名称  Search111 ',
  `qiche_photo` varchar(200) DEFAULT NULL COMMENT '汽车照片',
  `qiche_types` int(11) DEFAULT NULL COMMENT '汽车类型 Search111',
  `qiche_kucun_number` int(11) DEFAULT NULL COMMENT '汽车库存',
  `qiche_old_money` decimal(10,2) DEFAULT NULL COMMENT '汽车原价 ',
  `qiche_new_money` decimal(10,2) DEFAULT NULL COMMENT '现价',
  `qiche_clicknum` int(11) DEFAULT NULL COMMENT '点击次数 ',
  `shangxia_types` int(11) DEFAULT NULL COMMENT '是否上架 ',
  `qiche_delete` int(11) DEFAULT NULL COMMENT '逻辑删除',
  `qiche_content` text COMMENT '汽车简介 ',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='汽车';

/*Data for the table `qiche` */

insert  into `qiche`(`id`,`qiche_name`,`qiche_photo`,`qiche_types`,`qiche_kucun_number`,`qiche_old_money`,`qiche_new_money`,`qiche_clicknum`,`shangxia_types`,`qiche_delete`,`qiche_content`,`create_time`) values (1,'汽车名称1','http://localhost:8080/qichexiaoshouc/upload/qiche1.jpg',2,101,'890.68','180.01',342,1,1,'汽车简介1','2022-04-12 19:20:36'),(2,'汽车名称2','http://localhost:8080/qichexiaoshouc/upload/qiche2.jpg',1,102,'821.69','389.37',101,1,1,'汽车简介2','2022-04-12 19:20:36'),(3,'汽车名称3','http://localhost:8080/qichexiaoshouc/upload/qiche3.jpg',1,103,'543.45','109.05',120,1,1,'汽车简介3','2022-04-12 19:20:36'),(4,'汽车名称4','http://localhost:8080/qichexiaoshouc/upload/qiche4.jpg',2,100,'764.83','308.47',411,1,1,'汽车简介4','2022-04-12 19:20:36'),(5,'汽车名称5','http://localhost:8080/qichexiaoshouc/upload/qiche5.jpg',1,95,'662.42','138.58',202,1,1,'汽车简介5','2022-04-12 19:20:36');

/*Table structure for table `qiche_commentback` */

DROP TABLE IF EXISTS `qiche_commentback`;

CREATE TABLE `qiche_commentback` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `qiche_id` int(11) DEFAULT NULL COMMENT '汽车',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `qiche_commentback_text` text COMMENT '评价内容',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '评价时间',
  `reply_text` text COMMENT '回复内容',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '回复时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='汽车评价';

/*Data for the table `qiche_commentback` */

insert  into `qiche_commentback`(`id`,`qiche_id`,`yonghu_id`,`qiche_commentback_text`,`insert_time`,`reply_text`,`update_time`,`create_time`) values (1,1,2,'评价内容1','2022-04-12 19:20:36','回复信息1','2022-04-12 19:20:36','2022-04-12 19:20:36'),(2,2,2,'评价内容2','2022-04-12 19:20:36','回复信息2','2022-04-12 19:20:36','2022-04-12 19:20:36'),(3,3,1,'评价内容3','2022-04-12 19:20:36','回复信息3','2022-04-12 19:20:36','2022-04-12 19:20:36'),(4,4,3,'评价内容4','2022-04-12 19:20:36','回复信息4','2022-04-12 19:20:36','2022-04-12 19:20:36'),(5,5,3,'评价内容5','2022-04-12 19:20:36','回复信息5','2022-04-12 19:20:36','2022-04-12 19:20:36'),(6,4,1,'购买完成后可评论111111','2022-04-13 09:39:50','管理回复','2022-04-13 09:40:11','2022-04-13 09:39:50');

/*Table structure for table `qiche_order` */

DROP TABLE IF EXISTS `qiche_order`;

CREATE TABLE `qiche_order` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `qiche_order_uuid_number` varchar(200) DEFAULT NULL COMMENT '订单号',
  `address_id` int(11) DEFAULT NULL COMMENT '收货地址 ',
  `qiche_id` int(11) DEFAULT NULL COMMENT '汽车',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `buy_number` int(11) DEFAULT NULL COMMENT '购买数量',
  `qiche_order_true_price` decimal(10,2) DEFAULT NULL COMMENT '实付价格',
  `qiche_order_types` int(11) DEFAULT NULL COMMENT '订单类型',
  `qiche_order_payment_types` int(11) DEFAULT NULL COMMENT '支付类型',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '订单创建时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='汽车订单';

/*Data for the table `qiche_order` */

insert  into `qiche_order`(`id`,`qiche_order_uuid_number`,`address_id`,`qiche_id`,`yonghu_id`,`buy_number`,`qiche_order_true_price`,`qiche_order_types`,`qiche_order_payment_types`,`insert_time`,`create_time`) values (1,'1649813890294',5,5,1,1,'138.58',2,1,'2022-04-13 09:38:10','2022-04-13 09:38:10'),(2,'1649813890294',5,4,1,4,'1233.88',5,1,'2022-04-13 09:38:10','2022-04-13 09:38:10');

/*Table structure for table `qiche_shijia` */

DROP TABLE IF EXISTS `qiche_shijia`;

CREATE TABLE `qiche_shijia` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `qiche_shijia_order_uuid_number` varchar(200) DEFAULT NULL COMMENT '编号',
  `qiche_id` int(11) DEFAULT NULL COMMENT '汽车',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `qiche_shijia_order_time` timestamp NULL DEFAULT NULL COMMENT '预定时间',
  `qiche_shijia_order_yesno_types` int(11) DEFAULT NULL COMMENT '预定审核',
  `qiche_shijia_order_yesno_text` text COMMENT '审核结果',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='汽车试驾预定';

/*Data for the table `qiche_shijia` */

insert  into `qiche_shijia`(`id`,`qiche_shijia_order_uuid_number`,`qiche_id`,`yonghu_id`,`qiche_shijia_order_time`,`qiche_shijia_order_yesno_types`,`qiche_shijia_order_yesno_text`,`insert_time`,`create_time`) values (1,'1649813769878',5,1,'2022-04-21 04:00:00',NULL,NULL,'2022-04-13 09:36:16','2022-04-13 09:36:16'),(2,'1649813846562',5,1,'2022-04-14 10:00:00',NULL,NULL,'2022-04-13 09:37:33','2022-04-13 09:37:33');

/*Table structure for table `token` */

DROP TABLE IF EXISTS `token`;

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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,1,'admin','users','管理员','7wb8qc8o5b2fis23a13sye2o78jt3idq','2022-04-12 20:31:10','2022-04-13 10:39:58'),(2,1,'a1','yonghu','用户','nza5ehim52xwtfp8r41yhri7jzpy6f5x','2022-04-12 20:35:11','2022-04-13 10:39:19');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'admin','admin','管理员','2022-05-01 00:00:00');

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `yonghu_name` varchar(200) DEFAULT NULL COMMENT '用户姓名 Search111 ',
  `yonghu_phone` varchar(200) DEFAULT NULL COMMENT '用户手机号',
  `yonghu_id_number` varchar(200) DEFAULT NULL COMMENT '用户身份证号',
  `yonghu_photo` varchar(200) DEFAULT NULL COMMENT '用户头像',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别',
  `yonghu_email` varchar(200) DEFAULT NULL COMMENT '电子邮箱',
  `new_money` decimal(10,2) DEFAULT NULL COMMENT '余额 ',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='用户';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`username`,`password`,`yonghu_name`,`yonghu_phone`,`yonghu_id_number`,`yonghu_photo`,`sex_types`,`yonghu_email`,`new_money`,`create_time`) values (1,'a1','123456','用户姓名1','17703786901','410224199610232001','http://localhost:8080/qichexiaoshouc/upload/yonghu1.jpg',2,'1@qq.com','9518.22','2022-04-12 19:20:36'),(2,'a2','123456','用户姓名2','17703786902','410224199610232002','http://localhost:8080/qichexiaoshouc/upload/yonghu2.jpg',2,'2@qq.com','470.72','2022-04-12 19:20:36'),(3,'a3','123456','用户姓名3','17703786903','410224199610232003','http://localhost:8080/qichexiaoshouc/upload/yonghu3.jpg',2,'3@qq.com','511.67','2022-04-12 19:20:36');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
