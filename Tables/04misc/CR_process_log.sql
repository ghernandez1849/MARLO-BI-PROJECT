drop table if EXISTS process_log;
CREATE TABLE `process_log` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `sysdate` timestamp NOT NULL,
  `process` text CHARACTER SET utf8 COLLATE utf8_general_ci,
  `message` text CHARACTER SET utf8 COLLATE utf8_general_ci,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;
