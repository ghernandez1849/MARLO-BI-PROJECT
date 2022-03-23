drop table if exists `dim_intersect_group_crps`;

create table `dim_intersect_group_crps`
(`pk_id_intersect_group_crp` bigint(20) NOT NULL,
  `version` int(11) DEFAULT NULL,
  `date_from` datetime DEFAULT NULL,
  `date_to` datetime DEFAULT NULL,
`crp_acr_name_group` text,
`crp_name_group` text,
`crp_role_name_group` text,
`crp_acronym_group` text,
`ids_group` varchar(200) NOT NULL default 0,
PRIMARY KEY (`pk_id_intersect_group_crp`),
KEY `idx_id_intersect_group_crp_tk` (`pk_id_intersect_group_crp`) USING BTREE,
KEY `idx_id_group_intersect_group_crp` (`ids_group`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
