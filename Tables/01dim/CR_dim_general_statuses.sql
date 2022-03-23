drop table if exists `dim_general_statuses`;

CREATE TABLE `dim_general_statuses` (
  `pk_id_general_status` bigint(20) NOT NULL,
  `version` int(11) DEFAULT NULL,
  `date_from` datetime DEFAULT NULL,
  `date_to` datetime DEFAULT NULL,
  `status_id` bigint(20) DEFAULT NULL,
 `status_name` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci,
  PRIMARY KEY (`pk_id_general_status`),
  KEY `idx_dim_general_statuses_lookup` (`status_id`) USING BTREE,
  KEY `idx_dim_general_statuses_tk` (`pk_id_general_status`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
