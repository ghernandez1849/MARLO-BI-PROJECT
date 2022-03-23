drop table if exists stg_pre_group_flagships;

create table stg_pre_group_flagships
(
`ent_id` bigint(20) NOT NULL,
`ent_type` varchar(20) NOT NULL,
`id_phase` bigint(20) DEFAULT NULL,
`flagship_acr_name_group` text,
`flagship_name_group` text,
`acronym_group` text,
`ids_group` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
