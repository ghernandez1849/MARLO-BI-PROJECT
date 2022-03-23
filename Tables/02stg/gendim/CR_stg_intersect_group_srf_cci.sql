drop table if exists stg_intersect_group_srf_cci;

create table stg_intersect_group_srf_cci
(
`slo_cci_title_group` text,
`slo_cci_smo_code_group` text,
`slo_cci_ido_description_group` text,
`slo_cci_sido_description_group` text,
--
`slo_title_group` text,
`slo_smo_code_group` text,
`slo_ido_description_group` text,
`slo_sido_description_group` text,
--
`cci_title_group` text,
`cci_smo_code_group` text,
`cci_ido_description_group` text,
`cci_sido_description_group` text,
--
 `slo_cci_ido_sido_description_group` TEXT,
 `cci_ido_sido_description_group` TEXT,
 `slo_ido_sido_description_group` TEXT,
--
`ids_group` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

