drop table if exists dim_intersect_group_sdg;

create table dim_intersect_group_sdg
(`pk_id_intersect_group_sdg` bigint(20) NOT NULL,
  `version` int(11) DEFAULT NULL,
  `date_from` datetime DEFAULT NULL,
  `date_to` datetime DEFAULT NULL,
  `sdg_short_name_group` TEXT,
  `sdg_target_group` TEXT,
  `sdg_indicators_group` TEXT,
  `ids_group` varchar(200) NOT NULL default 0,
PRIMARY KEY (`pk_id_intersect_group_sdg`),
KEY `idx_id_intersect_group_sdg_tk` (`pk_id_intersect_group_sdg`) USING BTREE,
KEY `idx_id_intersect_group_sdg` (`ids_group`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
