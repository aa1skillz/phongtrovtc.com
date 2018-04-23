CREATE DATABASE `db_qlphongtro` /*!40100 DEFAULT CHARACTER SET utf8 */;

CREATE TABLE `tbl_user` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `roles` bit(1) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;


