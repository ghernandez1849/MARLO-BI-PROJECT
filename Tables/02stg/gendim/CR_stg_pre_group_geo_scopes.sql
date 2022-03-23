drop table if exists stg_pre_group_geo_scopes;

create table stg_pre_group_geo_scopes
(
`ent_id` bigint(20) NOT NULL,
`ent_type` varchar(20) NOT NULL,
`id_phase` bigint(20) DEFAULT NULL,
`geo_scope_name_group` text,
`ids_group` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
