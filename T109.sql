/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8mb3 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

DROP DATABASE IF EXISTS `t109`;
CREATE DATABASE IF NOT EXISTS `t109` /*!40100 DEFAULT CHARACTER SET utf8mb3 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `t109`;

DROP TABLE IF EXISTS `config`;
CREATE TABLE IF NOT EXISTS `config` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb3 COMMENT='配置文件';

DELETE FROM `config`;
INSERT INTO `config` (`id`, `name`, `value`) VALUES
	(1, 'picture1', 'http://localhost:8080/springboote2a78/upload/picture1.jpg'),
	(2, 'picture2', 'http://localhost:8080/springboote2a78/upload/picture2.jpg'),
	(3, 'picture3', 'http://localhost:8080/springboote2a78/upload/picture3.jpg'),
	(6, 'homepage', 'https://asoa-1305425069.cos.ap-shanghai.myqcloud.com/1669635627773202432.png');

DROP TABLE IF EXISTS `discussgequxinxi`;
CREATE TABLE IF NOT EXISTS `discussgequxinxi` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint NOT NULL COMMENT '关联表id',
  `userid` bigint NOT NULL COMMENT '用户id',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1620465806044 DEFAULT CHARSET=utf8mb3 COMMENT='歌曲信息评论表';

DELETE FROM `discussgequxinxi`;
INSERT INTO `discussgequxinxi` (`id`, `addtime`, `refid`, `userid`, `nickname`, `content`, `reply`) VALUES
	(51, '2021-05-08 09:07:49', 1, 1, '用户名1', '评论内容1', '回复内容1'),
	(52, '2021-05-08 09:07:49', 2, 2, '用户名2', '评论内容2', '回复内容2'),
	(53, '2021-05-08 09:07:49', 3, 3, '用户名3', '评论内容3', '回复内容3'),
	(54, '2021-05-08 09:07:49', 4, 4, '用户名4', '评论内容4', '回复内容4'),
	(55, '2021-05-08 09:07:49', 5, 5, '用户名5', '评论内容5', '回复内容5'),
	(56, '2021-05-08 09:07:49', 6, 6, '用户名6', '评论内容6', '回复内容6'),
	(1620465806043, '2021-05-08 09:23:25', 31, 1620465731617, '11', '好听', NULL);

DROP TABLE IF EXISTS `gequfenlei`;
CREATE TABLE IF NOT EXISTS `gequfenlei` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `gequfenlei` varchar(200) DEFAULT NULL COMMENT '歌曲分类',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb3 COMMENT='歌曲分类';

DELETE FROM `gequfenlei`;
INSERT INTO `gequfenlei` (`id`, `addtime`, `gequfenlei`) VALUES
	(21, '2021-05-08 09:07:49', '流行歌曲'),
	(22, '2021-05-08 09:07:49', '歌曲分类2'),
	(23, '2021-05-08 09:07:49', '歌曲分类3'),
	(24, '2021-05-08 09:07:49', '歌曲分类4'),
	(25, '2021-05-08 09:07:49', '歌曲分类5'),
	(26, '2021-05-08 09:07:49', '歌曲分类6');

DROP TABLE IF EXISTS `gequxinxi`;
CREATE TABLE IF NOT EXISTS `gequxinxi` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `gequmingcheng` varchar(200) DEFAULT NULL COMMENT '歌曲名称',
  `haibao` varchar(200) DEFAULT NULL COMMENT '海报',
  `gequfenlei` varchar(200) DEFAULT NULL COMMENT '歌曲分类',
  `geshou` varchar(200) DEFAULT NULL COMMENT '歌手',
  `zuoci` varchar(200) DEFAULT NULL COMMENT '作词',
  `zuoqu` varchar(200) DEFAULT NULL COMMENT '作曲',
  `yinle` varchar(200) DEFAULT NULL COMMENT '音乐',
  `shipin` varchar(200) DEFAULT NULL COMMENT '视频',
  `gequjianjie` longtext COMMENT '歌曲简介',
  `clicktime` datetime DEFAULT NULL COMMENT '最近点击时间',
  `clicknum` int DEFAULT '0' COMMENT '点击次数',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb3 COMMENT='歌曲信息';

DELETE FROM `gequxinxi`;
INSERT INTO `gequxinxi` (`id`, `addtime`, `gequmingcheng`, `haibao`, `gequfenlei`, `geshou`, `zuoci`, `zuoqu`, `yinle`, `shipin`, `gequjianjie`, `clicktime`, `clicknum`) VALUES
	(31, '2021-05-08 09:07:49', '歌曲名称1', 'http://localhost:8080/springboote2a78/upload/gequxinxi_haibao1.jpg', '流行歌曲', '歌手1', '作词1', '作曲1', '', 'http://localhost:8080/springboote2a78/upload/1620465421444.mp4', '歌曲简介1', '2024-02-16 13:58:58', 13),
	(32, '2021-05-08 09:07:49', '歌曲名称2', 'http://localhost:8080/springboote2a78/upload/gequxinxi_haibao2.jpg', '歌曲分类2', '歌手2', '作词2', '作曲2', '', '', '歌曲简介2', '2024-02-16 13:59:38', 3),
	(33, '2021-05-08 09:07:49', '歌曲名称3', 'http://localhost:8080/springboote2a78/upload/gequxinxi_haibao3.jpg', '歌曲分类3', '歌手3', '作词3', '作曲3', '', '', '歌曲简介3', '2021-05-08 17:07:49', 3),
	(34, '2021-05-08 09:07:49', '歌曲名称4', 'http://localhost:8080/springboote2a78/upload/gequxinxi_haibao4.jpg', '歌曲分类4', '歌手4', '作词4', '作曲4', '', '', '歌曲简介4', '2024-02-16 13:56:21', 5),
	(35, '2021-05-08 09:07:49', '歌曲名称5', 'http://localhost:8080/springboote2a78/upload/gequxinxi_haibao5.jpg', '歌曲分类5', '歌手5', '作词5', '作曲5', '', '', '歌曲简介5', '2021-05-08 17:07:49', 5),
	(36, '2021-05-08 09:07:49', '歌曲名称6', 'http://localhost:8080/springboote2a78/upload/gequxinxi_haibao6.jpg', '歌曲分类6', '歌手6', '作词6', '作曲6', '', '', '歌曲简介6', '2024-02-16 13:58:54', 8);

DROP TABLE IF EXISTS `token`;
CREATE TABLE IF NOT EXISTS `token` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COMMENT='token表';

DELETE FROM `token`;
INSERT INTO `token` (`id`, `userid`, `username`, `tablename`, `role`, `token`, `addtime`, `expiratedtime`) VALUES
	(1, 1, 'abo', 'users', '管理员', 'epajhttyf0cli0p894xn9t712y46qtqo', '2021-05-08 09:16:04', '2024-02-16 06:58:32'),
	(2, 1620465731617, '11', 'yonghu', '用户', 'qchjmcb8x2svl8nyp9z215spesled00o', '2021-05-08 09:22:39', '2021-05-08 10:22:40'),
	(3, 11, '用户1', 'yonghu', '用户', 'dpi8mp3lhsxbwnwv7zvveq11twmps6u7', '2024-02-16 05:59:15', '2024-02-16 06:59:16');

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 COMMENT='用户表';

DELETE FROM `users`;
INSERT INTO `users` (`id`, `username`, `password`, `role`, `addtime`) VALUES
	(1, 'admin', '123456', '管理员', '2021-05-08 09:07:49');

DROP TABLE IF EXISTS `yinlexiazai`;
CREATE TABLE IF NOT EXISTS `yinlexiazai` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yonghuming` varchar(200) DEFAULT NULL COMMENT '用户名',
  `yonghuxingming` varchar(200) DEFAULT NULL COMMENT '用户姓名',
  `gequmingcheng` varchar(200) DEFAULT NULL COMMENT '歌曲名称',
  `gequfenlei` varchar(200) DEFAULT NULL COMMENT '歌曲分类',
  `geshou` varchar(200) DEFAULT NULL COMMENT '歌手',
  `yinle` varchar(200) DEFAULT NULL COMMENT '音乐',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1620465832001 DEFAULT CHARSET=utf8mb3 COMMENT='音乐下载';

DELETE FROM `yinlexiazai`;
INSERT INTO `yinlexiazai` (`id`, `addtime`, `yonghuming`, `yonghuxingming`, `gequmingcheng`, `gequfenlei`, `geshou`, `yinle`) VALUES
	(41, '2021-05-08 09:07:49', '用户名1', '用户姓名1', '歌曲名称1', '歌曲分类1', '歌手1', ''),
	(42, '2021-05-08 09:07:49', '用户名2', '用户姓名2', '歌曲名称2', '歌曲分类2', '歌手2', ''),
	(43, '2021-05-08 09:07:49', '用户名3', '用户姓名3', '歌曲名称3', '歌曲分类3', '歌手3', ''),
	(44, '2021-05-08 09:07:49', '用户名4', '用户姓名4', '歌曲名称4', '歌曲分类4', '歌手4', ''),
	(45, '2021-05-08 09:07:49', '用户名5', '用户姓名5', '歌曲名称5', '歌曲分类5', '歌手5', ''),
	(46, '2021-05-08 09:07:49', '用户名6', '用户姓名6', '歌曲名称6', '歌曲分类6', '歌手6', ''),
	(1620465832000, '2021-05-08 09:23:51', '11', '杨丽', '歌曲名称1', '歌曲分类1', '歌手1', NULL);

DROP TABLE IF EXISTS `yonghu`;
CREATE TABLE IF NOT EXISTS `yonghu` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yonghuming` varchar(200) NOT NULL COMMENT '用户名',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `yonghuxingming` varchar(200) NOT NULL COMMENT '用户姓名',
  `touxiang` varchar(200) DEFAULT NULL COMMENT '头像',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `nianling` varchar(200) DEFAULT NULL COMMENT '年龄',
  `shoujihaoma` varchar(200) DEFAULT NULL COMMENT '手机号码',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  PRIMARY KEY (`id`),
  UNIQUE KEY `yonghuming` (`yonghuming`)
) ENGINE=InnoDB AUTO_INCREMENT=1620465731618 DEFAULT CHARSET=utf8mb3 COMMENT='用户';

DELETE FROM `yonghu`;
INSERT INTO `yonghu` (`id`, `addtime`, `yonghuming`, `mima`, `yonghuxingming`, `touxiang`, `xingbie`, `nianling`, `shoujihaoma`, `youxiang`) VALUES
	(11, '2021-05-08 09:07:49', '用户1', '123456', '用户姓名1', 'http://localhost:8080/springboote2a78/upload/yonghu_touxiang1.jpg', '男', '年龄1', '13823888881', '773890001@qq.com'),
	(12, '2021-05-08 09:07:49', '用户2', '123456', '用户姓名2', 'http://localhost:8080/springboote2a78/upload/yonghu_touxiang2.jpg', '男', '年龄2', '13823888882', '773890002@qq.com'),
	(13, '2021-05-08 09:07:49', '用户3', '123456', '用户姓名3', 'http://localhost:8080/springboote2a78/upload/yonghu_touxiang3.jpg', '男', '年龄3', '13823888883', '773890003@qq.com'),
	(14, '2021-05-08 09:07:49', '用户4', '123456', '用户姓名4', 'http://localhost:8080/springboote2a78/upload/yonghu_touxiang4.jpg', '男', '年龄4', '13823888884', '773890004@qq.com'),
	(15, '2021-05-08 09:07:49', '用户5', '123456', '用户姓名5', 'http://localhost:8080/springboote2a78/upload/yonghu_touxiang5.jpg', '男', '年龄5', '13823888885', '773890005@qq.com'),
	(16, '2021-05-08 09:07:49', '用户6', '123456', '用户姓名6', 'http://localhost:8080/springboote2a78/upload/yonghu_touxiang6.jpg', '男', '年龄6', '13823888886', '773890006@qq.com'),
	(1620465731617, '2021-05-08 09:22:11', '11', '123456', '杨丽', 'http://localhost:8080/springboote2a78/upload/1620465779586.jpg', '女', '25', '13823866666', NULL);

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
