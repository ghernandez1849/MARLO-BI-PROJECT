drop table if exists stg_intersect_group_ccm;

create table stg_intersect_group_ccm
(
`ccm_name_focus_level_group` text,
`ids_group` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
