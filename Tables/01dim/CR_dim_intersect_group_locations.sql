drop table if exists dim_intersect_group_locations;

create table dim_intersect_group_locations
(`pk_id_intersect_group_loc` bigint(20) NOT NULL,
  `version` int(11) DEFAULT NULL,
  `date_from` datetime DEFAULT NULL,
  `date_to` datetime DEFAULT NULL,
`location_name_group` text,
`iso_alpha_2_group` text,
`ids_group` varchar(300) NOT NULL default 0,
PRIMARY KEY (`pk_id_intersect_group_loc`),
KEY `idx_id_intersect_group_loc_tk` (`pk_id_intersect_group_loc`) USING BTREE,
KEY `idx_id_group_intersect_group_loc` (`ids_group`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
