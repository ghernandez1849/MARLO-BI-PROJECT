drop table if exists dim_intersect_group_srf_targets;

create table dim_intersect_group_srf_targets
(`pk_id_intersect_group_srftar` bigint(20) NOT NULL,
  `version` int(11) DEFAULT NULL,
  `date_from` datetime DEFAULT NULL,
  `date_to` datetime DEFAULT NULL,
 `srf_target_title_group` text,
 `srf_target_slo_title_group` text,
 `ids_group` varchar(200) NOT NULL default 0,
PRIMARY KEY (`pk_id_intersect_group_srftar`),
KEY `idx_id_intersect_group_srftar_tk` (`pk_id_intersect_group_srftar`) USING BTREE,
KEY `idx_id_intersect_group_srftar` (`ids_group`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
