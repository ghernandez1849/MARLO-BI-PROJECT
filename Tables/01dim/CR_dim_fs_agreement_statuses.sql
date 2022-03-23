drop table if exists `dim_fs_agreement_statuses`;

CREATE TABLE `dim_fs_agreement_statuses` (
  `pk_id_fs_agreement_status` bigint(20) NOT NULL,
  `version` int(11) DEFAULT NULL,
  `date_from` datetime DEFAULT NULL,
  `date_to` datetime DEFAULT NULL,
  `id` bigint(20) DEFAULT NULL,
  `name` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci,
  `short_name` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci,
  PRIMARY KEY (`pk_id_fs_agreement_status`),
  KEY `idx_dim_funding_source_statuses_lookup` (`id`) USING BTREE,
  KEY `idx_dim_funding_source_statuses_tk` (`pk_id_fs_agreement_status`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
