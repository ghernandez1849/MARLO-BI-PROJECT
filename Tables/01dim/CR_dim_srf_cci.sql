drop table if exists `dim_srf_cci`;

CREATE TABLE `dim_srf_cci` (
  `pk_id_srf_cci` bigint(20) NOT NULL,
  `version` int(11) DEFAULT NULL,
  `date_from` datetime DEFAULT NULL,
  `date_to` datetime DEFAULT NULL,
  `slo_cci_type` varchar(10) DEFAULT NULL,
  `slo_cci_smo_code` varchar(10) DEFAULT NULL,
  `slo_cci_id` bigint(20) DEFAULT 0,
  `slo_cci_title` text CHARACTER SET utf8 COLLATE utf8_general_ci,
  `ido_id` bigint(20) DEFAULT 0,
  `ido_smo_code` varchar(10) DEFAULT NULL,
  `ido_description` text CHARACTER SET utf8 COLLATE utf8_general_ci,
  `sub_ido_smo_code` varchar(10) DEFAULT NULL,
  `sub_ido_id` bigint(20) DEFAULT 0,
  `sub_ido_description` text CHARACTER SET utf8 COLLATE utf8_general_ci,
  `slo_cci_composed_id` varchar(30) DEFAULT 0,
  PRIMARY KEY (`pk_id_srf_cci`),
  KEY `idx_dim_srf_lookup` (`slo_cci_composed_id`, `sub_ido_id`) USING BTREE,
  KEY `idx_dim_srf_tk` (`pk_id_srf_cci`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
