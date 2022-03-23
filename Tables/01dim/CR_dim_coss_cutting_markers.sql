drop table if exists `dim_cross_cutting_markers`;

CREATE TABLE `dim_cross_cutting_markers` (
  `pk_id_ccm` bigint(20) NOT NULL,
  `version` int(11) DEFAULT NULL,
  `date_from` datetime DEFAULT NULL,
  `date_to` datetime DEFAULT NULL,
  `ccm_id` bigint(20) DEFAULT 0,
  `ccm_name` text,
  `ccm_focus_level_id` bigint DEFAULT 0,
  `ccm_focus_level` varchar(20) DEFAULT NULL,
  `ccm_name_level` varchar(50) ,
  PRIMARY KEY (`pk_id_ccm`),
  KEY `idx_dim_ccm_lookup` (`ccm_id`,`ccm_focus_level_id` ) USING BTREE,
  KEY `idx_dim_locations_tk` (`pk_id_ccm`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
