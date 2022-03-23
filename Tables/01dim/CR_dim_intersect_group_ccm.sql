drop table if exists dim_intersect_group_ccm;

create table dim_intersect_group_ccm
(`pk_id_intersect_group_ccm` bigint(20) NOT NULL,
  `version` int(11) DEFAULT NULL,
  `date_from` datetime DEFAULT NULL,
  `date_to` datetime DEFAULT NULL,
  `ccm_name_focus_level_group` text,
  `ids_group` varchar(200) NOT NULL default 0,
PRIMARY KEY (`pk_id_intersect_group_ccm`),
KEY `idx_id_intersect_group_ccm_tk` (`pk_id_intersect_group_ccm`) USING BTREE,
KEY `idx_id_intersect_group_ccm` (`ids_group`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
