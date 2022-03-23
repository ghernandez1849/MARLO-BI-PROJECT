drop table if exists `stg_intersect_group_srf_targets`;

create table `stg_intersect_group_srf_targets`
(`srf_target_title_group` text,
`srf_target_slo_title_group` text,
`ids_group` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
