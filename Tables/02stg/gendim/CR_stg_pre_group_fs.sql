drop table if exists stg_pre_group_fs;

create table stg_pre_group_fs
(
`ent_id` bigint(20) NOT NULL,
`ent_type` varchar(20) NOT NULL,
`id_phase` bigint(20) DEFAULT NULL,
`fs_id_title_group` text,
`fs_id_fcode_title_group` text,
`fs_idname_title_group` text,
`fs_fcode_group` text,
`ids_group` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
