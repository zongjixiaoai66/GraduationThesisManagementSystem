/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8mb3 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

DROP DATABASE IF EXISTS `t251`;
CREATE DATABASE IF NOT EXISTS `t251` /*!40100 DEFAULT CHARACTER SET utf8mb3 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `t251`;

DROP TABLE IF EXISTS `biyeluenwen`;
CREATE TABLE IF NOT EXISTS `biyeluenwen` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `zhonggaoshenhe_name` varchar(200) DEFAULT NULL COMMENT '标题  Search111 ',
  `zhonggaoshenhe_file` varchar(200) DEFAULT NULL COMMENT '论文文件',
  `yonghu_id` int DEFAULT NULL COMMENT '用户',
  `biyeluenwen_yesno_types` int DEFAULT NULL COMMENT '打分状态 Search111',
  `biyeluenwen_num` int DEFAULT NULL COMMENT '现阶段分数',
  `biyeluenwen_yesno_text` text COMMENT '评语',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 nameShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3 COMMENT='毕业论文';

DELETE FROM `biyeluenwen`;
INSERT INTO `biyeluenwen` (`id`, `zhonggaoshenhe_name`, `zhonggaoshenhe_file`, `yonghu_id`, `biyeluenwen_yesno_types`, `biyeluenwen_num`, `biyeluenwen_yesno_text`, `create_time`) VALUES
	(3, '标题3', 'http://localhost:8080/biyeluenwenguanlix/upload/file.rar', 3, 1, 0, NULL, '2022-04-26 02:02:27'),
	(4, '标题4', 'http://localhost:8080/biyeluenwenguanlix/upload/file.rar', 2, 1, 0, NULL, '2022-04-26 02:02:27'),
	(5, '标题5', 'http://localhost:8080/biyeluenwenguanlix/upload/file.rar', 1, 4, 50, '评语', '2022-04-26 02:02:27');

DROP TABLE IF EXISTS `config`;
CREATE TABLE IF NOT EXISTS `config` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='配置文件';

DELETE FROM `config`;

DROP TABLE IF EXISTS `dictionary`;
CREATE TABLE IF NOT EXISTS `dictionary` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dic_code` varchar(200) DEFAULT NULL COMMENT '字段',
  `dic_name` varchar(200) DEFAULT NULL COMMENT '字段名',
  `code_index` int DEFAULT NULL COMMENT '编码',
  `index_name` varchar(200) DEFAULT NULL COMMENT '编码名字  Search111 ',
  `super_id` int DEFAULT NULL COMMENT '父字段id',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=utf8mb3 COMMENT='字典表';

DELETE FROM `dictionary`;
INSERT INTO `dictionary` (`id`, `dic_code`, `dic_name`, `code_index`, `index_name`, `super_id`, `beizhu`, `create_time`) VALUES
	(15, 'keti_types', '课题类型', 1, '课题类型1', NULL, NULL, '2022-04-26 02:01:00'),
	(16, 'keti_types', '课题类型', 2, '课题类型2', NULL, NULL, '2022-04-26 02:01:00'),
	(17, 'keti_types', '课题类型', 3, '课题类型3', NULL, NULL, '2022-04-26 02:01:00'),
	(18, 'keti_yesno_types', '申请状态', 1, '审核中', NULL, NULL, '2022-04-26 02:01:00'),
	(19, 'keti_yesno_types', '申请状态', 2, '可选题', NULL, NULL, '2022-04-26 02:01:00'),
	(20, 'keti_yesno_types', '申请状态', 3, '拒绝', NULL, NULL, '2022-04-26 02:01:00'),
	(21, 'keti_yesno_types', '申请状态', 4, '申请中', NULL, NULL, '2022-04-26 02:01:00'),
	(22, 'keti_yesno_types', '申请状态', 5, '已选', NULL, NULL, '2022-04-26 02:01:00'),
	(23, 'xuantishenqing_yesno_types', '申请状态', 1, '审核中', NULL, NULL, '2022-04-26 02:01:00'),
	(24, 'xuantishenqing_yesno_types', '申请状态', 2, '通过', NULL, NULL, '2022-04-26 02:01:00'),
	(25, 'xuantishenqing_yesno_types', '申请状态', 3, '拒绝', NULL, NULL, '2022-04-26 02:01:00'),
	(26, 'ketirenwu_types', '任务类型', 1, '任务类型1', NULL, NULL, '2022-04-26 02:01:00'),
	(27, 'ketirenwu_types', '任务类型', 2, '任务类型2', NULL, NULL, '2022-04-26 02:01:00'),
	(28, 'ketirenwu_types', '任务类型', 3, '任务类型3', NULL, NULL, '2022-04-26 02:01:00'),
	(29, 'ketirenwu_yesno_types', '申请状态', 1, '审核中', NULL, NULL, '2022-04-26 02:01:00'),
	(30, 'ketirenwu_yesno_types', '申请状态', 2, '通过', NULL, NULL, '2022-04-26 02:01:00'),
	(31, 'ketirenwu_yesno_types', '申请状态', 3, '拒绝', NULL, NULL, '2022-04-26 02:01:00'),
	(32, 'news_types', '公告类型', 1, '公告类型1', NULL, NULL, '2022-04-26 02:01:00'),
	(33, 'news_types', '公告类型', 2, '公告类型2', NULL, NULL, '2022-04-26 02:01:00'),
	(34, 'news_types', '公告类型', 3, '公告类型3', NULL, NULL, '2022-04-26 02:01:00'),
	(35, 'xueyuan_types', '学院', 1, '学院1', NULL, NULL, '2022-04-26 02:01:00'),
	(36, 'xueyuan_types', '学院', 2, '学院2', NULL, NULL, '2022-04-26 02:01:00'),
	(37, 'xueyuan_types', '学院', 3, '学院3', NULL, NULL, '2022-04-26 02:01:00'),
	(38, 'banji_types', '班级', 1, '班级1', NULL, NULL, '2022-04-26 02:01:01'),
	(39, 'banji_types', '班级', 2, '班级2', NULL, NULL, '2022-04-26 02:01:01'),
	(40, 'banji_types', '班级', 3, '班级3', NULL, NULL, '2022-04-26 02:01:01'),
	(41, 'biyeluenwen_yesno_types', '打分状态', 1, '指导教师审核中', NULL, NULL, '2022-04-26 02:01:01'),
	(42, 'biyeluenwen_yesno_types', '打分状态', 2, '指导教师审核通过', NULL, NULL, '2022-04-26 02:01:01'),
	(43, 'biyeluenwen_yesno_types', '打分状态', 3, '指导教师审核拒绝', NULL, NULL, '2022-04-26 02:01:01'),
	(44, 'biyeluenwen_yesno_types', '打分状态', 4, '评阅教师已评分', NULL, NULL, '2022-04-26 02:01:01'),
	(45, 'biyeluenwen_yesno_types', '打分状态', 5, '最终答辩成绩', NULL, NULL, '2022-04-26 02:01:01'),
	(46, 'sex_types', '性别', 1, '男', NULL, NULL, '2022-04-26 02:01:01'),
	(47, 'sex_types', '性别', 2, '女', NULL, NULL, '2022-04-26 02:01:01');

DROP TABLE IF EXISTS `keti`;
CREATE TABLE IF NOT EXISTS `keti` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `keti_name` varchar(200) DEFAULT NULL COMMENT '课题名称 Search111',
  `keti_types` int DEFAULT NULL COMMENT '课题类型 Search111',
  `keti_text` text COMMENT '课题内容',
  `zhidaojiaoshi_id` int DEFAULT NULL COMMENT '教师',
  `keti_yesno_types` int DEFAULT NULL COMMENT '审核状态 Search111',
  `keti_yesno_text` text COMMENT '审核结果',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3 COMMENT='课题信息';

DELETE FROM `keti`;
INSERT INTO `keti` (`id`, `keti_name`, `keti_types`, `keti_text`, `zhidaojiaoshi_id`, `keti_yesno_types`, `keti_yesno_text`, `create_time`) VALUES
	(1, '课题名称1', 1, '课题内容1', 3, 1, NULL, '2022-04-26 02:02:27'),
	(2, '课题名称2', 3, '课题内容2', 2, 2, '123', '2022-04-26 02:02:27'),
	(3, '课题名称3', 2, '课题内容3', 1, 2, '通过3', '2022-04-26 02:02:27'),
	(4, '课题名称4', 1, '课题内容4', 2, 5, '通过2', '2022-04-26 02:02:27'),
	(5, '课题名称5', 3, '课题内容5', 3, 5, '通过1', '2022-04-26 02:02:27');

DROP TABLE IF EXISTS `ketirenwu`;
CREATE TABLE IF NOT EXISTS `ketirenwu` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `zhidaojiaoshi_id` int DEFAULT NULL COMMENT '教师',
  `xuantishenqing_id` int DEFAULT NULL COMMENT '选题申请',
  `ketirenwu_name` varchar(200) DEFAULT NULL COMMENT '课题任务  Search111 ',
  `ketirenwu_types` int DEFAULT NULL COMMENT '任务类型  Search111 ',
  `ketirenwu_file` varchar(200) DEFAULT NULL COMMENT '参考文献',
  `ketirenwu_huida_file` varchar(200) DEFAULT NULL COMMENT '阶段文档',
  `ketirenwu_yesno_types` int DEFAULT NULL COMMENT '审核结果',
  `ketirenwu_yesno_text` text COMMENT '教师打分',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 nameShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb3 COMMENT='课题任务';

DELETE FROM `ketirenwu`;
INSERT INTO `ketirenwu` (`id`, `zhidaojiaoshi_id`, `xuantishenqing_id`, `ketirenwu_name`, `ketirenwu_types`, `ketirenwu_file`, `ketirenwu_huida_file`, `ketirenwu_yesno_types`, `ketirenwu_yesno_text`, `insert_time`, `create_time`) VALUES
	(3, 2, 3, '课题任务3', 2, 'http://localhost:8080/biyeluenwenguanlix/upload/file.rar', 'http://localhost:8080/biyeluenwenguanlix/upload/file.rar', 1, NULL, '2022-04-26 02:02:27', '2022-04-26 02:02:27'),
	(4, 2, 4, '课题任务4', 3, 'http://localhost:8080/biyeluenwenguanlix/upload/file.rar', 'http://localhost:8080/biyeluenwenguanlix/upload/file.rar', 1, NULL, '2022-04-26 02:02:27', '2022-04-26 02:02:27'),
	(5, 3, 5, '课题任务5', 3, 'http://localhost:8080/biyeluenwenguanlix/upload/file.rar', 'http://localhost:8080/biyeluenwenguanlix/upload/file.rar', 2, '50', '2022-04-26 02:02:27', '2022-04-26 02:02:27'),
	(8, 1, 5, '选择学生的课题然后发布任务 对应学生可以看到任务并回答', 1, 'http://localhost:8080/biyeluenwenguanlix/upload/1650943167504.doc', 'http://localhost:8080/biyeluenwenguanlix/upload/1650943189761.xls', 2, '50', '2022-04-26 03:19:29', '2022-04-26 03:19:29');

DROP TABLE IF EXISTS `news`;
CREATE TABLE IF NOT EXISTS `news` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `news_name` varchar(200) DEFAULT NULL COMMENT '公告标题  Search111 ',
  `news_types` int DEFAULT NULL COMMENT '公告类型  Search111 ',
  `news_photo` varchar(200) DEFAULT NULL COMMENT '公告图片',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  `news_content` text COMMENT '公告详情',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 nameShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3 COMMENT='公告信息';

DELETE FROM `news`;
INSERT INTO `news` (`id`, `news_name`, `news_types`, `news_photo`, `insert_time`, `news_content`, `create_time`) VALUES
	(1, '公告标题1', 2, 'http://localhost:8080/biyeluenwenguanlix/upload/news1.jpg', '2022-04-26 02:02:27', '公告详情1', '2022-04-26 02:02:27'),
	(2, '公告标题2', 2, 'http://localhost:8080/biyeluenwenguanlix/upload/news2.jpg', '2022-04-26 02:02:27', '公告详情2', '2022-04-26 02:02:27'),
	(3, '公告标题3', 2, 'http://localhost:8080/biyeluenwenguanlix/upload/news3.jpg', '2022-04-26 02:02:27', '公告详情3', '2022-04-26 02:02:27'),
	(4, '公告标题4', 3, 'http://localhost:8080/biyeluenwenguanlix/upload/news4.jpg', '2022-04-26 02:02:27', '公告详情4', '2022-04-26 02:02:27'),
	(5, '公告标题5', 2, 'http://localhost:8080/biyeluenwenguanlix/upload/news5.jpg', '2022-04-26 02:02:27', '公告详情5', '2022-04-26 02:02:27');

DROP TABLE IF EXISTS `pingyuejiaoshi`;
CREATE TABLE IF NOT EXISTS `pingyuejiaoshi` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `pingyuejiaoshi_name` varchar(200) DEFAULT NULL COMMENT '评阅教师姓名 Search111 ',
  `pingyuejiaoshi_photo` varchar(255) DEFAULT NULL COMMENT '头像',
  `sex_types` int DEFAULT NULL COMMENT '性别 Search111 ',
  `pingyuejiaoshi_phone` varchar(200) DEFAULT NULL COMMENT '联系方式',
  `pingyuejiaoshi_email` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COMMENT='评阅教师';

DELETE FROM `pingyuejiaoshi`;
INSERT INTO `pingyuejiaoshi` (`id`, `username`, `password`, `pingyuejiaoshi_name`, `pingyuejiaoshi_photo`, `sex_types`, `pingyuejiaoshi_phone`, `pingyuejiaoshi_email`, `insert_time`, `create_time`) VALUES
	(1, '评阅教师1', '123456', '评阅教师姓名1', 'http://localhost:8080/biyeluenwenguanlix/upload/pingyuejiaoshi1.jpg', 1, '17703786901', '1@qq.com', '2022-04-26 02:02:27', '2022-04-26 02:02:27'),
	(2, '评阅教师2', '123456', '评阅教师姓名2', 'http://localhost:8080/biyeluenwenguanlix/upload/pingyuejiaoshi2.jpg', 2, '17703786902', '2@qq.com', '2022-04-26 02:02:27', '2022-04-26 02:02:27'),
	(3, '评阅教师3', '123456', '评阅教师姓名3', 'http://localhost:8080/biyeluenwenguanlix/upload/pingyuejiaoshi3.jpg', 2, '17703786903', '3@qq.com', '2022-04-26 02:02:27', '2022-04-26 02:02:27');

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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3 COMMENT='token表';

DELETE FROM `token`;
INSERT INTO `token` (`id`, `userid`, `username`, `tablename`, `role`, `token`, `addtime`, `expiratedtime`) VALUES
	(1, 1, 'admin', 'users', '管理员', 'bxuxlgrnwonwys4bp3iens6b67q504zj', '2022-04-26 02:31:27', '2024-07-10 01:59:04'),
	(2, 1, 'a1', 'pingyuejiaoshi', '评阅教师', '21twsfnihpcr52extrspoumr77c8u6g4', '2022-04-26 02:40:16', '2024-07-10 02:00:21'),
	(3, 1, 'a1', 'yonghu', '用户', 'htzo0a55uzhupcs2tyj4bdm102uwg5yc', '2022-04-26 03:00:40', '2024-07-10 02:00:34'),
	(4, 1, 'a1', 'zhidaojiaoshi', '指导教师', '480ua87hj31lj6xm2tejnqy778g5996q', '2022-04-26 03:16:25', '2024-07-10 02:00:07'),
	(5, 2, 'a2', 'yonghu', '用户', '17w7op1o4egu707dwk3p2o3ep93g1ym9', '2022-04-26 03:17:46', '2022-04-26 04:17:47');

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
	(1, 'admin', '123456', '管理员', '2022-04-30 16:00:00');

DROP TABLE IF EXISTS `xuantishenqing`;
CREATE TABLE IF NOT EXISTS `xuantishenqing` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `xuantishenqing_uuid_number` varchar(200) DEFAULT NULL COMMENT '课题编号',
  `yonghu_id` int DEFAULT NULL COMMENT '学生',
  `keti_id` int DEFAULT NULL COMMENT '课题',
  `xuantishenqing_yesno_types` int DEFAULT NULL COMMENT '申请状态 Search111',
  `xuantishenqing_yesno_text` text COMMENT '申请结果',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb3 COMMENT='选题申请';

DELETE FROM `xuantishenqing`;
INSERT INTO `xuantishenqing` (`id`, `xuantishenqing_uuid_number`, `yonghu_id`, `keti_id`, `xuantishenqing_yesno_types`, `xuantishenqing_yesno_text`, `create_time`) VALUES
	(3, '165093854793229', 3, 3, 3, '132', '2022-04-26 02:02:27'),
	(4, '165093854793268', 2, 4, 2, '132', '2022-04-26 02:02:27'),
	(5, '16509385479321', 1, 5, 2, '123', '2022-04-26 02:02:27');

DROP TABLE IF EXISTS `yonghu`;
CREATE TABLE IF NOT EXISTS `yonghu` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `yonghu_uuid_number` varchar(255) DEFAULT NULL COMMENT '学号',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `yonghu_name` varchar(200) DEFAULT NULL COMMENT '学生姓名 Search111 ',
  `yonghu_address` varchar(200) DEFAULT NULL COMMENT '家庭地址 ',
  `yonghu_phone` varchar(200) DEFAULT NULL COMMENT '手机号',
  `yonghu_id_number` varchar(200) DEFAULT NULL COMMENT '身份证号',
  `yonghu_email` varchar(200) DEFAULT NULL COMMENT '电子邮箱',
  `sex_types` int DEFAULT NULL COMMENT '性别 Search111 ',
  `xueyuan_types` int DEFAULT NULL COMMENT '学院 Search111 ',
  `banji_types` int DEFAULT NULL COMMENT '班级 Search111 ',
  `yonghu_delete` int DEFAULT '1' COMMENT '假删',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COMMENT='学生';

DELETE FROM `yonghu`;
INSERT INTO `yonghu` (`id`, `yonghu_uuid_number`, `username`, `password`, `yonghu_name`, `yonghu_address`, `yonghu_phone`, `yonghu_id_number`, `yonghu_email`, `sex_types`, `xueyuan_types`, `banji_types`, `yonghu_delete`, `create_time`) VALUES
	(1, '16509385479376', '用户1', '123456', '学生姓名1', '家庭地址1', '17703786901', '410224199610232001', '1@qq.com', 1, 3, 2, 1, '2022-04-26 02:02:27'),
	(2, '165093854793778', '用户2', '123456', '学生姓名2', '家庭地址2', '17703786902', '410224199610232002', '2@qq.com', 1, 3, 1, 1, '2022-04-26 02:02:27'),
	(3, '165093854793752', '用户3', '123456', '学生姓名3', '家庭地址3', '17703786903', '410224199610232003', '3@qq.com', 2, 2, 3, 1, '2022-04-26 02:02:27');

DROP TABLE IF EXISTS `zhidaojiaoshi`;
CREATE TABLE IF NOT EXISTS `zhidaojiaoshi` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `zhidaojiaoshi_name` varchar(200) DEFAULT NULL COMMENT '指导教师姓名 Search111 ',
  `zhidaojiaoshi_photo` varchar(255) DEFAULT NULL COMMENT '头像',
  `sex_types` int DEFAULT NULL COMMENT '性别 Search111 ',
  `zhidaojiaoshi_phone` varchar(200) DEFAULT NULL COMMENT '联系方式',
  `zhidaojiaoshi_email` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COMMENT='指导教师';

DELETE FROM `zhidaojiaoshi`;
INSERT INTO `zhidaojiaoshi` (`id`, `username`, `password`, `zhidaojiaoshi_name`, `zhidaojiaoshi_photo`, `sex_types`, `zhidaojiaoshi_phone`, `zhidaojiaoshi_email`, `insert_time`, `create_time`) VALUES
	(1, '指导教师1', '123456', '指导教师姓名1', 'http://localhost:8080/biyeluenwenguanlix/upload/zhidaojiaoshi1.jpg', 2, '17703786901', '1@qq.com', '2022-04-26 02:02:27', '2022-04-26 02:02:27'),
	(2, '指导教师2', '123456', '指导教师姓名2', 'http://localhost:8080/biyeluenwenguanlix/upload/zhidaojiaoshi2.jpg', 1, '17703786902', '2@qq.com', '2022-04-26 02:02:27', '2022-04-26 02:02:27'),
	(3, '指导教师3', '123456', '指导教师姓名3', 'http://localhost:8080/biyeluenwenguanlix/upload/zhidaojiaoshi3.jpg', 1, '17703786903', '3@qq.com', '2022-04-26 02:02:27', '2022-04-26 02:02:27');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
