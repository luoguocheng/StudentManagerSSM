
CREATE TABLE `c3p0testtable` (
  `a` CHAR(1) DEFAULT NULL
) ENGINE=INNODB DEFAULT CHARSET=utf8;


CREATE TABLE `clazz` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `gradeId` INT(11) NOT NULL,
  `name` VARCHAR(32) NOT NULL,
  `remark` VARCHAR(512) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `gradeId` (`gradeId`),
  CONSTRAINT `clazz_ibfk_1` FOREIGN KEY (`gradeId`) REFERENCES `grade` (`id`)
) ENGINE=INNODB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8;



CREATE TABLE `grade` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(32) NOT NULL,
  `remark` VARCHAR(512) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=INNODB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

CREATE TABLE `student` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `clazzId` INT(11) NOT NULL,
  `sn` VARCHAR(32) NOT NULL,
  `username` VARCHAR(32) NOT NULL,
  `password` VARCHAR(32) NOT NULL,
  `sex` VARCHAR(8) NOT NULL,
  `photo` VARCHAR(128) NOT NULL,
  `remark` VARCHAR(512) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `gradeId` (`clazzId`),
  CONSTRAINT `student_ibfk_1` FOREIGN KEY (`clazzId`) REFERENCES `clazz` (`id`)
) ENGINE=INNODB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;



CREATE TABLE `user` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `username` VARCHAR(32) NOT NULL,
  `password` VARCHAR(32) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=INNODB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;
