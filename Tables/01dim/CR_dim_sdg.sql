drop table if exists `dim_sdg`;

CREATE TABLE `dim_sdg` (
  `pk_id_sdg` bigint(20) NOT NULL,
  `version` int(11) DEFAULT NULL,
  `date_from` datetime DEFAULT NULL,
  `date_to` datetime DEFAULT NULL,
  `sdg_id` bigint(20) DEFAULT 0,
  `sdg_short_name` varchar(100) DEFAULT NULL,
  `sdg_name` text ,  
  `sdg_target_id` bigint(20) DEFAULT 0,
  `sdg_target_code` varchar(5) DEFAULT NULL,
  `sdg_target_name` text ,
  `sdg_indicator_id` bigint(20) DEFAULT 0,
  `sdg_indicator_unsd_code` varchar(45) DEFAULT NULL,
  `sdg_indicator_codes` varchar(45) DEFAULT NULL,
  `sdg_indicator_name` text,
  `sdg_icon` varchar(200),
  PRIMARY KEY (`pk_id_sdg`),
  KEY `idx_dim_sdg_lookup` (`sdg_id`, `sdg_target_id`, `sdg_indicator_id`) USING BTREE,
  KEY `idx_dim_sdg_tk` (`pk_id_sdg`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
