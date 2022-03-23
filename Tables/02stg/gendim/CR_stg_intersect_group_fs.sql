drop table if exists stg_intersect_group_fs;

create table stg_intersect_group_fs
(
`fs_id_title_group` text,
`fs_id_fcode_title_group` text,
`fs_idname_title_group` text,
`fs_fcode_group` text,
`ids_group` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
