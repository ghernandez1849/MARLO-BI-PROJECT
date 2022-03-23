drop table if exists `dim_crps`;

CREATE TABLE `dim_crps` (
  `pk_id_crp` bigint(20) NOT NULL,
  `version` int(11) DEFAULT NULL,
  `date_from` datetime DEFAULT NULL,
  `date_to` datetime DEFAULT NULL,
  `id` bigint(20) DEFAULT NULL,
  `global_unit_type_id` bigint(20) DEFAULT NULL,
  `name` text CHARACTER SET utf8 COLLATE utf8_general_ci,
  `acronym` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT NULL,
  `global_unit_type` text CHARACTER SET utf8 COLLATE utf8_general_ci,
  PRIMARY KEY (`pk_id_crp`),
  KEY `idx_DIM_CRPS_lookup` (`id`) USING BTREE,
  KEY `idx_DIM_CRPS_tk` (`pk_id_crp`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
