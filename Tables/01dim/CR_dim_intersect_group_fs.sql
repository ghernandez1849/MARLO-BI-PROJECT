drop table if exists dim_intersect_group_fs;

create table dim_intersect_group_fs
(`pk_id_intersect_group_fs` bigint(20) NOT NULL,
  `version` int(11) DEFAULT NULL,
  `date_from` datetime DEFAULT NULL,
  `date_to` datetime DEFAULT NULL,
`fs_id_title_group` text,
`fs_id_fcode_title_group` text,
`fs_idname_title_group` text,
`fs_fcode_group` text,
`ids_group` varchar(200) NOT NULL default 0,
PRIMARY KEY (`pk_id_intersect_group_fs`),
KEY `idx_id_intersect_group_fs_tk` (`pk_id_intersect_group_fs`) USING BTREE,
KEY `idx_id_group_intersect_group_fs` (`ids_group`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
