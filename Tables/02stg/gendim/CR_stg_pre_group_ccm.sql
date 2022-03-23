drop table if exists stg_pre_group_ccm;

create table stg_pre_group_ccm
(
`id_phase` bigint(20) DEFAULT NULL,
`ent_id` bigint(20) NOT NULL,
`ent_type` varchar(20) NOT NULL,
`ccm_name_focus_level_group` text,
`ids_group` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
