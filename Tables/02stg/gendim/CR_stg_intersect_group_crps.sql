drop table if exists `stg_intersect_group_crps`;

create table `stg_intersect_group_crps`
(`crp_acr_name_group` text,
`crp_name_group` text,
`crp_acronym_group` text,
`crp_role_name_group` text,
`ids_group` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
