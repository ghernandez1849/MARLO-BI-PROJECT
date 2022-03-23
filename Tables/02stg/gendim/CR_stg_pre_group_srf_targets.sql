drop table if exists stg_pre_group_srf_targets;

create table stg_pre_group_srf_targets
(
`ent_id` bigint(20) NOT NULL,
`ent_type` varchar(20) NOT NULL,
`id_phase` bigint(20) DEFAULT NULL,
`srf_target_title_group` text,
`srf_target_slo_title_group` text,
`ids_group` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
