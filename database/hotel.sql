-- creat dataBase
DROP DATABASE IF EXISTS `hotel`;
CREATE DATABASE IF NOT EXISTS `hotel` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `hotel`;


DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL DEFAULT '' COMMENT '',
  `first` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否入住过',
  `sex` tinyint(1) NOT NULL DEFAULT '1' COMMENT '1:男,2:女',
  `code` VARCHAR (35) NOT NULL DEFAULT '0' COMMENT '证件号',
  `create_at` int NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_at` int NOT NULL DEFAULT '0' COMMENT '修改时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='用户';

DROP TABLE IF EXISTS `rooms`;
CREATE TABLE `rooms` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `photos_id` int (11) NOT NULL DEFAULT '0' COMMENT '照片',
  `type` varchar(20) NOT NULL DEFAULT '' COMMENT '',
  `status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '入住状态',
  `morning` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否含早餐',
  `window` tinyint(1) NOT NULL DEFAULT '1' COMMENT '是否有窗',
  `cancel` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否能取消',
  `people` int(8) NOT NULL DEFAULT '2' COMMENT '可入住人数',
  `price` int(5) NOT NULL DEFAULT '0' COMMENT '',
  `describe` VARCHAR (255) NOT NULL DEFAULT '' COMMENT '描述',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='房间';



DROP TABLE IF EXISTS `booking_rooms`;
CREATE TABLE `booking_rooms` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `userid` int (11) NOT NULL COMMENT '',
  `phone` int (12) NOT NULL COMMENT '手机号',
  `room_id` int (11) NOT NULL COMMENT '',
  `price` int NOT NULL COMMENT '最终入住价格',
  `reserve_time_at` int NOT NULL DEFAULT '0' COMMENT '订房时间',
  `in_time_at` int NOT NULL DEFAULT '0' COMMENT '入住时间',
  `out_time_at` int NOT NULL DEFAULT '0' COMMENT '退房时间',
  `create_at` int NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_at` int NOT NULL DEFAULT '0' COMMENT '修改时间',
  `discount` tinyint(1) NOT NULL DEFAULT '1' COMMENT '是否有折扣',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='订房间';

DROP TABLE IF EXISTS `comment`;
CREATE TABLE `comment` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `userid` int (11) NOT NULL COMMENT '',
  `room_id` int (11) NOT NULL COMMENT '',
  `create_at` int NOT NULL DEFAULT '0' COMMENT '创建时间',
  `content` VARCHAR(255) COMMENT '评论内容',
  `stars` VARCHAR (25)NOT NULL DEFAULT '0' COMMENT '评分',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='订房间';