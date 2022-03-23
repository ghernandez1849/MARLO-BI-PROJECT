drop table if exists dim_intersect_group_reg_programs;

create table dim_intersect_group_reg_programs
(`pk_id_intersect_group_regpr` bigint(20) NOT NULL,
  `version` int(11) DEFAULT NULL,
  `date_from` datetime DEFAULT NULL,
  `date_to` datetime DEFAULT NULL,
`regional_program_acr_name_group` text,
`regional_program_name_group` text,
`regional_program_acronym_group` text,
`ids_group` varchar(200) NOT NULL default 0,
PRIMARY KEY (`pk_id_intersect_group_regpr`),
KEY `idx_id_intersect_group_regpr_tk` (`pk_id_intersect_group_regpr`) USING BTREE,
KEY `idx_id_group_intersect_repr_inst` (`ids_group`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

