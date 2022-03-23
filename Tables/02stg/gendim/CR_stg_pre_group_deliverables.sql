drop table if exists stg_pre_group_deliverables;

create table stg_pre_group_deliverables
(
`ent_id` bigint(20) NOT NULL,
`ent_type` varchar(20) NOT NULL,
`id_phase` bigint(20) DEFAULT NULL,
`deliverable_name_group` text,
`ids_group` varchar(2000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
