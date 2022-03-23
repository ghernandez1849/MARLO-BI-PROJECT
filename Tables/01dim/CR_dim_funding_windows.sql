drop table if exists `dim_funding_windows`;

CREATE TABLE `dim_funding_windows` (
  `pk_id_funding_window` bigint(20) NOT NULL AUTO_INCREMENT,
  `version` int(11) DEFAULT NULL,
  `date_from` datetime DEFAULT NULL,
  `date_to` datetime DEFAULT NULL,
  `id` bigint(20) NOT NULL DEFAULT 0,
  `name` varchar(255) NOT NULL DEFAULT "NO NAME",
  `description` text,
  PRIMARY KEY (`pk_id_funding_window`),
  KEY `idx_DIM_funding_windows_lookup` (`id`) USING BTREE,
  KEY `idx_DIM_funding_windows_tk` (`pk_id_funding_window`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
