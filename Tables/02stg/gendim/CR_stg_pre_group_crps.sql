drop table if exists stg_pre_group_crps;

create table stg_pre_group_crps
(
`ent_id` bigint(20) NOT NULL,
`ent_type` varchar(20) NOT NULL,
`id_phase` bigint(20) DEFAULT NULL,
`crp_acr_name_group` text,
`crp_name_group` text,
`crp_acronym_group` text,
`crp_role_name_group` text,
`ids_group` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
