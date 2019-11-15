/*
SQLyog Ultimate v12.3.1 (64 bit)
MySQL - 5.1.51-community : Database - system
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`system` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `system`;

/*Table structure for table `admin` */

DROP TABLE IF EXISTS `admin`;

CREATE TABLE `admin` (
  `adminname` varchar(15) DEFAULT NULL,
  `adminpassword` varchar(6) DEFAULT NULL,
  `adminidcard` varchar(18) DEFAULT NULL,
  `sex` char(2) DEFAULT NULL,
  `admintel` varchar(11) DEFAULT NULL,
  `adminaddress` varchar(20) DEFAULT NULL,
  `adminemail` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 CHECKSUM=1 DELAY_KEY_WRITE=1 ROW_FORMAT=DYNAMIC;

/*Data for the table `admin` */

insert  into `admin`(`adminname`,`adminpassword`,`adminidcard`,`sex`,`admintel`,`adminaddress`,`adminemail`) values 
('xiaoming','123','25','2','123548845','sc','362514525@qq.com'),
(NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('123','123',NULL,NULL,NULL,NULL,'12545259@qq.com'),
('888','888',NULL,NULL,NULL,NULL,'362565452@qq.com'),
('888888','888888',NULL,NULL,NULL,NULL,'555@qq.com'),
('888','888',NULL,NULL,NULL,NULL,'555@qq.com');

/*Table structure for table `caigouinfo` */

DROP TABLE IF EXISTS `caigouinfo`;

CREATE TABLE `caigouinfo` (
  `id` text NOT NULL,
  `caihoutime` varchar(20) NOT NULL,
  `goods` varchar(20) NOT NULL,
  `gongyingshang` varchar(20) NOT NULL,
  `price` varchar(20) NOT NULL,
  `count` varchar(100) NOT NULL,
  `man` varchar(20) NOT NULL,
  `stacus` varchar(20) NOT NULL,
  `dindanhao` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 CHECKSUM=1 DELAY_KEY_WRITE=1 ROW_FORMAT=DYNAMIC;

/*Data for the table `caigouinfo` */

insert  into `caigouinfo`(`id`,`caihoutime`,`goods`,`gongyingshang`,`price`,`count`,`man`,`stacus`,`dindanhao`) values 
('7','2015-5-5','apple','baidu','2','200','xiaohong','tongguo','0215'),
('0d23d8a9c496430f8dba8be9b14bee9f','xx','xx','xx','xx','xx','xx','xx','');

/*Table structure for table `caihouinfo` */

DROP TABLE IF EXISTS `caihouinfo`;

CREATE TABLE `caihouinfo` (
  `caihouTime` date NOT NULL,
  `price` double NOT NULL,
  `goods` varchar(20) NOT NULL,
  `whocaigou` varchar(10) NOT NULL,
  `stacts` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `caihouinfo` */

/*Table structure for table `credites` */

DROP TABLE IF EXISTS `credites`;

CREATE TABLE `credites` (
  `id` tinytext,
  `cardnumber` text,
  `credidsname` varchar(10) DEFAULT NULL,
  `credits` int(11) DEFAULT NULL,
  `discountrate` varchar(10) DEFAULT NULL,
  `creditsqq` varchar(20) DEFAULT NULL,
  `creditsaddress` varchar(20) DEFAULT NULL,
  `dirthday` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 CHECKSUM=1 DELAY_KEY_WRITE=1 ROW_FORMAT=DYNAMIC;

/*Data for the table `credites` */

insert  into `credites`(`id`,`cardnumber`,`credidsname`,`credits`,`discountrate`,`creditsqq`,`creditsaddress`,`dirthday`) values 
('1','2','5',200,'1','2','2','25'),
(NULL,'3b003b37150b45ac99a0e344ee88f72e','ffff',265,'0.1','5','f','2019-06-06'),
(NULL,'c076babc9b9d4cecb0a651e604d742f8',NULL,NULL,NULL,NULL,NULL,NULL),
(NULL,'afac38a351e64870a01b1266c09a4fdb',NULL,NULL,NULL,NULL,NULL,NULL),
(NULL,'cbed3faa287a4172a3b9fcc725c7a2d5',NULL,NULL,NULL,NULL,NULL,NULL),
(NULL,'a87a82796c1041bb8023a51b6176e3b9',NULL,NULL,NULL,NULL,NULL,NULL);

/*Table structure for table `gongyinshaginfo` */

DROP TABLE IF EXISTS `gongyinshaginfo`;

CREATE TABLE `gongyinshaginfo` (
  `id` varchar(100) NOT NULL,
  `username` varchar(20) NOT NULL,
  `gongyingshangman` varchar(30) NOT NULL,
  `phone` varchar(11) NOT NULL,
  `otherOfWay` varchar(30) NOT NULL,
  `gysposition` varchar(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 CHECKSUM=1 DELAY_KEY_WRITE=1 ROW_FORMAT=DYNAMIC;

/*Data for the table `gongyinshaginfo` */

/*Table structure for table `sales` */

DROP TABLE IF EXISTS `sales`;

CREATE TABLE `sales` (
  `id` int(11) DEFAULT NULL,
  `memberid` int(11) DEFAULT NULL,
  `marketid` int(11) DEFAULT NULL,
  `credits` int(11) DEFAULT NULL,
  `xiaosoudate` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 CHECKSUM=1 DELAY_KEY_WRITE=1 ROW_FORMAT=DYNAMIC;

/*Data for the table `sales` */

insert  into `sales`(`id`,`memberid`,`marketid`,`credits`,`xiaosoudate`) values 
(2,5,22,55,'555');

/*Table structure for table `salesdetail` */

DROP TABLE IF EXISTS `salesdetail`;

CREATE TABLE `salesdetail` (
  `id` int(11) DEFAULT NULL,
  `goodsid` int(11) DEFAULT NULL,
  `number` int(11) DEFAULT NULL,
  `marketid` int(11) DEFAULT NULL,
  `xiaosoudate` varchar(20) DEFAULT NULL,
  `username` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 CHECKSUM=1 DELAY_KEY_WRITE=1 ROW_FORMAT=DYNAMIC;

/*Data for the table `salesdetail` */

insert  into `salesdetail`(`id`,`goodsid`,`number`,`marketid`,`xiaosoudate`,`username`) values 
(1,2,2,1,'3','5'),
(2,NULL,215,2,'2019-05-21','xiaoming');

/*Table structure for table `statis` */

DROP TABLE IF EXISTS `statis`;

CREATE TABLE `statis` (
  `Id` int(11) DEFAULT NULL,
  `WareName` varchar(20) DEFAULT NULL,
  `Number` int(11) DEFAULT NULL,
  `totalPrice` int(11) DEFAULT NULL,
  `userBane` varchar(15) DEFAULT NULL,
  `Date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `statis` */

insert  into `statis`(`Id`,`WareName`,`Number`,`totalPrice`,`userBane`,`Date`) values 
(2,'laowang',22,2552,'3333','2018-02-04 00:00:00');

/*Table structure for table `systemgoodslist` */

DROP TABLE IF EXISTS `systemgoodslist`;

CREATE TABLE `systemgoodslist` (
  `id` tinytext NOT NULL,
  `goodsname` varchar(20) NOT NULL,
  `typeofgoods` varchar(20) NOT NULL,
  `guige` varchar(20) NOT NULL,
  `danwei` varchar(10) NOT NULL,
  `dindanhao` varchar(20) NOT NULL,
  `qmname` text NOT NULL,
  `state` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 CHECKSUM=1 DELAY_KEY_WRITE=1 ROW_FORMAT=DYNAMIC;

/*Data for the table `systemgoodslist` */

insert  into `systemgoodslist`(`id`,`goodsname`,`typeofgoods`,`guige`,`danwei`,`dindanhao`,`qmname`,`state`) values 
('4','cccccccccc','ccccccccccc',' c c c c c c c c','cccccc','sssssssssss','data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAASwAAADICAYAAABS39xVAAAFg0lEQVR4nO3dS47TSBgHcN+h1YoQxK4qb+cErOcA3GQQG5Yj9ZoLcIZmyTWQWLFjNWx4CUHzaKlfsxi7p0gnnZc7cZzfT7JEmsQpL/zXV1/KdlEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAADADH/HGK/arSiKIn897+/LfKb9vmx7svnDBXZWSmml8OkisFJKV1OGBNA/AgvYCW1lt+1xAMxUluVZjPFKdQX0VhNUl01ldbnt8QDcUJblWUrpqg2qsizPtj0mgN8cHBx8aSuqlNKVoAJ6KZ/6CSqgl+7fv/9LnwrovTyoDg4Ovmx7PAA3hBAu2j5VCOGirayy1e1/bHmIwD5q+1HZ5TbXTfV8a9datYFlzRWwMZNLE9owyl7PbK63n930mIE9M2tpwiKN9WUXioYQvjX/vFcUxaibIwD2wqylCfNC6PDw8M0yyxpCCN/y6q0oinvt644PCRiStiqaFUrt36uqOp/2+SWD6lVevWUVVlEU/10cLbSAa2VZnuX9qXzqN7k04ba7K+QN+EWmf/l7J4NqyndazwX7bEoT/daKaLLayX8tzIPs8PDwzW3fO7kEYt4422Bb/MiAQZic7i16fV8eVlMqqT8X/f5VV8CrsmAPhBAuZk33ZgXVaDQ6KcvyrF0AmldQ+W2Ol7k+sKqqk2z692rZ41BlwUDFGK+mrTxvAyaEcDEajU6mLfa8bRuNRierjKcdy7oVUnMsP9fZB9AjeS8phHBRVdV5OwWcFmL5/5VleZaHUlvVjMfjj6uOp8uLoE0LYUDaqdus7cGDB6eLNLmL4v+qaNH3zxjP5br7mLa/LvYF9EBbMTVrpP5aZR/j8fjjutVMG5JVVa00jZwmhPBTYAG/WWexZttcv6tg0ccCrq0TNl0112+jjwUURfFbk/3Dqp+96zDRxwLWarJ33Vy/jT4W7LnxePxhxeroYXYhdGfN9Xk2FY5AD63St9pEv2oW00LYU6uc/Nt+Ik6M8UMz5nIb3w9syTLBU1XV+2x91dR7YW2KXwthz4zH48/Nr4Kf5703v7vDJsY2j2kh7JlFT/qJWxf3RdmMaeklGMAOmhdCVVWdZ1PA95sc2yJ6GKLAXZhXXW27sb6I9pfKbY8DuENVVV00VdONtUxlWT7f5ELQdQksGLhZldNEVfVwC0NbmsCCgZs8ycuyfN7TxvpcAgsGLj/JJx5G8Xyb41qFwIKByx4o0fvG+jwCC4YvZU++2bmqKiewgJ0hsICdIbCAnSGwgJ0hsICdIbCAnSGwgJ0hsGBAUkpnRVEUMcZf7da8/jJta/7vaJtjXobAgoFoLrlZKrBCCE9TSpfN9q7v4SWwYCDWOZljjEcppXdteIUQnnY5tq4ILBiIrk7mGONRXdef6rp+1sX+ulLX9VuBBQPR5clc1/Wzuq4/dbW/LngQBQxI08M67XB//6SUevMswD49xQdYU0rptDmpX3S0v5d1XT/qYl9d2PVb4wATUko/2kokpXS8zr5ijEd9+dUwxniaUrqq6/rttscCdCildJyF1o8Y42WM8Tyl9DWl9LqqqieL7Keu60cppZd3Pd5JMcaXMcbTZtzfs9s5f9/0WIANSSm9CCE8zsLr1i2E8Li5M+n1lt2tdKGtKIpimfc32/GsMcUYj2OMnfXlgB1UVdWTlNLrlNLXGON52xtaIWzWDqzmM5dNVbXxig4AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAKCf/gUIFFE+uyiUBAAAAABJRU5ErkJggg==','Pass'),
('5','apple','shuiguo','20','10','2','data:image/png;base64,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','false'),
('6','sss','sss','sss','ss','sss','data:image/png;base64,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','false'),
('24b6793191d54b639b013b836b2a6924','ddcc','ccc','','ccc','c','aa','false');

/*Table structure for table `tb_employee` */

DROP TABLE IF EXISTS `tb_employee`;

CREATE TABLE `tb_employee` (
  `Number` varchar(10) DEFAULT NULL,
  `userName` varchar(15) DEFAULT NULL,
  `userPassword` varchar(6) DEFAULT NULL,
  `Jod` char(2) DEFAULT NULL,
  `Other` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `tb_employee` */

/*Table structure for table `tb_goods` */

DROP TABLE IF EXISTS `tb_goods`;

CREATE TABLE `tb_goods` (
  `runnumber` varchar(16) DEFAULT NULL,
  `goodsname` varchar(10) DEFAULT NULL,
  `goodstype` varchar(7) DEFAULT NULL,
  `price` double DEFAULT NULL,
  `Goodsinfo` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `tb_goods` */

/*Table structure for table `tb_storeinfo` */

DROP TABLE IF EXISTS `tb_storeinfo`;

CREATE TABLE `tb_storeinfo` (
  `number` varchar(10) NOT NULL,
  `datetime` varchar(40) DEFAULT NULL,
  `lasttime` varchar(40) DEFAULT NULL,
  `more` varchar(20) DEFAULT NULL,
  `little` varchar(20) DEFAULT NULL,
  `count` varchar(5) DEFAULT NULL,
  `cunkuinfo` varchar(100) DEFAULT NULL,
  `tixindate` varchar(40) DEFAULT NULL,
  `erweima` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 CHECKSUM=1 DELAY_KEY_WRITE=1 ROW_FORMAT=DYNAMIC;

/*Data for the table `tb_storeinfo` */

insert  into `tb_storeinfo`(`number`,`datetime`,`lasttime`,`more`,`little`,`count`,`cunkuinfo`,`tixindate`,`erweima`) values 
('100','2001-2-15','2016-2-5','105','50','0','apple','2016-2-5','1'),
('100','2001-2-15','2016-2-5','105','50','0','straberach','2016-2-5','2'),
('100','2001-2-15','2016-2-5','105','50','0','xigua','2016-2-5','3');

/*Table structure for table `tbdamaged` */

DROP TABLE IF EXISTS `tbdamaged`;

CREATE TABLE `tbdamaged` (
  `Badgoodsresoult` varchar(20) DEFAULT NULL,
  `Badgoodsdata` date DEFAULT NULL,
  `Man` varchar(10) DEFAULT NULL,
  `Badgoodsconunt` int(11) DEFAULT NULL,
  `Badgoodsinfo` varchar(100) DEFAULT NULL,
  `count_shuliang` varchar(300) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 CHECKSUM=1 DELAY_KEY_WRITE=1 ROW_FORMAT=DYNAMIC;

/*Data for the table `tbdamaged` */

insert  into `tbdamaged`(`Badgoodsresoult`,`Badgoodsdata`,`Man`,`Badgoodsconunt`,`Badgoodsinfo`,`count_shuliang`) values 
('Time to long','2016-01-05','Ting-Ting',0,'apple','10'),
('Time to long','2016-01-05','Ting-Ting',0,'pear','10'),
('Time to long','2016-01-05','Ting-Ting',0,'xigua','10'),
('Time to long','2016-01-05','Ting-Ting',0,'straberach','10');

/*Table structure for table `tbfencang_list` */

DROP TABLE IF EXISTS `tbfencang_list`;

CREATE TABLE `tbfencang_list` (
  `position` varchar(10) DEFAULT NULL,
  `changkuinfo` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 CHECKSUM=1 DELAY_KEY_WRITE=1 ROW_FORMAT=DYNAMIC;

/*Data for the table `tbfencang_list` */

insert  into `tbfencang_list`(`position`,`changkuinfo`) values 
('A','pear'),
('A','apple'),
('A','straberach'),
('A','xigua'),
('A','XIANGJIAO'),
('A','papperappshone');

/*Table structure for table `tbinto` */

DROP TABLE IF EXISTS `tbinto`;

CREATE TABLE `tbinto` (
  `goodsinfomation` varchar(100) NOT NULL,
  `goodsdate` varchar(40) NOT NULL,
  `pici` varchar(11) NOT NULL,
  `number` varchar(11) NOT NULL,
  `product_time` varchar(50) NOT NULL,
  `baozhiqi` varchar(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 CHECKSUM=1 DELAY_KEY_WRITE=1 ROW_FORMAT=DYNAMIC;

/*Data for the table `tbinto` */

insert  into `tbinto`(`goodsinfomation`,`goodsdate`,`pici`,`number`,`product_time`,`baozhiqi`) values 
('pear','2001-3-3','2','100','',NULL),
('apple','2001-3-3','2','100','',NULL),
('straberach','2001-3-3','2','100','',NULL),
('xigua','2001-3-3','2','100','',NULL),
('a','0','10','1','',NULL),
('or','2002','20','23','',NULL),
('xiangjiao','2019-04-03','44','525','2019-04-04','25'),
('pear','2019-04-03','d','d','2019-04-01','d'),
('pear','2019-04-01','20','800','2019-04-01','22'),
('pear','2019-04-05','25','800','2019-04-02','52'),
('pear','2019-04-03','kk','kk','2019-04-01','kk'),
('pear','2019-04-03','ii','ii','2019-04-01','hh'),
('pear','2019-04-06','dd','dd','2019-04-02','dd'),
('pear','2019-04-02','dd','dd','2019-04-10','dd'),
('pear','2019-05-22','52','50','2015-5-8','25'),
('pear','2019-05-20','25','250','2015-2-5','25'),
('pear','2019-05-20','25','250','2015-2-5','25'),
('pear','2019-05-20','25','250','2015-2-5','25'),
('pear','2019-05-20','25','250','2015-2-5','25'),
('pear','2019-05-20','25','250','2015-2-5','25'),
('pear','2019-05-20','25','250','2015-2-5','25'),
('cccc','','','','','c'),
('cccc','','','','','1'),
('cccc','','','','','125'),
('ddd','','','','','12'),
('ddd','','','','','12'),
('','','','','',''),
('250','','','','',''),
('250','','','','',''),
('250','','','','','2'),
('','','','','',''),
('','','','','',''),
('222','','','','',''),
('222','','','','',''),
('','','','','',''),
('022','','','','',''),
('022','','','','',''),
('','','','','',''),
('','','','','',''),
('250','','','','',NULL),
('250','','','','',NULL),
('250','','','','',NULL),
('250','','','','',NULL),
('','','','','',NULL),
('250','','','','',NULL),
('250','','','','',NULL),
('250','','','','',NULL),
('?','','','','',NULL),
('?22','','','','',NULL),
('?22','','','','',NULL),
('?22','','','','',NULL),
('?22','','','','',NULL),
('?22','','2','','',NULL),
('?22','','2','','',NULL),
('pear','','','','',''),
('pear','2019-05-28','250','250','2019-05-31','250'),
('pear','','','','',''),
('pear','','','','','250'),
('pear','','','','','250'),
('pear','','','','','250'),
('pear','','2','','','250'),
('pear','','2','20','','250'),
('pear','5','2','20','','250'),
('pear','2019-05-02','2','20','2019-05-30','250'),
('','','','','',''),
('','','','','',''),
('','','','','',''),
('','','','','',''),
('','','','','',''),
('','','','','',''),
('','','','','',''),
('','','','','',''),
('','','','','','');

/*Table structure for table `tbout` */

DROP TABLE IF EXISTS `tbout`;

CREATE TABLE `tbout` (
  `goodsdate` varchar(20) DEFAULT NULL,
  `goodscount` int(11) DEFAULT NULL,
  `shangpingname` varchar(100) DEFAULT NULL,
  `cangkuname` varchar(10) DEFAULT NULL,
  `marketid` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 CHECKSUM=1 DELAY_KEY_WRITE=1 ROW_FORMAT=DYNAMIC;

/*Data for the table `tbout` */

insert  into `tbout`(`goodsdate`,`goodscount`,`shangpingname`,`cangkuname`,`marketid`) values 
('2016-2-6',10,'apple','A',NULL),
('2016-2-6',10,'pear','A',NULL),
('2016-2-6',10,'straberach','A',NULL),
('2016-2-6',10,'xigua','A',NULL);

/*Table structure for table `tbtype` */

DROP TABLE IF EXISTS `tbtype`;

CREATE TABLE `tbtype` (
  `Postion` varchar(20) DEFAULT NULL,
  `Fenchanginfo` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `tbtype` */

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `Id` int(11) DEFAULT NULL,
  `userName` varchar(10) DEFAULT NULL,
  `passWord` varchar(6) DEFAULT NULL,
  `idCard` varchar(18) DEFAULT NULL,
  `Sex` char(2) DEFAULT NULL,
  `Tel` varchar(11) DEFAULT NULL,
  `Address` varchar(30) DEFAULT NULL,
  `Email` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `users` */

/*Table structure for table `wares` */

DROP TABLE IF EXISTS `wares`;

CREATE TABLE `wares` (
  `Id` int(11) DEFAULT NULL,
  `goodsType` varchar(5) DEFAULT NULL,
  `WaresName` varchar(20) DEFAULT NULL,
  `goodsNum` int(11) DEFAULT NULL,
  `Size` varchar(10) DEFAULT NULL,
  `Price` int(11) DEFAULT NULL,
  `Yieldly` varchar(30) DEFAULT NULL,
  `Info` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `wares` */

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
