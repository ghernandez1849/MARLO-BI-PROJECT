drop table if exists dim_intersect_group_flagships;

create table dim_intersect_group_flagships
(`pk_id_intersect_group_flag` bigint(20) NOT NULL,
  `version` int(11) DEFAULT NULL,
  `date_from` datetime DEFAULT NULL,
  `date_to` datetime DEFAULT NULL,
`flagship_acr_name_group` text,
`flagship_name_group` text,
`acronym_group` text,
`ids_group` varchar(200) NOT NULL default 0,
PRIMARY KEY (`pk_id_intersect_group_flag`),
KEY `idx_id_intersect_group_flag_tk` (`pk_id_intersect_group_flag`) USING BTREE,
KEY `idx_id_group_intersect_flag_inst` (`ids_group`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
