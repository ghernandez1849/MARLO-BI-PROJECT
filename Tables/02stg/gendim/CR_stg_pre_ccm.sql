drop table if exists stg_pre_ccm;

create table stg_pre_ccm
(
`id_phase` bigint(20) DEFAULT NULL,
`ent_id` bigint(20) NOT NULL,
`ent_type` varchar(20) NOT NULL,
`ccm_id` bigint(20) NOT NULL ,
`ccm_focus_level_id` bigint(20) NOT NULL ,
`ccm_focus_level` varchar(20),
`ccm_name` varchar(20)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
