drop table if exists `dim_srf_targets`;

CREATE TABLE `dim_srf_targets` (
  `pk_id_srf_target` bigint(20) NOT NULL,
  `version` int(11) DEFAULT NULL,
  `date_from` datetime DEFAULT NULL,
  `date_to` datetime DEFAULT NULL,
  `id` bigint(20) DEFAULT NULL,
  `title` text CHARACTER SET utf8 COLLATE utf8_general_ci,
  `slo_id` bigint(20) DEFAULT NULL,
  `slo_title` text CHARACTER SET utf8 COLLATE utf8_general_ci,
  PRIMARY KEY (`pk_id_srf_target`),
  KEY `idx_dim_srf_targets_lookup` (`id`) USING BTREE,
  KEY `idx_dim_srf_targets_tk` (`pk_id_srf_target`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
